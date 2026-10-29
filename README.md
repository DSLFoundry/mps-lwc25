# Questionnaire Language (QL)

This MPS 2026.1.1 project contains a native QL language, a generated
questionnaire example, and a JavaScript runtime with a browser GUI.

## Language and example

The `QuestionnaireLanguage` module defines `Form`, `Question`, `Calculated`,
`Branch`, `Literal`, `Reference`, `Binary`, and `Unary` concepts with
projectional editors. A form contains ordered questions and nested branches.
Question value types are `boolean`, `string`, `integer`, `decimal`, `money`,
and `date`. The runtime supports `&&`, `||`, `!`, comparisons, and arithmetic;
unanswered values and dependent computations remain undefined.

The native `QuestionnaireExample` model contains the `BenefitSurvey` form. Its
MPS text-generation rules produce a computed unary value and a nested
conditional as well as the typed questions. They produce:

```text
solutions\QuestionnaireExample\source_gen\QuestionnaireExample\BenefitSurvey.json
```

The checked-in `solutions\QuestionnaireExample\generated\BenefitSurvey.json`
is the output produced from that model. To regenerate it:

1. Open the project in MPS 2026.1.1.
2. Make the `QuestionnaireLanguage` module, then make the
   `QuestionnaireExample` model.
3. Use the generated file under `source_gen` as the GUI input. The
   `generated` copy is a convenient checked-in default.

With the bundled Java 25 runtime, the language build is:

```powershell
$env:JAVA_HOME = 'C:\Program Files\JetBrains\MPS 2026.1.1\jbr'
.\gradlew.bat --console=plain buildQuestionnaireLanguage `
  -x resolveMps -x resolveMpsArtifacts --project-cache-dir build\gradle-cache
```

The MPS build model enables bootstrap generation because the language's
text-generation rules refer to its own concepts.

## Run the GUI and download answers

From the repository root:

```powershell
node runtime\server.cjs
```

The server uses the checked-in generated questionnaire by default. Open
`http://127.0.0.1:4173/`. If that port is occupied, set another port, for
example `$env:PORT='4197'`, before starting the server.

The GUI uses checkboxes for booleans, numeric controls for integer/decimal/money,
date controls for dates, and text inputs for strings. Computed questions update
as answers change; conditional groups follow their enclosing conditions.
**Download answers as JSON** saves a file containing the form name and typed
answers.

To serve a freshly generated MPS output instead of the checked-in copy:

```powershell
node runtime\server.cjs solutions\QuestionnaireExample\source_gen\QuestionnaireExample\BenefitSurvey.json
```

## Checks and limitations

Run the fixed runtime acceptance suite with:

```powershell
node benchmark\acceptance.cjs
```

The native `InvalidNativeFixtures` form is generated from MPS and exercises
duplicate IDs, unresolved IDs, invalid operand/result and condition types, and
dependency cycles in the production runtime:

```powershell
node benchmark\tools\validate-native-fixture.cjs
```

The production runtime validator reports all four required diagnostic codes.
The native MPS checker reports missing mandatory `Reference.target` links for
the fixture's unresolved references. It does not report duplicate-ID,
expression-type, condition-type, or dependency-cycle diagnostics; those are
runtime checks, not native editor-time type-system rules.

For a real browser check (Microsoft Edge on Windows), serve the fresh MPS
output in one terminal:

```powershell
$env:PORT='4197'
node runtime\server.cjs solutions\QuestionnaireExample\source_gen\QuestionnaireExample\BenefitSurvey.json
```

Then run the browser check in another terminal:

```powershell
$env:PORT='4197'
$env:QUESTIONNAIRE_PATH='solutions\QuestionnaireExample\source_gen\QuestionnaireExample\BenefitSurvey.json'
node benchmark\tools\browser-smoke.cjs
```

The browser check exercises typed controls, recomputation, nested visibility,
and the JSON download. Its downloaded answer file and result are retained under
`benchmark\evidence`.
