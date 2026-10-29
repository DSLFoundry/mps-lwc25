'use strict';
const assert = require('node:assert/strict');
const path = require('node:path');
const fs = require('node:fs');
const adapter = require(path.join(__dirname, 'adapter.cjs'));
const literal = value => ({ literal: value });
const ref = id => ({ ref: id });
const op = (name, ...args) => ({ op: name, args });
const q = (id, type, computed) => ({
  id, label: id, type, ...(computed === undefined ? {} : { computed })
});
const form = (...items) => ({ name: 'Acceptance', items });
const absent = value => value === undefined || value === null;
const tests = [];
const test = (name, run) => tests.push({ name, run });
const has = (input, code) => assert.ok(adapter.validate(input).some(d => d.code === code));

test('all six question types preserve typed answers', () => {
  const types = ['boolean', 'string', 'integer', 'decimal', 'money', 'date'];
  const values = [false, 'hello', 7, 1.25, 19.95, '2026-10-29'];
  const r = adapter.create(form(...types.map(t => q(t, t))));
  types.forEach((t, i) => { r.set(t, values[i]); assert.deepEqual(r.get(t), values[i]); });
});
test('unanswered values stay undefined', () => {
  const r = adapter.create(form(q('x', 'integer')));
  assert.ok(absent(r.get('x')));
});
test('computed dependencies propagate undefined', () => {
  const r = adapter.create(form(q('x', 'integer'), q('y', 'integer', op('+', ref('x'), literal(2)))));
  assert.ok(absent(r.get('y')));
});
test('arithmetic operators produce expected values', () => {
  for (const [operator, expected] of [['+', 10], ['-', 6], ['*', 16], ['/', 4]]) {
    const r = adapter.create(form(q('v', 'decimal', op(operator, literal(8), literal(2)))));
    assert.equal(r.get('v'), expected, operator);
  }
});
test('all comparison operators work for true and false cases', () => {
  const cases = [
    ['<', 2, 3, true], ['<', 3, 2, false], ['>', 3, 2, true], ['>', 2, 3, false],
    ['<=', 2, 2, true], ['<=', 3, 2, false], ['>=', 2, 2, true], ['>=', 2, 3, false],
    ['==', 2, 2, true], ['==', 2, 3, false], ['!=', 2, 3, true], ['!=', 2, 2, false]
  ];
  for (const [operator, a, b, expected] of cases) {
    const r = adapter.create(form(q('v', 'boolean', op(operator, literal(a), literal(b)))));
    assert.equal(r.get('v'), expected, `${a} ${operator} ${b}`);
  }
});
test('boolean operators evaluate both truth outcomes', () => {
  for (const a of [false, true]) for (const b of [false, true]) {
    const r = adapter.create(form(
      q('and', 'boolean', op('&&', literal(a), literal(b))),
      q('or', 'boolean', op('||', literal(a), literal(b))),
      q('not', 'boolean', op('!', literal(a)))
    ));
    assert.equal(r.get('and'), a && b);
    assert.equal(r.get('or'), a || b);
    assert.equal(r.get('not'), !a);
  }
});
test('undefined remains undefined through boolean expressions', () => {
  const r = adapter.create(form(q('x', 'boolean'),
    q('a', 'boolean', op('&&', ref('x'), literal(false))),
    q('b', 'boolean', op('||', ref('x'), literal(true))),
    q('c', 'boolean', op('!', ref('x')))));
  for (const id of ['a', 'b', 'c']) assert.ok(absent(r.get(id)), id);
});
test('computed values update transitively', () => {
  const r = adapter.create(form(q('x', 'integer'),
    q('y', 'integer', op('+', ref('x'), literal(2))),
    q('z', 'integer', op('*', ref('y'), literal(3)))));
  r.set('x', 4); assert.equal(r.get('z'), 18);
  r.set('x', 7); assert.equal(r.get('z'), 27);
});
test('forward references compute independently of display order', () => {
  const r = adapter.create(form(q('y', 'integer', op('+', ref('x'), literal(1))), q('x', 'integer')));
  r.set('x', 8); assert.equal(r.get('y'), 9);
});
test('undefined and false conditions hide questions', () => {
  const r = adapter.create(form(q('show', 'boolean'), { condition: ref('show'), items: [q('x', 'string')] }));
  assert.equal(r.visible('x'), false);
  r.set('show', false); assert.equal(r.visible('x'), false);
  r.set('show', true); assert.equal(r.visible('x'), true);
});
test('nested visibility requires every enclosing condition', () => {
  const r = adapter.create(form(q('a', 'boolean'), q('b', 'boolean'),
    { condition: ref('a'), items: [{ condition: ref('b'), items: [q('x', 'string')] }] }));
  r.set('a', true); r.set('b', true); assert.equal(r.visible('x'), true);
  r.set('a', false); assert.equal(r.visible('x'), false);
});
test('date and string comparisons preserve their value domains', () => {
  const r = adapter.create(form(q('date', 'date'), q('text', 'string'),
    q('earlier', 'boolean', op('<', ref('date'), literal('2026-12-31'))),
    q('same', 'boolean', op('==', ref('text'), literal('abc')))));
  r.set('date', '2026-10-29'); r.set('text', 'abc');
  assert.equal(r.get('earlier'), true); assert.equal(r.get('same'), true);
});
test('JSON export contains form identity and typed answers', () => {
  const r = adapter.create(form(q('x', 'integer'), q('b', 'boolean')));
  r.set('x', 42); r.set('b', false);
  const saved = JSON.parse(JSON.stringify(r.exportAnswers()));
  assert.equal(saved.form, 'Acceptance');
  assert.equal(saved.answers.x, 42); assert.equal(saved.answers.b, false);
});
test('valid form has no diagnostics', () => {
  assert.deepEqual(adapter.validate(form(q('x', 'integer'),
    q('y', 'integer', op('+', ref('x'), literal(1))))), []);
});
test('duplicate identifiers are diagnosed across nested groups', () => {
  has(form(q('x', 'string'), { condition: literal(true), items: [q('x', 'string')] }), 'duplicate');
});
test('unresolved references are diagnosed', () => {
  has(form(q('x', 'integer', ref('missing'))), 'unresolved');
});
test('nonboolean conditions are diagnosed', () => {
  has(form({ condition: literal(42), items: [q('x', 'string')] }), 'type');
});
test('incompatible computed result types are diagnosed', () => {
  has(form(q('x', 'boolean', op('+', literal(1), literal(2)))), 'type');
});
test('invalid arithmetic and boolean operands are diagnosed', () => {
  has(form(q('x', 'integer', op('+', literal('abc'), literal(2)))), 'type');
  has(form(q('x', 'boolean', op('&&', literal(1), literal(true)))), 'type');
});
test('direct and indirect cycles are diagnosed', () => {
  has(form(q('x', 'integer', ref('x'))), 'cycle');
  has(form(q('x', 'integer', ref('y')), q('y', 'integer', ref('x'))), 'cycle');
});

const results = tests.map(({ name, run }) => {
  try { run(); console.log(`PASS ${name}`); return { name, passed: true }; }
  catch (error) {
    console.error(`FAIL ${name}: ${error.stack || error}`);
    return { name, passed: false, error: String(error.stack || error) };
  }
});
const report = { timestamp: new Date().toISOString(), passed: results.filter(r => r.passed).length,
  total: results.length, results };
fs.mkdirSync(path.join(__dirname, 'evidence'), { recursive: true });
fs.writeFileSync(path.join(__dirname, 'evidence', 'acceptance.json'), JSON.stringify(report, null, 2) + '\n');
console.log(`${report.passed}/${report.total} passed`);
process.exitCode = report.passed === report.total ? 0 : 1;
