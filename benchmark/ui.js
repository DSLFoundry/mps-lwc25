'use strict';

const root = document.querySelector('#questionnaire');
const status = document.querySelector('#status');
const runtimeScript = window.QLRuntime;

function appendItems(items, parent, conditionalAncestors = []) {
  for (const item of items || []) {
    if (item && Array.isArray(item.items) && Object.hasOwn(item, 'condition')) {
      const section = document.createElement('section');
      section.className = 'conditional';
      section.hidden = true;
      const heading = document.createElement('p');
      heading.className = 'condition-label';
      heading.textContent = 'Conditional questions';
      section.append(heading);
      parent.append(section);
      const record = { item, section, conditionalAncestors };
      conditionals.push(record);
      appendItems(item.items, section, [...conditionalAncestors, record]);
      continue;
    }

    const field = document.createElement('div');
    field.className = 'field';
    const label = document.createElement('label');
    label.textContent = item.label || item.id;
    let control;
    if (item.computed) {
      control = document.createElement('output');
      control.className = 'computed';
      control.setAttribute('aria-live', 'polite');
    } else {
      control = document.createElement('input');
      control.name = item.id;
      control.dataset.questionId = item.id;
      if (item.type === 'boolean') control.type = 'checkbox';
      else if (item.type === 'date') control.type = 'date';
      else if (['integer', 'decimal', 'money'].includes(item.type)) {
        control.type = 'number';
        control.step = item.type === 'integer' ? '1' : 'any';
      } else control.type = 'text';
      control.addEventListener('input', () => {
        const value = item.type === 'boolean'
          ? control.checked
          : control.value === '' ? undefined
            : ['integer', 'decimal', 'money'].includes(item.type)
              ? (Number.isFinite(Number(control.value)) ? Number(control.value) : undefined)
              : control.value;
        runtime.set(item.id, value);
        refresh();
      });
      label.htmlFor = `answer-${item.id}`;
      control.id = `answer-${item.id}`;
    }
    if (item.computed) {
      control.dataset.questionId = item.id;
      control.id = `answer-${item.id}`;
    }
    field.append(label, control);
    parent.append(field);
    fields.set(item.id, { item, control, conditionalAncestors });
  }
}

function refresh() {
  for (const { item, section, conditionalAncestors } of conditionals) {
    const ancestorsVisible = conditionalAncestors.every(record => !record.section.hidden);
    section.hidden = !ancestorsVisible || runtimeScript.evaluate(item.condition, id => runtime.get(id)) !== true;
  }
  for (const { item, control, conditionalAncestors } of fields.values()) {
    const value = runtime.get(item.id);
    if (item.computed) control.textContent = value === undefined ? 'Not available yet' : String(value);
    else if (item.type === 'boolean') control.checked = value === true;
    else control.value = value === undefined || value === null ? '' : String(value);
    const hidden = conditionalAncestors.some(record => record.section.hidden);
    control.closest('.field').hidden = hidden;
  }
}

function start(form) {
  try {
    const diagnostics = runtimeScript.validate(form);
    if (diagnostics.length) throw new Error(diagnostics.map(d => d.message).join('\n'));
    document.querySelector('#form-title').textContent = form.name || 'Questionnaire';
    window.qlApp = { form, runtime, refresh };
    appendItems(form.items, root);
    refresh();
    status.textContent = 'Ready';
    document.querySelector('#download').addEventListener('click', () => {
      const contents = JSON.stringify(runtime.exportAnswers(), null, 2);
      const url = URL.createObjectURL(new Blob([contents], { type: 'application/json' }));
      const link = document.createElement('a');
      link.href = url;
      link.download = `${(form.name || 'answers').toLowerCase().replace(/[^a-z0-9]+/g, '-')}-answers.json`;
      link.click();
      setTimeout(() => URL.revokeObjectURL(url), 1000);
      status.textContent = 'Answers downloaded';
    });
  } catch (error) {
    status.textContent = error.message;
    status.classList.add('error');
  }
}

const fields = new Map();
const conditionals = [];
let runtime;
fetch('./generated-form.json').then(response => response.json()).then(form => {
  runtime = runtimeScript.create(form);
  start(form);
}).catch(error => {
  status.textContent = error.message;
  status.classList.add('error');
});
