# QL mops benchmark results

## Run identity and budget

- Scaffold: `ebb9a686670577120e0a228a79a3afb33cbc5de2`
- Branch: `benchmark/ql-mops` (no branch switch or push)
- Original implementation: `a5ad875e5893548b9e4061831009521feb2e06a0`
- Initial results freeze: `52cb89e46554ca3eab927de42a12de8ff5915301`
- Resumed implementation: `735a1efd0f5ffaf0cb543a22886dd442c2449ed8`
- Original start: `2026-10-29T18:59:09.113Z`
- Start + 120 minutes: `2026-10-29T20:59:09.113Z`
- Later coordinator stop instruction: `2026-10-29T20:59:00Z` (applied as the earlier hard stop)
- Active-work end: `2026-10-29T20:11:12.361Z`
- Wall-clock elapsed from original start: `1h 12m 3.248s`
- Interruptions excluded: none. The coordinator review interval
  `19:33:09.530Z`–`19:35:25.299Z` counted against the original budget.
  Work resumed on the same branch at `19:35:25.299Z`.

The initial results commit explicitly recorded G3 as failed. That failed
attempt remains available in commit `52cb89e`; resumed work then implemented
and verified native template generation and was committed separately. No new
budget was granted.

Versions: mops `0.4.0-SNAPSHOT`; MPS `2026.1.1`; bundled Java
`25.0.3+1-329.124-jcef`; Node `v24.14.1`; IETS3 Open Source
`2026.1.11424.a53a9bd`; configured MPS Gradle plugin `1.11.+`.
Model/agent identifier, tokens, and cost are unavailable from run
instrumentation and are not inferred.

## Operation accounting

`benchmark/evidence/operations.log` is self-reported rather than harness
telemetry. At report preparation it contains 113 timestamped entries and 97
explicit operation rows. Logged `calls:` fields sum to 39, but are incomplete
and are not an exact tool-call or provider-operation count. No automatic
provider-call count was exposed. All QL MPS model discovery, mutation,
checking, making, generation, and runtime model access used mops; serialized
`.mps`/`.mpl` persistence was not hand-edited.

## Implementation and verification

The implementation provides native QL concepts and projectional editors,
valid and invalid native examples, an editor-time conditional type rule, an
MPS root-mapping template, a mops Code Mode native-model exporter/checker, a
production JavaScript runtime, a browser UI/server, and reproducible evidence.
Native model counts obtained through mops are:

| Model | Roots | Nodes |
|---|---:|---:|
| `QuestionnaireLanguage.structure` | 5 | 14 |
| `QuestionnaireLanguage.editor` | 4 | 26 |
| `QuestionnaireLanguage.typesystem` | 1 | 38 |
| `QuestionnaireLanguage.generator.templates@generator` | 2 | 12 |
| `Sandbox.QLBasic` | 1 | 13 |
| `Sandbox.QLInvalid` | 1 | 14 |
| **Total** | **14** | **117** |

`Question.computed` is now optional single-valued, with the editor using a
single-reference cell. The native typesystem rule checks a direct
`QuestionReference` used as a conditional condition and requires its resolved
target to be boolean. It guards unresolved links; a prior probe confirmed an
unresolved reference does not produce a duplicate type-rule error.

The native generator contains a root-mapping rule and BaseLanguage template.
MPS make generated and compiled Java source and bytecode for both Sandbox QL
models. `benchmark/evidence/native-generation.json` records four generated
files and successful runtime loading of both generated classes. The template's
output is a static generation smoke target, not a serializer of questionnaire
data; the separate Code Mode exporter is the executable runtime-data path.

The valid native example exports to `benchmark/generated-form.json`. The
reproducible `benchmark/verify-native-runtime.cjs` sends that output through
the production adapter/runtime: validation is clean and its computed question
evaluates to `5`. The result is recorded in
`benchmark/evidence/native-runtime.json`.

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
.\gradlew.bat --console=plain buildQuestionnaireLanguage -x resolveMps -x resolveMpsArtifacts --project-cache-dir build\gradle-cache
```

Mops make and checks passed for the language structure, editor, typesystem,
generator template, and valid sample. The generator model emitted one
informational recommendation about a BaseLanguage type and no errors. The
invalid example intentionally exits nonzero. The Gradle build emitted
third-party class-loading and Java restricted-access warnings, but no build
errors.

The original real Edge browser run exercised typed controls, computed values,
nested visibility, and JSON download. Its script, screenshot, and parsed
download remain in `benchmark/evidence/browser-check.mjs`, `gui.png`, and
`gui-download.json`. Browser evidence was not rerun during the resumed
model-only changes; no runtime/UI code changed in that segment.

## Acceptance gates

| Gate | Result | Evidence / qualification |
|---|---|---|
| G1 native concepts and projectional editors | **Pass** | mops checks; 5 structure roots and 4 editor roots. Expressions use imported IETS3 editors. |
| G2 provider checks and invalid diagnostics | **Pass, with limitation** | Native editor-time rule plus IETS3 produce two invalid-model errors; Code Mode checker reports five findings. Extended duplicate, computed-result, and cycle checks remain Code Mode checks. |
| G3 strict native MPS generation/compilation | **Pass, smoke-target scope** | MPS make produces and compiles source and bytecode from both native QL model roots. The template does not serialize QL data; see G4 for the runtime-data path. |
| G4 native example to executable questionnaire | **Pass** | Native `QLBasic` → mops exporter → generated JSON → production adapter/runtime; computed result `5`. Browser also consumed the generated example. |
| G5 actual GUI behavior | **Pass** | Real Edge run documented in `browser-check.mjs`; screenshot `gui.png`. |
| G6 downloadable JSON answers | **Pass** | Browser-generated parseable JSON in `gui-download.json`; 7 answer entries. |
| G7 README authoring/build/run/download instructions | **Pass** | `README.md`, including native make and JSON download steps. |
| G8 fixed runtime suite | **Pass, 20/20** | Unmodified `benchmark/acceptance.cjs`; complete results in `acceptance.json`. |

## Limitations and change size

- The native editor-time rule covers direct question references in conditional
  conditions. Other expression typing is supplied by IETS3; duplicate
  identifiers, computed-result matching, and cycles are checked by the
  Code Mode semantic checker rather than native typesystem rules.
- The native MPS generator is a compiled root-mapping/template smoke target;
  runtime JSON export is implemented separately by the native-model Code Mode
  exporter.
- Money values are numeric amounts without currency metadata or formatting.
- The resumed implementation commit `735a1efd` changes 15 files with 424 text
  insertions and 37 deletions. The initial commits remain unchanged.

## Final evidence freeze

The earlier G3 failure, resumed implementation, and final report are preserved
in separate commits. The implementation is committed on `benchmark/ql-mops`;
no amend, push, or branch switch was performed. The final report/evidence
commit follows this content freeze.
