# QL mops benchmark results

## Run identity and environment

- Scaffold: `ebb9a686670577120e0a228a79a3afb33cbc5de2`
- Branch: `benchmark/ql-mops`
- Implementation commit: `a5ad875e5893548b9e4061831009521feb2e06a0`
- Results/evidence follow-up commit: separate finalization commit
- Active-work start: `2026-10-29T18:59:09.113Z`
- Absolute deadline: `2026-10-29T20:59:09.113Z`
- Active-work end: `2026-10-29T19:33:09.530Z`

- Interruptions excluded: none reported
- Time cap: completed within the 120-minute cap; active elapsed time was 34.007 minutes (34m 0.417s), with no interruptions.

- Versions: mops `0.4.0-SNAPSHOT`; MPS `2026.1.1`; bundled Java
  `25.0.3+1-329.124-jcef`; Node `v24.14.1`; IETS3 Open Source
  `2026.1.11424.a53a9bd`; configured MPS Gradle plugin `1.11.+`
- Agent/model identifier, tokens, and cost: unavailable from run instrumentation.
  Model selection was not independently exposed; no model or usage values are
  inferred.

## Milestones and operation accounting

All elapsed times below are measured from the recorded UTC start:

| Milestone | First successful UTC time | Elapsed |
|---|---:|---:|
| Native MPS structure model check | 19:05:15.963Z | 6m 06.850s |
| Fixed runtime suite | 19:07:38.183Z | 8m 29.070s |
| First successful mops language make | 19:09:50.597Z | 10m 41.484s |
| Targeted Gradle language build | 19:22:56.357Z | 23m 47.244s |

`benchmark/evidence/operations.log` is an agent-maintained, self-reported log,
not harness telemetry. At final accounting it contains 89 timestamped entries,
73 `operation` entries, 8 logged failed attempts, 6 retry preambles, 11 explicitly tagged native
mutation batches, and `calls:` fields summing to 39. The call fields are
incomplete: many compound operations omit them, and some discovery calls were
not logged. These are not exact tool/provider-call totals. MPS model mutations
were performed through mops; no serialized model file was hand-edited.

## Implementation and verification

The implementation adds native QL concepts/editors, valid and intentionally
invalid MPS examples, a mops Code Mode native-model exporter and semantic
checker, a production JavaScript runtime, a browser UI/server, a thin acceptance
adapter, user instructions, and execution evidence. A native MPS read-only
count through mops found 11 roots and 67 nodes across
`QuestionnaireLanguage.structure` (5/14), `QuestionnaireLanguage.editor`
(4/26), `Sandbox.QLBasic` (1/13), and `Sandbox.QLInvalid` (1/14).

The fixed, unchanged runner `node benchmark\acceptance.cjs` passed **20/20**.
`benchmark/evidence/acceptance.json` records all results:

| Runtime case | Result |
|---|---|
| all six question types preserve typed answers | pass |
| unanswered values stay undefined | pass |
| computed dependencies propagate undefined | pass |
| arithmetic operators produce expected values | pass |
| all comparison operators work for true and false cases | pass |
| boolean operators evaluate both truth outcomes | pass |
| undefined remains undefined through boolean expressions | pass |
| computed values update transitively | pass |
| forward references compute independently of display order | pass |
| undefined and false conditions hide questions | pass |
| nested visibility requires every enclosing condition | pass |
| date and string comparisons preserve their value domains | pass |
| JSON export contains form identity and typed answers | pass |
| valid form has no diagnostics | pass |
| duplicate identifiers are diagnosed across nested groups | pass |
| unresolved references are diagnosed | pass |
| nonboolean conditions are diagnosed | pass |
| incompatible computed result types are diagnosed | pass |
| invalid arithmetic and boolean operands are diagnosed | pass |
| direct and indirect cycles are diagnosed | pass |

Native checks succeeded for the structure, editor, and valid sample models.
The native MPS checker reports the expected two errors in the invalid fixture:
an obligatory question reference is absent and IETS3 rejects boolean-plus-number.
The separate mops Code Mode semantic checker reports six findings on that
fixture (duplicate, unresolved, three type errors, and a dependency cycle) and
none on the valid example. Raw MPS diagnostics are in
`benchmark/evidence/native-invalid-check.txt` and
`benchmark/evidence/native-invalid-check.final.jsonl`; semantic results are in
`benchmark/evidence/native-check.json`.

