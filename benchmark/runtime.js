'use strict';

const TYPES = new Set(['boolean', 'string', 'integer', 'decimal', 'money', 'date']);
const NUMERIC = new Set(['integer', 'decimal', 'money']);

function visitItems(items, ancestors = [], questions = [], conditions = []) {
  for (const item of items || []) {
    if (item && Array.isArray(item.items) && Object.hasOwn(item, 'condition')) {
      visitItems(item.items, [...ancestors, item], questions, [...conditions, item.condition]);
    } else if (item && typeof item.id === 'string') {
      questions.push({ item, ancestors, conditions });
    }
  }
  return questions;
}

function evaluate(expression, resolve, resolving = new Set()) {
  if (!expression || typeof expression !== 'object') return undefined;
  if (Object.hasOwn(expression, 'literal')) return expression.literal;
  if (typeof expression.ref === 'string') return resolve(expression.ref, resolving);
  const args = Array.isArray(expression.args) ? expression.args : [];
  const values = args.map(arg => evaluate(arg, resolve, resolving));
  if (values.some(value => value === undefined || value === null)) return undefined;
  switch (expression.op) {
    case '!': return args.length === 1 && typeof values[0] === 'boolean' ? !values[0] : undefined;
    case '&&': return args.length === 2 && values.every(value => typeof value === 'boolean') ? values[0] && values[1] : undefined;
    case '||': return args.length === 2 && values.every(value => typeof value === 'boolean') ? values[0] || values[1] : undefined;
    case '==': return args.length === 2 ? values[0] === values[1] : undefined;
    case '!=': return args.length === 2 ? values[0] !== values[1] : undefined;
    case '<': return args.length === 2 ? values[0] < values[1] : undefined;
    case '<=': return args.length === 2 ? values[0] <= values[1] : undefined;
    case '>': return args.length === 2 ? values[0] > values[1] : undefined;
    case '>=': return args.length === 2 ? values[0] >= values[1] : undefined;
    case '+': return args.length === 2 && values.every(value => typeof value === 'number') ? values[0] + values[1] : undefined;
    case '-': return args.length === 2 && values.every(value => typeof value === 'number') ? values[0] - values[1] : undefined;
    case '*': return args.length === 2 && values.every(value => typeof value === 'number') ? values[0] * values[1] : undefined;
    case '/': return args.length === 2 && values.every(value => typeof value === 'number') && values[1] !== 0 ? values[0] / values[1] : undefined;
    default: return undefined;
  }
}

function create(form) {
  const entries = visitItems(form && form.items);
  const byId = new Map(entries.map(entry => [entry.item.id, entry.item]));
  const answers = new Map();

  function resolve(id, resolving = new Set()) {
    const item = byId.get(id);
    if (!item) return undefined;
    if (!item.computed) return answers.get(id);
    if (resolving.has(id)) return undefined;
    const next = new Set(resolving);
    next.add(id);
    return evaluate(item.computed, (dependency, stack) => resolve(dependency, stack || next), next);
  }

  return {
    set(id, value) {
      if (!byId.has(id)) throw new RangeError(`Unknown question: ${id}`);
      answers.set(id, value);
    },
    get(id) {
      return resolve(id);
    },
    visible(id) {
      const entry = entries.find(candidate => candidate.item.id === id);
      return !!entry && entry.conditions.every(condition => evaluate(condition, resolve) === true);
    },
    exportAnswers() {
      const exported = {};
      for (const { item } of entries) {
        const value = resolve(item.id);
        if (value !== undefined && value !== null) exported[item.id] = value;
      }
      return { form: form && form.name, answers: exported };
    }
  };
}

