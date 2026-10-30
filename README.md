# Questionnaire Language (QL)

This MPS 2026.1.1 project contains a native QL language, a generated
questionnaire example, and a JavaScript runtime with a browser GUI.

## Language and example

The `QuestionnaireLanguage` module defines `Form`, `Question`, `Calculated`,
`Branch`, `Literal`, `Reference`, `Binary`, and `Unary` concepts with
projectional editors. A form contains ordered questions and nested branches.
Question value types are `boolean`, `string`, `integer`, `decimal`, `money`,
and `date`. The runtime supports `&&`, `||`, `!`, unary numeric negation,
comparisons, numeric arithmetic, and string concatenation; unanswered values
and dependent computations remain undefined.

The native `QuestionnaireExample` model contains the `BenefitSurvey`,
`ReferenceTargetForm`, and `InvalidNativeFixtures` forms. `BenefitSurvey`
exercises the GUI and nested conditions. The valid `ReferenceTargetForm`
exercises escaped string literals, string concatenation, unary numeric
negation, and integer division with a decimal result. `InvalidNativeFixtures`
exercises native diagnostics. MPS
text-generation rules produce JSON for all three forms, including:

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

The MPS `QuestionnaireLanguage.typesystem` aspect contains a native
`NonTypesystemRule` for `Form` nodes. Its model checker reports duplicate IDs
across nested groups, unresolved and out-of-form references, expression
operand/result and branch-condition type errors for each supported operator,
and direct or indirect calculation cycles. `InvalidNativeFixtures` includes
valid and invalid native examples for these cases; `BenefitSurvey` and
`ReferenceTargetForm` are checked as clean forms.

With the MPS project open and the PAT server running, verify the live native
model-check diagnostics and their fixture assertions with:

```powershell
python benchmark\tools\verify-native-diagnostics.py
```

This calls PAT's `mps_mcp_check_root_node_problems` API directly. It is separate
from the production runtime validator. The generated `InvalidNativeFixtures`
form is also checked against the production runtime with:

```powershell
node benchmark\tools\validate-native-fixture.cjs
node benchmark\tools\validate-native-generated-expressions.cjs
```

The production runtime validator reports the duplicate, unresolved-reference,
type, and cycle diagnostic codes. The string-literal check round-trips a value
containing quotes, a backslash, and a newline from native TextGen output through
the production runtime, along with string concatenation, unary negation, and
integer division's decimal result type.

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
