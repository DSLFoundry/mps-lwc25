'use strict';

async function startQuestionnaire() {
  const response = await fetch('/questionnaire.json');
  if (!response.ok) throw new Error(`Could not load questionnaire (${response.status}).`);
  const form = await response.json();
  const runtime = QLRuntime.create(form);
  const formElement = document.querySelector('#questionnaire');
  document.querySelector('#form-title').textContent = form.name || 'Questionnaire';
  const controls = new Map();

  function renderItems(items, parent) {
    for (const item of items || []) {
      if (Object.hasOwn(item, 'id')) {
        const container = document.createElement('div');
        container.className = 'question';
        container.dataset.questionId = item.id;
        const label = document.createElement('label');
        label.htmlFor = `answer-${item.id}`;
        label.textContent = item.label || item.id;
        container.append(label);
        if (item.computed !== undefined && item.computed !== null) {
          const output = document.createElement('output');
          output.id = `answer-${item.id}`;
          output.dataset.computedId = item.id;
          output.textContent = '—';
          container.append(output);
          controls.set(item.id, output);
        } else {
          const input = document.createElement('input');
          input.id = `answer-${item.id}`;
          input.name = item.id;
          input.dataset.answerId = item.id;
          if (item.type === 'boolean') input.type = 'checkbox';
          else if (item.type === 'integer' || item.type === 'decimal' || item.type === 'money') {
            input.type = 'number';
            input.step = item.type === 'integer' ? '1' : 'any';
          } else if (item.type === 'date') input.type = 'date';
          else input.type = 'text';
          input.addEventListener('input', () => {
            if (input.type === 'checkbox') runtime.set(item.id, input.checked);
            else if (input.value === '') runtime.set(item.id, undefined);
            else if (input.type === 'number') {
              const value = Number(input.value);
              runtime.set(item.id, item.type === 'integer' ? Math.trunc(value) : value);
            } else runtime.set(item.id, input.value);
            refresh();
          });
          container.append(input);
          controls.set(item.id, input);
        }
        parent.append(container);
      } else if (Object.hasOwn(item, 'condition')) {
        const group = document.createElement('fieldset');
        group.dataset.conditional = 'true';
        parent.append(group);
        renderItems(item.items, group);
      }
    }
  }

  function refresh() {
    for (const [id, control] of controls) {
      const value = runtime.get(id);
      if (control instanceof HTMLOutputElement) control.value = value === undefined ? '—' : String(value);
      const container = control.closest('[data-question-id]');
      if (container) container.hidden = !runtime.visible(id);
    }
    for (const group of formElement.querySelectorAll('[data-conditional]')) {
      const nested = [...group.querySelectorAll('[data-question-id]')];
      group.hidden = nested.length > 0 && nested.every(element => element.hidden);
    }
  }

  renderItems(form.items, formElement);
  refresh();
  document.querySelector('#download').addEventListener('click', () => {
    const blob = new Blob([JSON.stringify(runtime.exportAnswers(), null, 2)], { type: 'application/json' });
    const url = URL.createObjectURL(blob);
    const anchor = document.createElement('a');
    anchor.href = url;
    anchor.download = `${(form.name || 'questionnaire').replace(/[^a-z0-9_-]+/gi, '-')}-answers.json`;
    anchor.click();
    URL.revokeObjectURL(url);
    document.querySelector('#status').textContent = 'Answers downloaded as JSON.';
  });
}

startQuestionnaire().catch(error => {
  document.querySelector('#status').textContent = error.message;
});
