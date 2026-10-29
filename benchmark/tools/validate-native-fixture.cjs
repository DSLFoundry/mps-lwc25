'use strict';

const fs = require('node:fs');
const path = require('node:path');
const adapter = require('../adapter.cjs');

const root = path.resolve(__dirname, '..', '..');
const generatedDir = path.join(root, 'solutions', 'QuestionnaireExample', 'source_gen', 'QuestionnaireExample');
const candidates = fs.readdirSync(generatedDir)
  .filter(file => file.endsWith('.json'))
  .map(file => ({ file, form: JSON.parse(fs.readFileSync(path.join(generatedDir, file), 'utf8')) }));
const entry = candidates.find(candidate => candidate.form.name === 'InvalidNativeFixtures');
if (!entry) throw new Error('No generated InvalidNativeFixtures form was found.');

const diagnostics = adapter.validate(entry.form);
const codes = [...new Set(diagnostics.map(diagnostic => diagnostic.code))].sort();
const requiredCodes = ['cycle', 'duplicate', 'type', 'unresolved'];
const report = {
  timestamp: new Date().toISOString(),
  source: path.relative(root, path.join(generatedDir, entry.file)),
  diagnostics,
  codes,
  requiredCodes,
  complete: requiredCodes.every(code => codes.includes(code))
};
const output = path.join(root, 'benchmark', 'evidence', 'runtime-invalid-native-fixture.json');
fs.writeFileSync(output, `${JSON.stringify(report, null, 2)}\n`);
console.log(JSON.stringify(report, null, 2));
if (!report.complete) process.exitCode = 1;
