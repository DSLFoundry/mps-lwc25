'use strict';

const fs = require('node:fs');
const path = require('node:path');
const adapter = require('./adapter.cjs');

const formPath = path.join(__dirname, 'generated-form.json');
const form = JSON.parse(fs.readFileSync(formPath, 'utf8'));
const diagnostics = adapter.validate(form);
const runtime = adapter.create(form);
const computedValue = runtime.get('derived');

if (diagnostics.length !== 0 || computedValue !== 5) {
  throw new Error(JSON.stringify({ diagnostics, computedValue }));
}

const evidence = {
  timestamp: new Date().toISOString(),
  provider: 'production benchmark adapter/runtime',
  form: 'benchmark/generated-form.json',
  formName: form.name,
  rootItems: form.items.length,
  diagnostics,
  computedQuestion: 'derived',
  computedValue
};

fs.writeFileSync(
  path.join(__dirname, 'evidence', 'native-runtime.json'),
  `${JSON.stringify(evidence, null, 2)}\n`
);
console.log(JSON.stringify(evidence));
