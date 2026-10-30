'use strict';

(function attach(root, factory) {
  const api = factory();
  if (typeof module !== 'undefined' && module.exports) module.exports = api;
  root.QLRuntime = api;
})(globalThis, () => {
  const numeric = new Set(['integer', 'decimal', 'money']);
  const operators = new Set(['+', '-', '*', '/', '&&', '||', '!', '<', '>', '<=', '>=', '==', '!=']);

  function collect(items, ancestors = [], questions = [], diagnostics = []) {
    for (const item of items || []) {
      if (!item || typeof item !== 'object') continue;
      if (Object.hasOwn(item, 'id')) {
        if (typeof item.id !== 'string' || item.id.length === 0) {
          diagnostics.push({ code: 'type', message: 'A question must have a non-empty identifier.' });
        } else if (questions.some(question => question.id === item.id)) {
          diagnostics.push({ code: 'duplicate', id: item.id, message: `Duplicate question identifier: ${item.id}` });
        }
        questions.push({ ...item, ancestors });
      } else if (Object.hasOwn(item, 'condition')) {
        collect(item.items, [...ancestors, item.condition], questions, diagnostics);
      }
    }
    return { questions, diagnostics };
  }

  function references(expression, output = []) {
    if (!expression || typeof expression !== 'object') return output;
    if (typeof expression.ref === 'string') output.push(expression.ref);
    if (Array.isArray(expression.args)) for (const arg of expression.args) references(arg, output);
    return output;
  }

  function inferredType(expression, questionTypes, diagnostics, path) {
    if (expression == null || typeof expression !== 'object') {
      diagnostics.push({ code: 'type', message: `${path}: expected an expression.` });
      return 'unknown';
    }
    if (Object.hasOwn(expression, 'literal')) {
      const value = expression.literal;
      if (typeof value === 'boolean') return 'boolean';
      if (typeof value === 'string') return 'string';
      if (typeof value === 'number') return Number.isInteger(value) ? 'integer' : 'decimal';
      return 'unknown';
    }
    if (Object.hasOwn(expression, 'ref')) {
      if (!questionTypes.has(expression.ref)) {
        diagnostics.push({ code: 'unresolved', id: expression.ref, message: `${path}: unresolved question ${expression.ref}.` });
        return 'unknown';
      }
      return questionTypes.get(expression.ref);
    }
    const op = expression.op;
    const args = expression.args;
    if (!operators.has(op) || !Array.isArray(args)) {
      diagnostics.push({ code: 'type', message: `${path}: invalid operator expression.` });
      return 'unknown';
    }
    const unaryMinus = op === '-' && args.length === 1;
    const expected = op === '!' || unaryMinus ? 1 : 2;
    if (args.length !== expected) {
      diagnostics.push({ code: 'type', message: `${path}: operator ${op} expects ${expected} operand(s).` });
      return 'unknown';
    }
    const types = args.map((arg, index) => inferredType(arg, questionTypes, diagnostics, `${path}.${op}[${index}]`));
    const numericPair = types.length === 2 && types.every(type => numeric.has(type));
    if (op === '!') {
      if (types[0] !== 'boolean') diagnostics.push({ code: 'type', message: `${path}: ! requires a boolean operand.` });
      return 'boolean';
    }
    if (unaryMinus) {
      if (!numeric.has(types[0])) diagnostics.push({ code: 'type', message: `${path}: unary - requires a numeric operand.` });
      return numeric.has(types[0]) ? types[0] : 'unknown';
    }
    if (op === '&&' || op === '||') {
      if (types.some(type => type !== 'boolean')) diagnostics.push({ code: 'type', message: `${path}: ${op} requires boolean operands.` });
      return 'boolean';
    }
    if (['+', '-', '*', '/'].includes(op)) {
      if (op === '+' && types[0] === 'string' && types[1] === 'string') return 'string';
      if (!numericPair) diagnostics.push({ code: 'type', message: `${path}: ${op} requires numeric operands${op === '+' ? ' or two strings' : ''}.` });
      if (types.includes('money')) return 'money';
      if (types.includes('decimal') || op === '/') return 'decimal';
      return 'integer';
    }
    const compatible = numericPair || types[0] === types[1] ||
      (new Set(types).size === 2 && types.includes('date') && types.includes('string'));
    if (!compatible) diagnostics.push({ code: 'type', message: `${path}: ${op} compares incompatible operands.` });
    return 'boolean';
  }

  function validate(form) {
    const diagnostics = [];
    if (!form || typeof form !== 'object' || !Array.isArray(form.items)) {
      return [{ code: 'type', message: 'A questionnaire must contain an items array.' }];
    }
    const { questions, diagnostics: shapeDiagnostics } = collect(form.items);
    diagnostics.push(...shapeDiagnostics);
    const questionTypes = new Map();
    for (const question of questions) {
      if (typeof question.id === 'string' && !questionTypes.has(question.id)) questionTypes.set(question.id, question.type);
    }
    const computed = new Map();
    for (const question of questions) {
      if (question.computed !== undefined && question.computed !== null) {
        const resultType = inferredType(question.computed, questionTypes, diagnostics, question.id);
        if (question.type && resultType !== 'unknown' &&
            !(numeric.has(resultType) && numeric.has(question.type)) &&
            resultType !== question.type) {
          diagnostics.push({ code: 'type', id: question.id, message: `${question.id}: computed result ${resultType} does not match ${question.type}.` });
        }
        computed.set(question.id, references(question.computed));
      }
      for (const condition of question.ancestors) {
        const type = inferredType(condition, questionTypes, diagnostics, `condition for ${question.id}`);
        if (type !== 'boolean' && type !== 'unknown') {
          diagnostics.push({ code: 'type', id: question.id, message: `Condition for ${question.id} must be boolean.` });
        }
      }
    }
    for (const item of form.items) {
      inspectConditions(item, questionTypes, diagnostics);
    }

    const states = new Map();
    const reported = new Set();
    function visit(id, stack) {
      if (!computed.has(id)) return;
      if (states.get(id) === 2) return;
      if (states.get(id) === 1) {
        const cycle = [...stack, id].join(' -> ');
        if (!reported.has(cycle)) {
          reported.add(cycle);
          diagnostics.push({ code: 'cycle', id, message: `Computed dependency cycle: ${cycle}` });
        }
        return;
      }
      states.set(id, 1);
      for (const dependency of computed.get(id)) visit(dependency, [...stack, id]);
      states.set(id, 2);
    }
    for (const id of computed.keys()) visit(id, []);
    return diagnostics;
  }

  function inspectConditions(item, questionTypes, diagnostics) {
    if (!item || typeof item !== 'object' || Object.hasOwn(item, 'id')) return;
    if (Object.hasOwn(item, 'condition')) {
      const type = inferredType(item.condition, questionTypes, diagnostics, 'conditional');
      if (type !== 'boolean' && type !== 'unknown') diagnostics.push({ code: 'type', message: 'Conditional expression must be boolean.' });
      for (const child of item.items || []) inspectConditions(child, questionTypes, diagnostics);
    }
  }

  function evaluate(expression, getQuestion) {
    if (!expression || typeof expression !== 'object') return undefined;
    if (Object.hasOwn(expression, 'literal')) return expression.literal;
    if (Object.hasOwn(expression, 'ref')) return getQuestion(expression.ref);
    const args = Array.isArray(expression.args) ? expression.args.map(arg => evaluate(arg, getQuestion)) : [];
    if (!operators.has(expression.op) || args.some(value => value === undefined || value === null)) return undefined;
    const [left, right] = args;
    switch (expression.op) {
      case '!': return !left;
      case '&&': return left && right;
      case '||': return left || right;
      case '+': return left + right;
      case '-': return right === undefined ? -left : left - right;
      case '*': return left * right;
      case '/': return right === 0 ? undefined : left / right;
      case '<': return left < right;
      case '>': return left > right;
      case '<=': return left <= right;
      case '>=': return left >= right;
      case '==': return left === right;
      case '!=': return left !== right;
      default: return undefined;
    }
  }

  function create(form) {
    const { questions } = collect(form && form.items);
    const byId = new Map(questions.map(question => [question.id, question]));
    const answers = new Map();

    function getQuestion(id, stack = new Set()) {
      const question = byId.get(id);
      if (!question) return undefined;
      if (question.computed === undefined || question.computed === null) return answers.get(id);
      if (stack.has(id)) return undefined;
      const next = new Set(stack);
      next.add(id);
      return evaluate(question.computed, dependency => getQuestion(dependency, next));
    }

    function set(id, value) {
      const question = byId.get(id);
      if (!question) throw new RangeError(`Unknown question: ${id}`);
      if (question.computed !== undefined && question.computed !== null) throw new TypeError(`${id} is computed.`);
      if (value !== undefined && value !== null && !validValue(question.type, value)) {
        throw new TypeError(`Invalid ${question.type} answer for ${id}.`);
      }
      if (value === undefined || value === null) answers.delete(id);
      else answers.set(id, value);
    }

    function visible(id) {
      const question = byId.get(id);
      if (!question) return false;
      return question.ancestors.every(condition => evaluate(condition, dependency => getQuestion(dependency)) === true);
    }

    function exportAnswers() {
      const values = {};
      for (const question of questions) {
        const value = getQuestion(question.id);
        if (value !== undefined) values[question.id] = value;
      }
      return { form: form && form.name, answers: values };
    }

    return {
      set,
      get: id => getQuestion(id),
      visible,
      exportAnswers
    };
  }

  function validValue(type, value) {
    switch (type) {
      case 'boolean': return typeof value === 'boolean';
      case 'integer': return Number.isInteger(value);
      case 'decimal':
      case 'money': return typeof value === 'number' && Number.isFinite(value);
      case 'date': {
        if (typeof value !== 'string' || !/^\d{4}-\d{2}-\d{2}$/.test(value)) return false;
        const date = new Date(`${value}T00:00:00Z`);
        return !Number.isNaN(date.getTime()) && date.toISOString().slice(0, 10) === value;
      }
      case 'string': return typeof value === 'string';
      default: return false;
    }
  }

  return { create, validate };
});
