# QL agentic-coding benchmark scaffold

This branch is the common starting point for independent implementations of the
[original QL assignment](https://homepages.cwi.nl/~storm/Ql.pdf) in JetBrains MPS.
See [BENCHMARK.md](BENCHMARK.md) for the scope, acceptance criteria, run rules,
and measurements.

The MPS project uses **MPS 2026.1.1**. This checkout implements native QL
concepts and projectional editors, a native MPS root-mapping generator, a
sample questionnaire, and a production runtime and browser UI. The generator
serializes the authored questionnaire, nested conditionals, question
properties, and expression trees into JSON in generated Java classes. The
runtime/UI consumes that generated output.

## Setup

Use Java 25 (the MPS bundled JetBrains Runtime is suitable). Open this
directory in MPS 2026.1.1, or use the prepared `build\mopsw.cmd` wrapper.

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
`computed` role is an optional single expression. Leave it empty for an input
question.
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

`QuestionnaireLanguage.generator.templates@generator` also contains a native
MPS root-mapping rule and BaseLanguage template. The MPS make generates and
compiles `GeneratedQuestionnaire` for each QL model in `Sandbox`. Verify the
compiled output with:

```powershell
.\build\mopsw.cmd make module QuestionnaireLanguage
.\build\mopsw.cmd make module QuestionnaireLanguage.generator
.\build\mopsw.cmd make module Sandbox
.\build\mopsw.cmd code run benchmark\verify-native-generation.groovy
.\build\mopsw.cmd code run benchmark\generate.groovy
node benchmark\verify-native-runtime.cjs
```

The root-mapping template invokes the compiled native serializer on each
source `Questionnaire`. `verify-native-generation.groovy` checks generated
classes and parses their generated questionnaire JSON. `generate.groovy`
extracts that JSON from the generated class into `benchmark\generated-form.json`;
it does not walk or re-serialize the source model. The same file is fetched by
the production UI and passed to the production runtime. During native-
generation verification, probes changed a native label and a native expression
literal, regenerated, and confirmed those changes in the generated JSON and
runtime computed value; the authored sample was then restored.
`QuestionnaireLanguage.typesystem` includes an editor-time MPS rule that
checks a direct `QuestionReference` used as a conditional condition and
requires its target question to be boolean. IETS3 checks the types of other
expression forms. `check-native.groovy` additionally checks the native QL
models for duplicate identifiers, unresolved references, expression types,
and computed-dependency cycles; those extended checks run in mops Code Mode.
`Sandbox.QLInvalid` intentionally contains a reference to a string question
in a condition and ill-typed arithmetic. The native MPS model checker reports
both the conditional rule violation and the IETS3 arithmetic error; the Code
Mode checker reports five findings, including the duplicate identifier,
non-boolean condition, invalid computed expression, and dependency cycle.
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
