'use strict';

const fs = require('node:fs');
const http = require('node:http');
const path = require('node:path');
const { spawn } = require('node:child_process');

const root = path.resolve(__dirname, '..', '..');
const edgePath = process.env.EDGE_PATH || 'C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe';
const questionnairePath = process.env.QUESTIONNAIRE_PATH ||
  'solutions\\QuestionnaireExample\\generated\\BenefitSurvey.json';
const port = Number(process.env.PORT || 4197);
const profilePath = path.join(root, 'build', 'browser-smoke-profile');
const downloadPath = path.join(root, 'benchmark', 'evidence', 'browser-downloads');
const downloadedAnswers = path.join(downloadPath, 'BenefitSurvey-answers.json');

function delay(milliseconds) {
  return new Promise(resolve => setTimeout(resolve, milliseconds));
}

async function waitFor(read, description, timeout = 15000) {
  const end = Date.now() + timeout;
  while (Date.now() < end) {
    try {
      const value = await read();
      if (value) return value;
    } catch {}
    await delay(100);
  }
  throw new Error(`Timed out waiting for ${description}.`);
}

async function sendCdp(socket, method, params = {}) {
  const id = (sendCdp.nextId || 0) + 1;
  sendCdp.nextId = id;
  return new Promise((resolve, reject) => {
    const timer = setTimeout(() => {
      pending.delete(id);
      reject(new Error(`CDP command timed out: ${method}`));
    }, 10000);
    pending.set(id, { resolve, reject, timer });
    socket.send(JSON.stringify({ id, method, params }));
  });
}
const pending = new Map();