The targeted build passed:

```powershell
.\gradlew.bat --console=plain buildQuestionnaireLanguage -x resolveMps -x resolveMpsArtifacts --project-cache-dir build\gradle-cache
```

`mops make module QuestionnaireLanguage`, model checks, and native-model
export/check scripts also completed successfully. Build output included
third-party class-loading warnings but no build errors.

The example is read from the native MPS model by
`benchmark/generate.groovy` and exported to `benchmark/generated-form.json`;
the production UI consumes that generated output. An actual headless Edge
session exercised number, checkbox, text, decimal, and date controls, live
computed values, conditional visibility, and a downloaded, parsed answer JSON.
The final browser run output and artifacts are in
`benchmark/evidence/browser-check.mjs`, `gui.png`, and `gui-download.json`.

## Acceptance gates

| Gate | Result | Evidence / qualification |
|---|---|---|
| G1 native concepts and projectional editors | **Pass** | mops structure/editor checks; 5 concept roots and 4 editor roots. Expressions use the imported IETS3 editors. |
| G2 provider checks and invalid diagnostics | **Pass, with limitation** | Native checker: 2 errors; mops Code Mode semantic checker: 6 findings. The extended semantic rules are not editor-time MPS typesystem rules. |
| G3 strict native MPS generation/compilation | **Fail** | The MPS generator mapping configuration remains empty; no nonempty native MPS generator templates or generated MPS code were implemented. The targeted Gradle build and Code Mode JSON export do pass, but do not satisfy this gate. |
| G4 native example to executable questionnaire | **Pass** | `Sandbox.QLBasic` -> `benchmark/generate.groovy` -> `benchmark/generated-form.json` -> production runtime/UI. |
| G5 actual GUI behavior | **Pass** | Final real Edge test in `benchmark/evidence/browser-check.mjs`; screenshot `gui.png`. |
| G6 downloadable JSON answers | **Pass** | Browser-generated and parsed `benchmark/evidence/gui-download.json`. |
| G7 README authoring/build/run/download instructions | **Pass** | `README.md`. |
| G8 fixed runtime suite | **Pass, 20/20** | Unmodified `benchmark/acceptance.cjs`; per-case results in `benchmark/evidence/acceptance.json`. |

## Reproduction

From the checkout, follow `README.md`. Set `JAVA_HOME` to the bundled JBR,
run `.\build\mopsw.cmd make module QuestionnaireLanguage`, check
`QuestionnaireLanguage.structure`, `QuestionnaireLanguage.editor`, and
`Sandbox.QLBasic`, then run:

```powershell
.\build\mopsw.cmd code run benchmark\generate.groovy
.\build\mopsw.cmd code run benchmark\check-native.groovy
node benchmark\acceptance.cjs
node benchmark\serve.cjs
```

Open `http://127.0.0.1:4173/`, fill the questionnaire, and use **Download
answers as JSON**. Checking `Sandbox.QLInvalid` is intentionally expected to
exit nonzero; its native diagnostics are documented in the README.

## Limitations and change size

The `Question.computed` containment role is zero-or-more rather than optional
single-valued because the attempted native cardinality edit did not persist.
The exporter consumes its first expression; multiple computed expressions are
not a supported authoring pattern. The semantic checker is a mops Code Mode
script, not editor-time type checking. Money values are numeric amounts without
currency metadata/formatting. No native MPS generator templates were added.

The final staged change contains 24 files, 1,710 text insertions, 3 deletions,
and the 18,772-byte browser screenshot (the pre-report implementation changes
were 23 files, 1,557 insertions, and 3 deletions). `git diff --cached --check`
noted trailing
whitespace in generated `native-check.json` and a final blank line in the
newly serialized invalid MPS model. The JSON whitespace was normalized; the
MPS serialization was left to the native MPS/mops writer rather than edited
manually.

## Final evidence freeze

The implementation commit is `a5ad875e5893548b9e4061831009521feb2e06a0`. This report's end timestamp is the UTC content-freeze time; the final evidence commit was created immediately afterward. No branch switch, push, or amend was performed.
