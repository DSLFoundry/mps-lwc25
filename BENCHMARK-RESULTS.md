# PAT QL implementation results

## Run metadata

- Scaffold: `ebb9a686670577120e0a228a79a3afb33cbc5de2`
- Branch: `benchmark/ql-pat`
- Scope: base QL only; QLS and SAT/determinism extensions are excluded.
- Source/evidence implementation commit: `728f626338b55566fb836297171d6f683c1c56db`
- Provider: PAT MCP; MPS native model discovery, edits, checks, and generation used PAT. No mops calls were used.
- Exact PAT MCP version: not exposed.
- MPS: 2026.1.1; Java: bundled JBR 25.0.3; Gradle wrapper: 8.7; Node: v24.14.1.
- Declared dependencies: `com.jetbrains:mps:2026.1.1`, `org.iets3:opensource:2026.1.11424.a53a9bd`, `org.apache.ant:ant-junit:1.10.11`, and `de.itemis.mps:mps-gradle-plugin:1.11.+` (dynamic version declared; exact resolution not captured).
- Agent model: Auto; no concrete runtime model identifier was exposed.
- Start: `2026-10-29T20:54:19.646Z`
- End: `2026-10-29T22:53:30Z` (final report commit timestamp).
- Active elapsed: **119 minutes, 10.354 seconds (119.17 minutes)** of 120. No user interruption or excluded wait; the run ended 49.646 seconds before the cap.

## Milestones

| Milestone | First successful UTC | Active time from start | Evidence |
|---|---:|---:|---|
| PAT model check (TextGen and example clean) | 2026-10-29T21:10:18.731640Z | 15m 59.1s | `benchmark/evidence/pat-native-checks-initial.json` |
| First PAT Make operation (example, runtime ready) | 2026-10-29T21:10:51.489882Z | 16m 31.8s | `benchmark/evidence/pat-example-make.json` |
| First successful non-empty native example generation | 2026-10-29T21:26:08.786709Z | 31m 49.1s | `benchmark/evidence/pat-native-generation-fixed.json` |
| First successful Gradle `buildQuestionnaireLanguage` | 2026-10-29T21:30:10Z | 35m 50.4s | `benchmark/evidence/gradle-build-bootstrap.log` |
| Fixed runtime acceptance suite | 2026-10-29T21:45:52.476Z | 51m 32.8s | `benchmark/evidence/acceptance-final.log`, `acceptance.json` |
| Final Gradle build after metadata normalization | 2026-10-29T22:29:33Z | — | `benchmark/evidence/gradle-final-post-native-metadata.log` |
| Final Gradle build after fixture regeneration | 2026-10-29T22:42:05.882Z | — | `benchmark/evidence/gradle-after-final-fixture.log` |
| Final Edge browser/download smoke | 2026-10-29T22:42:29.925Z | — | `benchmark/evidence/browser-smoke.json` |
| Final generated invalid fixture validation | 2026-10-29T22:42:39.408Z | — | `benchmark/evidence/runtime-invalid-native-fixture.json` |
| Final fixed acceptance suite | 2026-10-29T22:42:39.494Z | — | `benchmark/evidence/acceptance.json` |

## Outcome and quality gates

| Gate | Result | Evidence and notes |
|---|---|---|
| G1 Native concepts and projectional editors | **PASS** | `pat-editor-live-construct-checks-final.json`: Form, Question, Calculated, Branch, Binary, Reference, Literal, and Unary editors opened without messages. |
| G2 Provider checks and invalid-fixture diagnostics | **FAIL (partial)** | Valid language/example/build models check clean. PAT reports two missing obligatory `Reference.target` links in the invalid fixture (`pat-invalid-fixture-post-missing-target-check-data.json`). It does **not** diagnose duplicate IDs, expression/condition typing, or cycles; those remain production-runtime diagnostics. Do not treat runtime validation as native MPS checking. |
| G3 Native generation/build | **PASS** | PAT Make regenerated the native example successfully (`pat-example-make-final-invalid-reference.json`); final Gradle `buildQuestionnaireLanguage` succeeded after fixture regeneration (`gradle-after-final-fixture.log`). |
| G4 Native example to executable output | **PASS** | MPS TextGen output is `solutions/QuestionnaireExample/source_gen/QuestionnaireExample/BenefitSurvey.json`; checked-in `generated` copy has the same SHA-256. PAT Make also generated `InvalidNativeFixtures.json`. |
| G5 Typed GUI, live computation, nested visibility | **PASS** | Real Microsoft Edge headless smoke: `benchmark/evidence/browser-smoke.json`. |
| G6 Downloadable JSON answers | **PASS** | Browser downloaded and parsed `benchmark/evidence/browser-downloads/BenefitSurvey-answers.json`, including typed answers. |
| G7 User documentation | **PASS** | `README.md` documents authoring, Make/generation, build, execution, and answer download. |
| G8 Fixed acceptance suite | **PASS** | Unmodified `node benchmark\acceptance.cjs`: **20/20 passed**, final run 2026-10-29T22:42:39.494Z; detailed results in `benchmark/evidence/acceptance.json`. |