async function main() {
  if (!fs.existsSync(edgePath)) throw new Error(`Edge not found at ${edgePath}. Set EDGE_PATH if needed.`);
  fs.rmSync(profilePath, { recursive: true, force: true });
  fs.rmSync(downloadPath, { recursive: true, force: true });
  fs.mkdirSync(downloadPath, { recursive: true });

  const serverResponse = await fetch(`http://127.0.0.1:${port}/questionnaire.json`);
  if (!serverResponse.ok) throw new Error(`Questionnaire server returned ${serverResponse.status}.`);
  const form = await serverResponse.json();
  if (form.name !== 'BenefitSurvey') throw new Error(`Unexpected native-generated form: ${form.name}`);

  const edge = spawn(edgePath, [
    '--headless=new',
    '--disable-gpu',
    '--no-first-run',
    '--no-default-browser-check',
    '--remote-debugging-port=0',
    '--remote-allow-origins=*',
    `--user-data-dir=${profilePath}`,
    'about:blank'
  ], { stdio: 'ignore' });

  let socket;
  try {
    const activePortPath = path.join(profilePath, 'DevToolsActivePort');
    const devtoolsPort = await waitFor(() => {
      if (!fs.existsSync(activePortPath)) return null;
      return Number(fs.readFileSync(activePortPath, 'utf8').split(/\r?\n/)[0]);
    }, 'Edge DevTools');
    const targets = await waitFor(async () => {
      const response = await fetch(`http://127.0.0.1:${devtoolsPort}/json/list`);
      const pages = (await response.json()).filter(target => target.type === 'page');
      return pages.find(target => target.webSocketDebuggerUrl);
    }, 'Edge page target');

    socket = new WebSocket(targets.webSocketDebuggerUrl);
    await new Promise((resolve, reject) => {
      socket.addEventListener('open', resolve, { once: true });
      socket.addEventListener('error', reject, { once: true });
    });
    socket.addEventListener('message', event => {
      const message = JSON.parse(event.data);
      const item = pending.get(message.id);
      if (!item) return;
      clearTimeout(item.timer);
      pending.delete(message.id);
      if (message.error) item.reject(new Error(message.error.message));
      else item.resolve(message.result);
    });

    await sendCdp(socket, 'Page.enable');
    await sendCdp(socket, 'Runtime.enable');
    await sendCdp(socket, 'Browser.setDownloadBehavior', { behavior: 'allow', downloadPath });
    await sendCdp(socket, 'Page.navigate', { url: `http://127.0.0.1:${port}/` });
    await waitFor(async () => {
      const result = await sendCdp(socket, 'Runtime.evaluate', {
        expression: 'document.readyState === "complete" && Boolean(document.querySelector("#answer-residents"))',
        returnByValue: true
      });
      return result.result.value;
    }, 'questionnaire page rendering');

    const interaction = await sendCdp(socket, 'Runtime.evaluate', {
      expression: `(() => {
        const emit = element => element.dispatchEvent(new Event('input', { bubbles: true }));
        const residents = document.querySelector('#answer-residents');
        const ownsHome = document.querySelector('#answer-ownsHome');
        const homeType = document.querySelector('#answer-homeType');
        const garden = document.querySelector('#answer-hasGarden');
        const notHomeowner = document.querySelector('#answer-notHomeowner');
        const initialHomeTypeHidden = homeType.closest('[data-question-id]').hidden;
        const initialGardenHidden = garden.closest('[data-question-id]').hidden;
        ownsHome.checked = true;
        emit(ownsHome);
        const homeTypeVisible = !homeType.closest('[data-question-id]').hidden;
        const gardenHiddenWithoutResidents = garden.closest('[data-question-id]').hidden;
        residents.value = '2';
        emit(residents);
        const gardenHiddenBelowThreshold = garden.closest('[data-question-id]').hidden;
        residents.value = '4';
        emit(residents);
        const computedValue = document.querySelector('#answer-annualCost').value;
        const unaryValue = notHomeowner.value;
        const gardenVisibleAboveThreshold = !garden.closest('[data-question-id]').hidden;
        homeType.value = 'townhouse';
        emit(homeType);
        garden.checked = true;
        emit(garden);
        document.querySelector('#download').click();
        return {
          title: document.querySelector('#form-title').textContent,
          controls: {
            boolean: ownsHome.type,
            integer: residents.type,
            text: homeType.type,
            nestedBoolean: garden.type
          },
          initialHomeTypeHidden,
          initialGardenHidden,
          homeTypeVisible,
          gardenHiddenWithoutResidents,
          gardenHiddenBelowThreshold,
          gardenVisibleAboveThreshold,
          computedValue,
          unaryValue
        };
      })()`,
      returnByValue: true
    });
    const interactionResult = interaction.result.value;
    if (interactionResult.title !== 'BenefitSurvey' ||
        interactionResult.controls.boolean !== 'checkbox' ||
        interactionResult.controls.integer !== 'number' ||
        interactionResult.controls.nestedBoolean !== 'checkbox' ||
        interactionResult.initialHomeTypeHidden !== true ||
        interactionResult.initialGardenHidden !== true ||
        interactionResult.homeTypeVisible !== true ||
        interactionResult.gardenHiddenWithoutResidents !== true ||
        interactionResult.gardenHiddenBelowThreshold !== true ||
        interactionResult.gardenVisibleAboveThreshold !== true ||
        interactionResult.computedValue !== '9' ||
        interactionResult.unaryValue !== 'false') {
      throw new Error(`GUI behavior did not match expectations: ${JSON.stringify(interactionResult)}`);
    }

    await waitFor(() => fs.existsSync(downloadedAnswers), 'downloaded JSON answers');
    const saved = JSON.parse(fs.readFileSync(downloadedAnswers, 'utf8'));
    if (saved.form !== 'BenefitSurvey' || saved.answers.ownsHome !== true ||
        saved.answers.residents !== 4 || saved.answers.annualCost !== 9 ||
        saved.answers.homeType !== 'townhouse' || saved.answers.hasGarden !== true ||
        saved.answers.notHomeowner !== false) {
      throw new Error(`Downloaded answer payload was incomplete: ${JSON.stringify(saved)}`);
    }

    const report = {
      timestamp: new Date().toISOString(),
      browser: 'Microsoft Edge headless',
      page: `http://127.0.0.1:${port}/`,
      questionnaire: questionnairePath,
      interaction: interactionResult,
      downloadedFile: path.relative(root, downloadedAnswers),
      answers: saved
    };
    fs.writeFileSync(path.join(root, 'benchmark', 'evidence', 'browser-smoke.json'),
      `${JSON.stringify(report, null, 2)}\n`);
    console.log(JSON.stringify(report, null, 2));
  } finally {
    if (socket) socket.close();
    edge.kill();
    await waitFor(() => edge.exitCode !== null || edge.signalCode !== null, 'Edge shutdown', 5000).catch(() => {});
    fs.rmSync(profilePath, { recursive: true, force: true });
  }
}

main().catch(error => {
  console.error(error.stack || error);
  process.exitCode = 1;
});
