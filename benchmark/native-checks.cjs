#!/usr/bin/env node
'use strict';

const assert = require('node:assert/strict');
const { spawnSync } = require('node:child_process');
const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const wrapper = path.join(root, 'build', 'mopsw.cmd');
const evidence = path.join(root, 'benchmark', 'evidence', 'completion');

function checkModel(model) {
  const command = `${wrapper} check model ${model} --limit 0`;
  const result = spawnSync(process.env.ComSpec || 'cmd.exe', ['/d', '/c', command], {
    cwd: root,
    env: {
      ...process.env,
      JAVA_HOME: process.env.JAVA_HOME || 'C:\\Program Files\\JetBrains\\MPS 2026.1.1\\jbr',
    },
    encoding: 'utf8',
    timeout: 120_000,
  });
  if (result.error) throw result.error;
  return {
    status: result.status,
    output: `${result.stdout || ''}${result.stderr || ''}`,
  };
}

fs.mkdirSync(evidence, { recursive: true });

const valid = checkModel('Sandbox.QLBasic');
assert.equal(valid.status, 0, `valid model check failed:\n${valid.output}`);
assert.doesNotMatch(valid.output, /QL-DIAG-|^\s*(error|warning)\b/im);

const invalid = checkModel('Sandbox.QLInvalid');
assert.notEqual(invalid.status, 0, 'invalid model unexpectedly passed native checks');
const categories = ['DUPLICATE', 'UNRESOLVED', 'CONDITION', 'OPERAND', 'COMPUTED', 'CYCLE'];
for (const category of categories) {
  assert.ok(invalid.output.includes(`QL-DIAG-${category}:`), `missing native ${category} diagnostic`);
}

const directCycle = checkModel('Sandbox.QLNativeDirectCycle');
assert.notEqual(directCycle.status, 0, 'direct-cycle fixture unexpectedly passed native checks');
assert.ok(directCycle.output.includes('QL-DIAG-CYCLE:'), 'direct-cycle fixture did not report a native cycle diagnostic');

const indirectCycle = checkModel('Sandbox.QLNativeIndirectCycle');
assert.notEqual(indirectCycle.status, 0, 'indirect-cycle fixture unexpectedly passed native checks');
assert.ok(indirectCycle.output.includes('QL-DIAG-CYCLE:'), 'indirect-cycle fixture did not report a native cycle diagnostic');

const computedMismatch = checkModel('Sandbox.QLNativeComputedMismatch');
assert.notEqual(computedMismatch.status, 0, 'computed-mismatch fixture unexpectedly passed native checks');
assert.ok(computedMismatch.output.includes('QL-DIAG-COMPUTED:'), 'declared computed-result mismatch was not reported');

const complexCondition = checkModel('Sandbox.QLNativeBooleanCondition');
assert.notEqual(complexCondition.status, 0, 'invalid complex-condition fixture unexpectedly passed native checks');
assert.ok(complexCondition.output.includes('QL-DIAG-CONDITION:'), 'nested boolean condition was not diagnosed');
assert.ok(complexCondition.output.includes('LogicalAndExpression'), 'nested boolean-expression fixture was not checked');

const cycleCount =
  (invalid.output.match(/QL-DIAG-CYCLE:/g) || []).length +
  (directCycle.output.match(/QL-DIAG-CYCLE:/g) || []).length +
  (indirectCycle.output.match(/QL-DIAG-CYCLE:/g) || []).length;

const result = {
  checkedAtUtc: new Date().toISOString(),
  commands: [
    '.\\build\\mopsw.cmd check model Sandbox.QLBasic --limit 0',
    '.\\build\\mopsw.cmd check model Sandbox.QLInvalid --limit 0',
    '.\\build\\mopsw.cmd check model Sandbox.QLNativeDirectCycle --limit 0',
    '.\\build\\mopsw.cmd check model Sandbox.QLNativeIndirectCycle --limit 0',
    '.\\build\\mopsw.cmd check model Sandbox.QLNativeComputedMismatch --limit 0',
    '.\\build\\mopsw.cmd check model Sandbox.QLNativeBooleanCondition --limit 0',
  ],
  valid: { model: 'Sandbox.QLBasic', exitCode: valid.status, clean: true },
  invalid: {
    model: 'Sandbox.QLInvalid',
    exitCode: invalid.status,
    categories,
    cycleDiagnostics: (invalid.output.match(/QL-DIAG-CYCLE:/g) || []).length,
    nestedBooleanExpressionChecked: true,
  },
  directCycle: { model: 'Sandbox.QLNativeDirectCycle', exitCode: directCycle.status, reported: true },
  indirectCycle: { model: 'Sandbox.QLNativeIndirectCycle', exitCode: indirectCycle.status, reported: true },
  computedMismatch: { model: 'Sandbox.QLNativeComputedMismatch', exitCode: computedMismatch.status, reported: true },
  complexCondition: { model: 'Sandbox.QLNativeBooleanCondition', exitCode: complexCondition.status, reported: true },
  totalCycleDiagnostics: cycleCount,
};

fs.writeFileSync(path.join(evidence, 'native-valid-model-check.txt'), valid.output);
fs.writeFileSync(path.join(evidence, 'native-invalid-model-check.txt'), invalid.output);
fs.writeFileSync(path.join(evidence, 'native-direct-cycle-check.txt'), directCycle.output);
fs.writeFileSync(path.join(evidence, 'native-indirect-cycle-check.txt'), indirectCycle.output);
fs.writeFileSync(path.join(evidence, 'native-computed-mismatch-check.txt'), computedMismatch.output);
fs.writeFileSync(path.join(evidence, 'native-complex-condition-check.txt'), complexCondition.output);
fs.writeFileSync(path.join(evidence, 'native-check-assertions.json'), `${JSON.stringify(result, null, 2)}\n`);
console.log(`Native MPS checks passed: valid model clean; all ${categories.length} categories reported; direct and indirect cycle fixtures diagnosed.`);
