'use strict';

const fs = require('node:fs');
const path = require('node:path');
const runtime = require('../../runtime/ql-core.cjs');

const formPath = path.join(__dirname, '..', '..', 'solutions', 'QuestionnaireExample', 'source_gen', 'QuestionnaireExample', 'ReferenceTargetForm.json');
const form = JSON.parse(fs.readFileSync(formPath, 'utf8'));
const diagnostics = runtime.validate(form);
if (diagnostics.length) throw new Error(`Generated string-literal fixture is invalid: ${JSON.stringify(diagnostics)}`);
const questionnaire = runtime.create(form);
const actual = questionnaire.get('greeting');
const expected = 'He said "hi"\nC:\\path';
if (actual !== expected) throw new Error(`String literal did not round-trip: ${JSON.stringify(actual)}`);
const concatenated = questionnaire.get('stringConcat');
if (concatenated !== 'He said hello') throw new Error(`String concatenation failed: ${JSON.stringify(concatenated)}`);
const negative = questionnaire.get('negative');
if (negative !== -4) throw new Error(`Unary minus failed: ${JSON.stringify(negative)}`);
const division = questionnaire.get('division');
if (division !== 2) throw new Error(`Integer division failed: ${JSON.stringify(division)}`);
console.log(JSON.stringify({ result: 'PASS', form: form.name, stringLiteral: actual, stringConcatenation: concatenated, unaryMinus: negative, division }));
