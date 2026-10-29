'use strict';

const fs = require('node:fs');
const http = require('node:http');
const path = require('node:path');

const root = path.resolve(__dirname);
const formPath = path.resolve(process.argv[2] || path.join(root, '..', 'solutions', 'QuestionnaireExample', 'generated', 'BenefitSurvey.json'));
const port = Number(process.env.PORT || 4173);
const files = {
  '/': ['gui.html', 'text/html; charset=utf-8'],
  '/browser.js': ['browser.js', 'text/javascript; charset=utf-8'],
  '/ql-core.cjs': ['ql-core.cjs', 'text/javascript; charset=utf-8']
};

http.createServer((request, response) => {
  const pathname = new URL(request.url, `http://${request.headers.host}`).pathname;
  if (pathname === '/questionnaire.json') {
    try {
      response.writeHead(200, { 'content-type': 'application/json; charset=utf-8' });
      response.end(fs.readFileSync(formPath));
    } catch (error) {
      response.writeHead(500, { 'content-type': 'text/plain; charset=utf-8' });
      response.end(`Questionnaire file unavailable: ${error.message}`);
    }
    return;
  }
  const entry = files[pathname];
  if (!entry) {
    response.writeHead(404);
    response.end('Not found');
    return;
  }
  response.writeHead(200, { 'content-type': entry[1] });
  response.end(fs.readFileSync(path.join(root, entry[0])));
}).listen(port, '127.0.0.1', () => {
  console.log(`Questionnaire GUI: http://127.0.0.1:${port}/`);
  console.log(`Questionnaire model: ${formPath}`);
});
