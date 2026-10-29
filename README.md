# QL agentic-coding benchmark scaffold

This branch is the common starting point for independent implementations of the
[original QL assignment](https://homepages.cwi.nl/~storm/Ql.pdf) in JetBrains MPS.
See [BENCHMARK.md](BENCHMARK.md) for the scope, acceptance criteria, run rules,
and measurements.

The existing MPS project has been migrated to **MPS 2026.1.1**. QL-specific
structure, editors, behavior, checks, generator rules, and example roots have
been removed through native MPS APIs. Module identities, build models, dependency
configuration, empty aspect models, and an empty generator mapping configuration
are retained. KernelF, plaintextgen, and other existing dependencies may be used.
The historical HTML reference implementation has also been removed.

## Setup

Use Java 25 (the MPS bundled JetBrains Runtime is suitable) and run
`.\gradlew.bat` to resolve dependencies and build. Open this directory in
MPS 2026.1.1. There is deliberately no questionnaire example yet.

When this project is already open in MPS, do not re-extract dependencies into
directories whose JARs the IDE has locked. With dependencies already resolved,
use `.\gradlew.bat buildQuestionnaireLanguage -x resolveMps -x resolveMpsArtifacts`.
This builds the checked-out models without replacing the IDE's libraries.

## Author and run a QL questionnaire

The native QL concepts are in `QuestionnaireLanguage.structure`; their
projectional editors are in `QuestionnaireLanguage.editor`. A questionnaire
root contains questions and nested `if` conditionals. Questions have an
identifier, label, and one of `boolean`, `string`, `integer`, `decimal`,
`money`, or `date`. QL question references and the imported IETS3 expression
language provide expressions, including boolean, comparison, and arithmetic
operators. The editor uses the IETS3 editors for expression nodes.

Open `Sandbox.QLBasic` in MPS, add a `Questionnaire` root, then add `Question`
and `Conditional` children using the projectional editor. A question's
`computed` role is a zero-or-more child list in this implementation; the
exporter consumes its first expression. Leave it empty for an input question.
Use a `QuestionReference` expression to reference a question. The checked-in
example includes input questions, a computed value, and a nested visibility
condition.

With the project's configured MPS 2026.1.1 and Java 25 available, build/check
and export the native example from PowerShell:

```powershell
$env:JAVA_HOME = 'C:\Program Files\JetBrains\MPS 2026.1.1\jbr'
.\build\mopsw.cmd make module QuestionnaireLanguage
.\build\mopsw.cmd check model QuestionnaireLanguage.structure
.\build\mopsw.cmd check model QuestionnaireLanguage.editor
.\build\mopsw.cmd check model Sandbox.QLBasic
.\build\mopsw.cmd code run benchmark\generate.groovy
.\build\mopsw.cmd code run benchmark\check-native.groovy
```

`generate.groovy` reads the native MPS model through mops Code Mode and writes
`benchmark\generated-form.json`; it is not a hand-maintained substitute form.
`check-native.groovy` performs semantic checks over the native QL models,
including duplicate identifiers, unresolved references, expression/condition
types, and dependency cycles. `Sandbox.QLInvalid` is a committed invalid
fixture: the native MPS model checker reports its unresolved reference and
ill-typed arithmetic; the Code Mode semantic checker additionally reports the
duplicate identifier, non-boolean condition, and computed dependency cycle.
The semantic checks are invoked as a mops Code Mode command; they are not yet
editor-time typesystem rules.
To see the native MPS checker's expected failures directly, run this command
separately (exit code 1 is expected for this committed invalid fixture):

```powershell
.\build\mopsw.cmd check model Sandbox.QLInvalid --format jsonl --limit 0
```

Run the production runtime and browser UI with:

```powershell
node benchmark\serve.cjs
```

Open `http://127.0.0.1:4173/`. Fill the age field, toggle “Do you own a car?”
to show/hide the nested question, and observe the computed sample update. Use
**Download answers as JSON** to save the completed answers. The downloaded file
contains the form name and an `answers` object keyed by question identifier.
Run the fixed runtime checks with `node benchmark\acceptance.cjs`.

The original repository authors are Klemens Schindler and Eugen Schindler.
Historical paper materials remain in `doc`; they are not implementation input
for either fresh benchmark run.
