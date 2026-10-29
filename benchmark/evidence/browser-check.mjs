import assert from 'node:assert/strict';
import fs from 'node:fs';
import path from 'node:path';

const root = process.cwd();
const evidence = path.join(root, 'benchmark', 'evidence');
const downloads = path.join(root, 'build', 'browser-downloads');
fs.mkdirSync(evidence, { recursive: true });
fs.mkdirSync(downloads, { recursive: true });
const file = path.join(downloads, 'household-questionnaire-answers.json');
if (fs.existsSync(file)) fs.unlinkSync(file);

async function connect(url) {
  const socket = new WebSocket(url);
  await new Promise((resolve, reject) => {
    socket.addEventListener('open', resolve, { once: true });
    socket.addEventListener('error', reject, { once: true });
  });
  let nextId = 0;
  const pending = new Map();
  socket.addEventListener('message', event => {
    const message = JSON.parse(event.data);
    if (message.id && pending.has(message.id)) {
      const { resolve, reject } = pending.get(message.id);
      pending.delete(message.id);
      if (message.error) reject(new Error(message.error.message));
      else resolve(message.result);
    }
  });
  return {
    socket,
    command(method, params = {}) {
      const id = ++nextId;
      return new Promise((resolve, reject) => {
        pending.set(id, { resolve, reject });
        socket.send(JSON.stringify({ id, method, params }));
      });
    },
    close() { socket.close(); }
  };
}

const endpoint = `http://127.0.0.1:${process.env.CDP_PORT || 9222}`;
const version = await (await fetch(`${endpoint}/json/version`)).json();
const browser = await connect(version.webSocketDebuggerUrl);
await browser.command('Browser.setDownloadBehavior', { behavior: 'allow', downloadPath: downloads });
const targets = await (await fetch(`${endpoint}/json/list`)).json();
const page = targets.find(target => target.type === 'page' && target.url.includes('127.0.0.1:4173'));
assert.ok(page, 'questionnaire page is open in the browser');
const client = await connect(page.webSocketDebuggerUrl);
await client.command('Page.reload');

async function evaluate(expression) {
  const result = await client.command('Runtime.evaluate', { expression, returnByValue: true, awaitPromise: true });
  if (result.exceptionDetails) throw new Error(result.exceptionDetails.text);
  return result.result.value;
}

const ready = await evaluate(`new Promise(resolve => {
  const ready = () => document.querySelector('#status')?.textContent === 'Ready'
    && document.querySelector('[name="startDate"]');
  let attempts = 0;
  const poll = () => ready() ? resolve(true) : attempts++ > 100 ? resolve(false) : setTimeout(poll, 50);
  poll();
})`);
assert.equal(ready, true, 'the questionnaire loaded without validation errors');
const controlTypes = await evaluate(`Array.from(document.querySelectorAll('input')).map(input => [input.name, input.type])`);
assert.ok(controlTypes.some(([id, type]) => id === 'age' && type === 'number'));
assert.ok(controlTypes.some(([id, type]) => id === 'ownsCar' && type === 'checkbox'));
assert.ok(controlTypes.some(([id, type]) => id === 'monthlyIncome' && type === 'number'));
assert.ok(controlTypes.some(([id, type]) => id === 'adjustment' && type === 'number'));
assert.ok(controlTypes.some(([id, type]) => id === 'startDate' && type === 'date'));
const hiddenWhenFalse = await evaluate(`(() => {
  const age = document.querySelector('[name="age"]');
  age.value = '37';
  age.dispatchEvent(new Event('input', { bubbles: true }));
  const ownsCar = document.querySelector('[name="ownsCar"]');
  ownsCar.checked = false;
  ownsCar.dispatchEvent(new Event('input', { bubbles: true }));
  const hiddenFirst = document.querySelector('.conditional').hidden;
  ownsCar.checked = true;
  ownsCar.dispatchEvent(new Event('input', { bubbles: true }));
  const details = document.querySelector('[name="carDetails"]');
  details.value = 'blue car';
  details.dispatchEvent(new Event('input', { bubbles: true }));
  const income = document.querySelector('[name="monthlyIncome"]');
  income.value = '4200';
  income.dispatchEvent(new Event('input', { bubbles: true }));
  const adjustment = document.querySelector('[name="adjustment"]');
  adjustment.value = '1.25';
  adjustment.dispatchEvent(new Event('input', { bubbles: true }));
  const date = document.querySelector('[name="startDate"]');
  date.value = '2026-10-29';
  date.dispatchEvent(new Event('input', { bubbles: true }));
  return hiddenFirst;
})()`);
assert.equal(hiddenWhenFalse, true);
const state = await evaluate(`({
  computed: document.querySelector('#answer-derived').textContent,
  conditionalHidden: document.querySelector('.conditional').hidden,
  detailsHidden: document.querySelector('[name="carDetails"]').closest('.field').hidden,
  answer: window.qlApp.runtime.get('carDetails')
})`);
assert.equal(state.computed, '5');
assert.equal(state.conditionalHidden, false);
assert.equal(state.detailsHidden, false);
assert.equal(state.answer, 'blue car');
const screenshot = await client.command('Page.captureScreenshot', { format: 'png' });
fs.writeFileSync(path.join(evidence, 'gui.png'), Buffer.from(screenshot.data, 'base64'));
await evaluate(`document.querySelector('#download').click()`);

const deadline = Date.now() + 15000;
while (!fs.existsSync(file) && Date.now() < deadline) await new Promise(resolve => setTimeout(resolve, 100));
assert.ok(fs.existsSync(file), 'the browser saved the answers download');
const answers = JSON.parse(fs.readFileSync(file, 'utf8'));
assert.equal(answers.form, 'Household questionnaire');
assert.equal(answers.answers.age, 37);
assert.equal(answers.answers.derived, 5);
assert.equal(answers.answers.ownsCar, true);
assert.equal(answers.answers.carDetails, 'blue car');
assert.equal(answers.answers.monthlyIncome, 4200);
assert.equal(answers.answers.adjustment, 1.25);
assert.equal(answers.answers.startDate, '2026-10-29');
fs.writeFileSync(path.join(evidence, 'gui-download.json'), JSON.stringify(answers, null, 2) + '\n');
console.log(JSON.stringify({ title: await evaluate(`document.title`), controlTypes, state, download: answers }, null, 2));
client.close();
browser.close();