### Acceptance cases

All cases passed:

1. All six question types preserve typed answers.
2. Unanswered values stay undefined.
3. Computed dependencies propagate undefined.
4. Arithmetic operators produce expected values.
5. All comparison operators work for true and false cases.
6. Boolean operators evaluate both truth outcomes.
7. Undefined remains undefined through boolean expressions.
8. Computed values update transitively.
9. Forward references compute independently of display order.
10. Undefined and false conditions hide questions.
11. Nested visibility requires every enclosing condition.
12. Date and string comparisons preserve their value domains.
13. JSON export contains form identity and typed answers.
14. Valid form has no diagnostics.
15. Duplicate identifiers are diagnosed across nested groups.
16. Unresolved references are diagnosed.
17. Nonboolean conditions are diagnosed.
18. Incompatible computed result types are diagnosed.
19. Invalid arithmetic and boolean operands are diagnosed.
20. Direct and indirect cycles are diagnosed.

The generated invalid fixture's production validator reports all required codes: `cycle`, `duplicate`, `type`, and `unresolved` (`runtime-invalid-native-fixture.json`). Native MPS checking currently catches the missing mandatory reference links only; the remaining semantic checks are runtime-only.

## Implementation and measurements

The authored language contains Form, Question, Calculated, Branch, Literal, Reference, Binary, and Unary concepts, projectional editors, and native TextGen rules. The example exercises typed questions, a computed arithmetic value, unary negation, and a nested conditional. The runtime implements the fixed adapter contract and drives the browser GUI; the adapter delegates to production runtime code.

PAT's final inventory was 31 roots / 391 nodes at 22:30 (`pat-inventory-final2.json`). Two additional PAT-created nodes (Calculated plus Reference) were added to the invalid fixture at 22:33, giving **31 roots / 393 nodes** at completion. The source/evidence commit changed 280 files: 90,925 insertions and 30 deletions. It includes 262 evidence files; final checks added one evidence file (263 total, about 5.47 MB). The follow-up results commit adds the report and final Gradle log, for 282 distinct changed paths across the run. Timestamped operation chronology is in `benchmark/evidence/operations.log`. Two oversized exploratory response dumps were pruned and their removal recorded there.

Provider telemetry is self-reported, not an independent harness count: approximately 308 PAT calls inferred during the run from timestamped records and inventory/editor/schema evidence; 23 error responses; approximately 68 model-mutation requests (56 successful non-dry-run, 8 dry-run, 4 failed). Three explicit retries are recorded after 21:54Z; earlier retry incidents were not separately instrumented. Exact tool-call and retry totals are unavailable. Token and cost data were not exposed. The operation log and retained failure/recovery evidence are in `benchmark/evidence/`.

Eight Gradle invocations are retained: four successful and four failed. Failures during bootstrap/dependency setup were recovered by PAT changes to native build metadata; the final build succeeded after the final fixture regeneration. PAT Make and project/model checks were repeated during development; their exact aggregate invocation count was not independently instrumented. The unchanged acceptance suite passed 20 tests on the final run. The final browser evidence records a passing end-to-end run against freshly generated MPS output.

### Warnings and limitations

- G2 is the substantial remaining limitation: MPS model checks do not provide the full semantic diagnostics required for duplicates, expression/condition types, and cycles.
- Gradle/MPS output contained Java restricted-native-access and third-party classloading/bootstrap warnings, but the final build completed successfully. PAT `build_project` also noted limited diagnostic collection; separate model checks and Gradle evidence are retained.
- `git diff --check` flags extra trailing blank lines in three PAT-serialized `.mps`/`.msd` files. No serialized MPS persistence was hand-edited; non-persistence whitespace checks passed.
- No applicable CI dirty-files/normalization gate was found in the frozen benchmark scope.

## Reproduction

1. Open the project in MPS 2026.1.1; Make the `QuestionnaireLanguage` module, then Make the `QuestionnaireExample` model. Use the `source_gen` `BenefitSurvey.json` as fresh output.
2. With bundled Java 25, run:

   ```powershell
   $env:JAVA_HOME = 'C:\Program Files\JetBrains\MPS 2026.1.1\jbr'
   .\gradlew.bat --console=plain buildQuestionnaireLanguage `
     -x resolveMps -x resolveMpsArtifacts --project-cache-dir build\gradle-cache
   ```

3. Run the fixed suite and invalid-fixture runtime check:

   ```powershell
   node benchmark\acceptance.cjs
   node benchmark\tools\validate-native-fixture.cjs
   ```

4. Start the GUI with either the checked-in generated questionnaire or fresh MPS output:

   ```powershell
   node runtime\server.cjs
   node runtime\server.cjs solutions\QuestionnaireExample\source_gen\QuestionnaireExample\BenefitSurvey.json
   ```

   Open `http://127.0.0.1:4173/`, fill the typed controls, and choose **Download answers as JSON**. The download contains the form identity and typed answers.
