# QL mops benchmark results

## Run identity and budget

- Scaffold: `ebb9a686670577120e0a228a79a3afb33cbc5de2`
- Branch: `benchmark/ql-mops` (no branch switch or push)
- Original implementation: `a5ad875e5893548b9e4061831009521feb2e06a0`
- Initial results freeze: `52cb89e46554ca3eab927de42a12de8ff5915301`
- Resumed implementation: `735a1efd0f5ffaf0cb543a22886dd442c2449ed8`
- Integrated native generator and evidence: `97631651d4c1f303dc801cc5fd7e3ba96b2282ec`
- Serializer model-check repair: `1a7ae22cfac473e2ef79f48927e13f8c755a4eab`
- Original start: `2026-10-29T18:59:09.113Z`
- Start + 120 minutes: `2026-10-29T20:59:09.113Z`
- Later coordinator stop instruction: `2026-10-29T20:59:00Z` (applied as the earlier hard stop)
- Implementation/evidence freeze: `2026-10-29T20:51:50Z`
- Final active-work/report freeze: `2026-10-29T20:51:54.391Z`
- Wall-clock elapsed from original start: `1h 52m 45.278s`
- Interruptions excluded: none. The coordinator review interval
  `19:33:09.530Z`–`19:35:25.299Z` counted against the original budget.
  Work resumed on the same branch at `19:35:25.299Z`.
  The second review interval `20:11:12.361Z`–`20:14:18.082Z` also counted
  against the original budget; no extension was granted.

The initial results commit explicitly recorded G3 as failed. That failed
attempt remains available in commit `52cb89e`; resumed work then implemented
and verified native template generation and was committed separately. No new
budget was granted.

Versions: mops `0.4.0-SNAPSHOT`; MPS `2026.1.1`; bundled Java
`25.0.3+1-329.124-jcef`; Node `v24.14.1`; IETS3 Open Source
`2026.1.11424.a53a9bd`; configured MPS Gradle plugin `1.11.+`.
Model/agent identifier, tokens, and cost are unavailable from run
instrumentation and are not inferred.

### Coordinator-captured harness telemetry

After freezing implementation at `d3cbd8c`, the coordinator extracted the
local CLI ledger by exact agent ID (not the parent session total). See
`benchmark/evidence/harness-telemetry.json`: **487 model requests, 571 tool
calls, 7 transport-level failures, 49,334,490 input tokens, 406,139 output
tokens, 48,424,082 cache-read tokens, and 79.3064 AIU**. Cache counters retain
ledger semantics and are not assumed disjoint. AIU is not a monetary price.
Tool-call success does not imply the contained shell command succeeded.
Provider operations batched within shell calls are not independently counted.
The complete agent-event span is **113.699 minutes**, including final reporting
and coordinator follow-up intervals; the shorter content-freeze time above is
not the complete harness span. Auto selection was used, without a model override.
Three coordinator implementation follow-ups were needed after premature
completion reports, plus one final request to resolve model-check errors.

Coordinator reruns after the freeze independently reproduced 20/20 runtime
cases, computed native output `5`, questionnaire-specific generated Java JSON,
and serializer model checking with 0 errors, 5 warnings and 11 infos.
These verification operations are outside the timed implementation and the
agent-attributed counters. No implementation was repaired after the freeze.

## Operation accounting

`benchmark/evidence/operations.log` is self-reported rather than harness
telemetry. At the resumed-generator follow-up it contains timestamped
implementation and validation entries. Logged `calls:` fields sum to 39, but
are incomplete and are not an exact tool-call or provider-operation count.
The final resumed validation operations are timestamped separately without
claiming a complete call count. The serializer model-check repair and
validation are separately timestamped. No automatic provider-call count was
exposed.
All QL MPS model discovery, mutation, checking, making, generation, and runtime
model access used mops; serialized `.mps`/`.mpl` persistence was not hand-edited.

## Implementation and verification

The implementation provides native QL concepts and projectional editors,
valid and invalid native examples, an editor-time conditional type rule, an
MPS root-mapping template and compiled serializer, a production JavaScript
runtime, a browser UI/server, and reproducible evidence.
Native model counts obtained through mops are:

| Model | Roots | Nodes |
|---|---:|---:|
| `QuestionnaireLanguage.structure` | 5 | 14 |
| `QuestionnaireLanguage.editor` | 4 | 26 |
| `QuestionnaireLanguage.typesystem` | 1 | 38 |
| `QuestionnaireLanguage.generator.templates@generator` | 2 | 24 |
| `QuestionnaireLanguage.generator.util` | 1 | 732 |
| `Sandbox.QLBasic` | 1 | 13 |
| `Sandbox.QLInvalid` | 1 | 14 |
| **Total** | **15** | **861** |

`Question.computed` is now optional single-valued, with the editor using a
single-reference cell. The native typesystem rule checks a direct
`QuestionReference` used as a conditional condition and requires its resolved
target to be boolean. It guards unresolved links; a prior probe confirmed an
unresolved reference does not produce a duplicate type-rule error.

The native generator contains a root-mapping rule, a BaseLanguage output
template, and a compiled serializer utility. Its property macro contains a
native static method reference to the serializer, passing the input
`Questionnaire` node; it walks questions, conditionals, links, literal nodes,
and operator trees and returns JSON. Both native sample roots generate
compiled Java classes exposing the corresponding complete questionnaire JSON.
`benchmark/generate.groovy` only extracts JSON from the generated class; it no
longer walks or serializes the source model.

The resulting `benchmark/generated-form.json` is fetched by the production
browser UI and consumed by the production runtime. `benchmark/evidence` records
the actual generated data. Mutation tests changed a native question label and
a native computed literal, reran MPS make and proved the generated JSON
changed; the runtime result changed from `5` to `14` for the expression probe.
Both native edits were then restored through mops and generation rerun. The
final example validates with no diagnostics and computes to `5`.

The unchanged fixed runner `node benchmark\acceptance.cjs` passed **20/20**;
per-case results are in `benchmark/evidence/acceptance.json`. The mops
Code Mode semantic checker reports zero findings for `Sandbox.QLBasic` and
five for `Sandbox.QLInvalid`: duplicate identifier, non-boolean condition,
invalid arithmetic operands, computed result type mismatch, and dependency
cycle. The native MPS check of the invalid model reports the conditional
boolean-reference rule violation and IETS3's boolean-plus-number error.
Machine-readable MPS diagnostics are in
`benchmark/evidence/native-invalid-check.final.jsonl`.

The targeted Gradle language build passed:

```powershell
.\gradlew.bat --console=plain buildQuestionnaireLanguage -x resolveMps -x resolveMpsArtifacts --project-cache-dir build\benchmark-gradle-cache
```

Mops make succeeded for the generator module and Sandbox. Checks returned no
findings for the structure, editor, typesystem, valid sample, and serializer
utility; the generator template had 0 errors and 2 informational BaseLanguage
type recommendations. The serializer utility reports 0 errors, 5 warnings,
and 11 infos. Its former 51 method-resolution/signature errors came from
incorrect method references to Java stub overloads (`StringBuilder.append`,
`ArrayList` construction, and `SNode.getChildren`); these references were
retargeted through mops to matching overload declarations. Remaining warnings
include deprecated OpenAPI methods and a possible null dereference; the full
diagnostic set is in `benchmark/evidence/native-generator-check.json`. The
invalid example intentionally exits nonzero with expected diagnostics. The
Gradle build emitted third-party class-loading and Java restricted-access
warnings, but no build errors.

The actual Edge browser script was rerun against the output extracted from the
native-generated Java class. It exercised typed controls, computed values,
nested visibility, and JSON download; current artifacts are
`benchmark/evidence/browser-check.mjs`, `gui.png`, and `gui-download.json`.

The integrated generator/evidence commit changed 11 files (2,328 insertions,
129 deletions), including the new native serializer model. Earlier
implementation, failed-G3, and results commits remain separate and unchanged.

## Acceptance gates