function validate(form) {
  const diagnostics = [];
  const entries = visitItems(form && form.items);
  const firstById = new Map();
  for (const { item } of entries) {
    if (firstById.has(item.id)) diagnostics.push({ code: 'duplicate', id: item.id, message: `Duplicate question identifier: ${item.id}` });
    else firstById.set(item.id, item);
    if (!TYPES.has(item.type)) diagnostics.push({ code: 'type', id: item.id, message: `Unknown question type: ${item.type}` });
  }

  function infer(expression) {
    if (!expression || typeof expression !== 'object') return { type: 'invalid', refs: [] };
    if (Object.hasOwn(expression, 'literal')) {
      const value = expression.literal;
      if (typeof value === 'boolean') return { type: 'boolean', refs: [] };
      if (typeof value === 'string') return { type: /^\d{4}-\d{2}-\d{2}$/.test(value) ? 'date' : 'string', refs: [] };
      if (typeof value === 'number' && Number.isFinite(value)) return { type: Number.isInteger(value) ? 'integer' : 'decimal', refs: [] };
      return { type: 'invalid', refs: [] };
    }
    if (typeof expression.ref === 'string') {
      const target = firstById.get(expression.ref);
      if (!target) {
        diagnostics.push({ code: 'unresolved', id: expression.ref, message: `Unresolved question reference: ${expression.ref}` });
        return { type: 'invalid', refs: [expression.ref] };
      }
      return { type: target.type, refs: [expression.ref] };
    }
    const args = Array.isArray(expression.args) ? expression.args : [];
    const inferred = args.map(infer);
    const refs = inferred.flatMap(result => result.refs);
    const operandTypes = inferred.map(result => result.type);
    const arity = expression.op === '!' ? 1 : 2;
    if (args.length !== arity) {
      diagnostics.push({ code: 'type', message: `Operator ${expression.op} expects ${arity} operand(s)` });
      return { type: 'invalid', refs };
    }
    const [left, right] = operandTypes;
    const numericPair = NUMERIC.has(left) && NUMERIC.has(right);
    const comparable = left === right || numericPair;
    let type = 'invalid';
    if (expression.op === '!') {
      if (left === 'boolean') type = 'boolean';
    } else if (expression.op === '&&' || expression.op === '||') {
      if (left === 'boolean' && right === 'boolean') type = 'boolean';
    } else if (['==', '!=', '<', '<=', '>', '>='].includes(expression.op)) {
      if (comparable && (expression.op === '==' || expression.op === '!=' || !['boolean'].includes(left))) type = 'boolean';
    } else if (['+', '-', '*', '/'].includes(expression.op) && numericPair) {
      type = expression.op === '/'
        ? 'decimal'
        : left === 'money' || right === 'money' ? 'money'
          : left === 'decimal' || right === 'decimal' ? 'decimal' : 'integer';
    }
    if (type === 'invalid') diagnostics.push({ code: 'type', message: `Invalid operands for ${expression.op}: ${operandTypes.join(', ')}` });
    return { type, refs };
  }

  for (const { item, conditions } of entries) {
    for (const condition of conditions) {
      const result = infer(condition);
      if (result.type !== 'boolean') diagnostics.push({ code: 'type', id: item.id, message: `Condition for ${item.id} must be boolean` });
    }
    if (item.computed) {
      const result = infer(item.computed);
      const compatible = result.type === item.type || item.type === 'decimal' && result.type === 'integer';
      if (!compatible) diagnostics.push({ code: 'type', id: item.id, message: `Computed result for ${item.id} is ${result.type}, expected ${item.type}` });
    }
  }

  const computed = new Map(entries.filter(({ item }) => item.computed).map(({ item }) => [item.id, item]));
  const state = new Map();
  const reportedCycles = new Set();
  function checkCycle(id, trail = []) {
    if (state.get(id) === 2) return;
    if (state.get(id) === 1) {
      const cycle = trail.slice(trail.indexOf(id)).concat(id);
      const key = [...new Set(cycle)].sort().join('|');
      if (!reportedCycles.has(key)) {
        reportedCycles.add(key);
        diagnostics.push({ code: 'cycle', id, message: `Computed dependency cycle: ${cycle.join(' -> ')}` });
      }
      return;
    }
    state.set(id, 1);
    const refs = [];
    function collect(expression) {
      if (!expression || typeof expression !== 'object') return;
      if (typeof expression.ref === 'string') refs.push(expression.ref);
      for (const arg of expression.args || []) collect(arg);
    }
    collect(computed.get(id).computed);
    for (const dependency of refs) if (computed.has(dependency)) checkCycle(dependency, [...trail, id]);
    state.set(id, 2);
  }
  for (const id of computed.keys()) checkCycle(id);
  return diagnostics;
}

const api = { create, validate, evaluate };
if (typeof module !== 'undefined' && module.exports) module.exports = api;
if (typeof globalThis !== 'undefined') globalThis.QLRuntime = api;
