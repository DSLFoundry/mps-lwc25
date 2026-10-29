# QL: mops versus PAT

## Design and scope

One sequential, fresh-context implementation per tool: **mops first, PAT second**.
Both start at the exact same `benchmark/ql-scaffold` commit, use MPS 2026.1.1 and
the same dependency versions, instructions, and acceptance suite. The user
selected **120 active-work minutes per implementation**. Include reasoning,
tool discovery, implementation, builds, tests, and retries in that budget.
Exclude the shared scaffold setup, waiting for the user, and the final comparison.
Record UTC start/end and any excluded interruption explicitly. Stop coding at
the limit; preserve partial work and report what is missing.

Implement base QL from the [assignment](https://homepages.cwi.nl/~storm/Ql.pdf):
named forms, sequential questions with labels and declared types, computed
questions, and nested conditionals. Support boolean, string, integer, decimal,
money, and date values; boolean operators `&&`, `||`, `!`; all six comparisons;
and arithmetic `+`, `-`, `*`, `/`. Unanswered values are undefined, dependencies
on undefined remain undefined, and an undefined condition is not true. Provide
a usable typed GUI that recomputes values and visibility as answers change,
and save completed answers as a downloadable JSON file.

For equal scope, also require diagnostics for duplicate identifiers, unresolved
references, invalid operand/result/condition types, and dependency cycles.
QLS and SAT/determinism analysis are excluded. Do not claim that these exclusions
implement every optional extension in the assignment.

## Isolation and allowed tools

Use only the assigned provider for MPS model discovery, creation, mutation,
checking, and generation: mops CLI/Code Mode, or PAT's live MPS MCP interface.
Native MPS APIs invoked through that provider are allowed. Never hand-edit
serialized `.mps`, `.mpl`, `.msd`, or migration XML.
Shell, Git, ordinary source-file editing, browsers, and the existing Gradle
build are allowed equally. Ordinary JS/HTML/Java runtime source is allowed,
but a standalone runtime is not a substitute for an integrated MPS language.

Do not inspect Git history, other branches/worktrees, previous QL implementations,
historical paper walkthroughs, or the other run's output. No copying old QL
roots, generated code, or solution-specific scripts. Existing third-party
libraries, provider help/skills, MPS documentation, and general reusable guidance
are allowed. Do not consult solution-specific prior conversation context.
Record the agent/model identifier if exposed; otherwise mark it unavailable.
Do not infer a concrete model from Auto mode.

The coordinator prepares tools and a working build before each run. Tool
discovery and project-specific usage after the start count toward run time.
Do not improve shared instructions or the suite between runs. Write reusable
lessons back only after both runs, to avoid contaminating the second run.

## Shared executable acceptance contract

Run `node benchmark\acceptance.cjs` from the implementation checkout. Node's
standard library is sufficient. The runner is fixed on the scaffold branch;
do not modify it or its expectations.

Supply `benchmark/adapter.cjs` exporting `create(form)` and `validate(form)`.
`create` returns a synchronous runtime with `set(id, value)`, `get(id)`,
`visible(id)`, and `exportAnswers()`. The last returns an object whose `answers`
is keyed by identifier. Missing values may be `undefined` or `null`.
`validate` returns diagnostic objects with a `code` field: `duplicate`,
`unresolved`, `type`, or `cycle`.

The neutral test form has `name` and `items`. Question items have `id`, `label`,
`type`, and optional `computed`; conditional items have `condition` and `items`.
Expressions are `{literal: value}`, `{ref: id}`, or `{op, args: [...]}`.
An adapter may translate these shapes to the production runtime's representation,
but must delegate evaluation and validation to production code: no test-only
evaluator, validator, expected answers, or per-case special handling.

Separately demonstrate the **native MPS model -> generation -> production
runtime/GUI** path with a committed questionnaire example and reproducible
commands. The suite's runtime score alone does not establish that integration.
Commit any generation/build scripts needed to reproduce this path.

## Quality gates and manual acceptance

Record each as pass, fail, or unverified with an evidence path or exact command:

| ID | Criterion |
|---|---|
| G1 | Native MPS concepts and working projectional editors for all QL constructs |
| G2 | Provider model checks, including invalid fixtures with expected diagnostics |
| G3 | Strict generation/compilation succeeds from the authored native models |
| G4 | Native example generates an executable questionnaire, not a copied static form |
| G5 | Real GUI has typed controls, live computed values, and nested visibility |
| G6 | Browser download produces parseable JSON containing the completed answers |
| G7 | README explains authoring, generation, execution, and JSON saving |
| G8 | Fixed runtime suite passes; report each case, not just a percentage |

Use automated browser evidence where practical. Do not mark GUI or download
behavior passed from reading source alone. Do not mark G2 passed merely because
the runtime validator works. Report warnings separately from errors.
No repository CI normalization/dirty-files gate was found in the tracked
GitHub/TeamCity configuration during scaffold preparation; do not import a gate
from another repository. Model checks and build evidence are still required.

## Measurements and result files

Each implementation branch must contain `BENCHMARK-RESULTS.md`, including:

* scaffold SHA, branch, implementation commit, tool/MPS/Java/dependency versions;
* UTC start/end, interruption accounting, active elapsed minutes, time to first
  successful model check/build/runtime-suite pass, and time-cap status;
* tool-call counts, failed calls, retries, model-mutation operations/batches,
  builds/checks/tests, and recovery interventions, using retained logs;
* request/token/cost measurements if actually exposed for that isolated run;
  otherwise `unavailable`, never the parent session total or an estimate;
* runtime cases passed/failed/untested and all eight gates with evidence;
* authored native root/node counts, changed files, diff size, and test count;
* known defects, incomplete requirements, and reproducible user instructions.

Keep timestamped operation evidence in `benchmark/evidence`. Counts from an
agent-maintained operation log are self-reported, not independently captured
harness totals: label that distinction. Report missing instrumentation honestly.
The coordinator adds separately captured agent/tool telemetry when available.

Compare correctness/completeness first, then time, reliability, interaction
cost, and implementation size. A smaller incomplete implementation is not
automatically better. If a run never reaches a milestone, report it as
not reached within the budget rather than assigning a fictitious completion time.
One run per tool, fixed order, shared machine, different IDE/headless execution,
cache effects, Auto-model selection, and self-reported metrics are confounders.
Conclusions are a case study, not a statistically established tool ranking.