| Gate | Result | Evidence / qualification |
|---|---|---|
| G1 native concepts and projectional editors | **Pass** | mops checks; 5 structure roots and 4 editor roots. Expressions use imported IETS3 editors. |
| G2 provider checks and invalid diagnostics | **Partial** | Native conditional-reference rule plus IETS3 produce two invalid-model errors; Code Mode checker reports five findings. Duplicate identifiers, computed-result matching, and cycles remain outside editor-time MPS rules. |
| G3 strict native MPS generation/compilation | **Pass, with warnings** | Native root mapping serializes questionnaire-specific items, nested conditions, properties, and expression nodes into generated Java JSON. Both native sample models have generated Java source/bytecode and parsed JSON. Serializer model check is 0 errors, 5 warnings, 11 infos. |
| G4 native example to executable questionnaire | **Pass** | Native `QLBasic` → native MPS generator → generated Java JSON → extraction-only bridge → production runtime/UI; computed result `5`. Label and expression model edits visibly changed generated output. |
| G5 actual GUI behavior | **Pass** | Real Edge run documented in `browser-check.mjs`; screenshot `gui.png`. |
| G6 downloadable JSON answers | **Pass** | Browser-generated parseable JSON in `gui-download.json`; 7 answer entries. |
| G7 README authoring/build/run/download instructions | **Pass** | `README.md`, including native make and JSON download steps. |
| G8 fixed runtime suite | **Pass, 20/20** | Unmodified `benchmark/acceptance.cjs`; complete results in `acceptance.json`. |

## Limitations and change size

- The native editor-time rule covers direct question references in conditional
  conditions. Other expression typing is supplied by IETS3; duplicate
  identifiers, computed-result matching, and cycles are checked by the
  mops Code Mode semantic checker rather than native editor-time typesystem
  rules. This resumed run did not add further editor-time rules for those
  cross-question/global checks.
- G2 is not full native editor-time semantic coverage: duplicate identifiers,
  computed-result compatibility, and dependency cycles remain Code Mode
  diagnostics, not native MPS typesystem rules. This report does not claim the
  full assignment is complete.
- The serializer utility's previous BaseLanguage check errors were resolved by
  correcting overload references through mops. Its remaining five warnings
  include deprecated OpenAPI calls and a possible null dereference; they are
  disclosed rather than suppressed.
- Money values are numeric amounts without currency metadata or formatting.
- Earlier implementation commits remain unchanged. The integrated generator
  and serializer model-check repair are focused follow-up commits.

## Final evidence freeze

The earlier G3 failure, resumed implementation, integrated native generator,
and serializer model-check repair are preserved in separate commits. The
implementation remains on `benchmark/ql-mops`; no amend, push, or branch
switch was performed. The final results-document commit records this freeze;
no work exceeded the original hard stop. G2 remains explicitly partial as
global semantic diagnostics are not editor-time native rules; this is not
reported as a complete assignment.

## Untimed native-semantic completion follow-up

This addendum records the separately authorized completion work; it does not
rewrite or retroactively rescore the frozen timed benchmark above. The
follow-up started at `2026-10-30T01:51:54.0035475Z` from coordinator revision
`e8b4929` and implementation/validation/evidence capture ended at
`2026-10-30T02:25:16.7866924Z` (33m 22.783s elapsed). A report-only commit
followed. Implementation is committed as
`5fe6e56d8deb5c379f9201b21d721526cb162771`. No push, branch switch, amend, or
delegation was performed. The original G2 score remains **Partial** in the
frozen section; this addendum records the later native-check completion.

`QuestionnaireLanguage.typesystem` now has a native `NonTypesystemRule`
applicable to `Questionnaire`. Its rendered rule explicitly says “do not apply
on the fly false” and invokes the compiled BaseLanguage helper in the new
`QuestionnaireLanguage.checks` model. The helper traverses nested questionnaire
nodes and checks duplicate question IDs, unresolved/out-of-form references,
recursive boolean-condition typing, expression operand types, declared
computed-result compatibility, and dependency cycles. The prior direct
conditional-reference rule remains in place. These are native MPS diagnostics
reported by `mops check model`, not Code Mode/JavaScript-only validation.

