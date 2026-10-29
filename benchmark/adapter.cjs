'use strict';

const runtime = require('../runtime/ql-core.cjs');

module.exports = {
  create: form => runtime.create(form),
  validate: form => runtime.validate(form)
};