Native fixtures include:

- `Sandbox.QLBasic`, clean with a nested valid `LogicalAndExpression`.
- `Sandbox.QLInvalid`, with a duplicate ID occurring only between a top-level
  question and a nested question, an out-of-form link, a nested invalid
  boolean condition, incompatible expression operands, computed type errors,
  and cycles.
- `Sandbox.QLNativeBooleanCondition` and
  `Sandbox.QLNativeComputedMismatch`, isolating a non-boolean complex condition
  and a type-valid numeric expression declared as a string result.
- `Sandbox.QLNativeDirectCycle` and `Sandbox.QLNativeIndirectCycle`, isolating
  each cycle form. These diagnostic-only models are marked non-generatable so
  they do not add duplicate generated Java units.

`node benchmark\\native-checks.cjs` runs the MPS model checker against these
fixtures. It asserts that the valid model is clean, all six `QL-DIAG-*`
categories appear in the invalid fixture, and the isolated complex-condition,
computed-mismatch, direct-cycle, and indirect-cycle models each report their
expected category. It passed. The captured invalid-model output contains
`DUPLICATE`, `UNRESOLVED`, `CONDITION`, `OPERAND`, `COMPUTED`, and `CYCLE`;
the distinct direct/indirect models each produce a native cycle error.

Validation also passed:

- Mops make for `QuestionnaireLanguage`, its generator, and `Sandbox`; no
  duplicate generated-unit warnings remain.
- Native model checks for the behavior aspect, typesystem, valid fixture, and
  helper model. The helper reports **0 errors, 7 deprecated-API warnings, and
  19 informational String-type recommendations**; its earlier possible-null
  warning was corrected.
- The isolated Gradle language build with dependency-resolution tasks excluded.
  Third-party class-loading/restricted-access warnings and Java deprecation
  notes remain, but the build succeeds.
- Native generator verification/extraction still yields the valid
  questionnaire-specific form and computed value `5`; the production runtime
  has no diagnostics. The unchanged `benchmark\\acceptance.cjs` passes **20/20**.
  The original browser/UI evidence is unchanged; production UI code was not
  modified in this follow-up.

Completion-specific command output, the rendered native rule, helper/type
model checks, invalid-category assertions, direct/indirect cycle checks,
isolated semantic fixtures, model counts, generated JSON, Gradle log, and
runtime-suite output are in `benchmark\\evidence\\completion`. The original
`benchmark\\evidence\\acceptance.json`,
`benchmark\\evidence\\native-runtime.json`, and
`benchmark\\generated-form.json` were restored unchanged after reruns.

Diagnostics currently attach the cross-question summary to the enclosing
`Questionnaire` root rather than pinpointing every offending descendant; the
MPS messages are category-specific but navigation is coarse. The helper also
retains the seven deprecated API warnings noted above. No broader QLS/SAT
scope is claimed. Provider/tool call counts for this follow-up were not
automatically exposed and are not inferred.

### Coordinator verification and separate follow-up telemetry

After the completion freeze at `6a2a2a0`, the coordinator independently reran
`node benchmark\native-checks.cjs` and the unchanged runtime suite. The native
assertions passed all six diagnostic categories, clean-valid-model checking,
isolated computed-result/complex-condition checking, and direct/indirect cycle
checks; the runtime suite passed **20/20**. Original evidence was preserved.

Exact agent-ID telemetry filtered to this follow-up records **167 model
requests, 193 tool calls, 1 transport-level failure, 18,787,627 input tokens,
106,016 output tokens, and 27.6085 AIU**. The complete follow-up agent-event
span, including reporting, is **34.560 minutes**. See
`benchmark\evidence\completion\harness-telemetry.json`.
These counters are independent of, and must not be added into or substituted
for, the original timed-run scores. Cache counters retain ledger semantics;
transport failures are not native validation failures; AIU is not a monetary
price. Coordinator verification and publishing are excluded from these counters.
