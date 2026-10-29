# QL agentic-coding case study: mops versus PAT

## Result

**Both implementations pass the fixed 20-case runtime suite and demonstrate
native MPS generation, a working browser GUI, and downloadable JSON answers.
Neither completes the required native semantic diagnostics.**
In this pair of runs, mops used less time and fewer measured interactions/AIU;
PAT produced a smaller implementation and broader purpose-built projectional
syntax. This is not a general ranking of the tools.

| Artifact | Branch / report |
|---|---|
| Common MPS 2026.1.1 scaffold and frozen protocol | [`benchmark/ql-scaffold`](https://github.com/DSLFoundry/mps-lwc25/tree/benchmark/ql-scaffold), [`BENCHMARK.md`](https://github.com/DSLFoundry/mps-lwc25/blob/benchmark/ql-scaffold/BENCHMARK.md) |
| mops implementation and evidence | [`benchmark/ql-mops`](https://github.com/DSLFoundry/mps-lwc25/tree/benchmark/ql-mops), [`BENCHMARK-RESULTS.md`](https://github.com/DSLFoundry/mps-lwc25/blob/benchmark/ql-mops/BENCHMARK-RESULTS.md) |
| PAT implementation and evidence | [`benchmark/ql-pat`](https://github.com/DSLFoundry/mps-lwc25/tree/benchmark/ql-pat), [`BENCHMARK-RESULTS.md`](https://github.com/DSLFoundry/mps-lwc25/blob/benchmark/ql-pat/BENCHMARK-RESULTS.md) |

Both began from **`ebb9a686670577120e0a228a79a3afb33cbc5de2`**.
The frozen implementation/report revisions before coordinator measurement
supplements are mops **`d3cbd8c0c5bf7847d36e199d7688f630c34f37a4`**
and PAT **`d8817058f10ed935c50ad8da926363165c45d7fa`**.
Later commits add measurements and timing corrections, not implementation repairs.

## Comparable measurements

Runs took place sequentially on 29 October 2026, mops first, PAT second, with
fresh agent contexts and a 120-minute all-active-work cap per run.
Both used MPS 2026.1.1, JBR 25, IETS3 `2026.1.11424.a53a9bd`, the same
scaffold, and the unchanged `benchmark/acceptance.cjs`.

| KPI | mops | PAT | Interpretation for these runs |
|---|---:|---:|---|
| Fixed runtime cases | 20/20 | 20/20 | Tie; not proof of full assignment coverage |
| Native/GUI gates | 7 pass, G2 partial | 7 pass, G2 partial/fail | Neither completes native semantic checking |
| Complete agent-event span | 113.70 min | 120.56 min | mops shorter by 6.86 min |
| First successful native model check | 6.11 min | 15.99 min | mops earlier; model scopes differ |
| First successful language make | 10.69 min | 16.53 min | mops earlier; not identical generated-output milestones |
| First fixed runtime-suite pass | 8.48 min | 51.55 min | mops earlier; native integration was not finished then |
| First successful targeted Gradle build | 23.79 min | 35.84 min | mops earlier |
| Model requests | 487 | 532 | mops fewer |
| Harness tool calls | 571 | 618 | mops fewer; shell batching affects meaning |
| Transport-level tool failures | 7 | 2 | PAT fewer; not native-operation failure counts |
| Input tokens (ledger counter) | 49,334,490 | 59,198,542 | mops lower |
| Cache-read tokens (ledger counter) | 48,424,082 | 58,287,049 | Reported separately; not assumed disjoint from input |
| Output tokens | 406,139 | 483,067 | mops lower |
| AIU from isolated usage ledger | 79.3064 | 92.8918 | mops lower by 13.5854 AIU (14.6% of PAT) |
| Non-evidence changed paths | 20 | 20 | Tie before coordinator supplements |
| Non-evidence text insertions | 3,665 | 2,143 | PAT smaller; includes docs and scripts, not just models |
| Non-evidence text deletions | 16 | 30 | Descriptive, not a correctness score |
| Retained evidence paths | 15 | 262 | PAT retained much more diagnostic output |

Harness counters come from the parent CLI's local event ledger filtered by exact
agent ID, excluding coordinator setup, final verification, and publishing.
AIU is not money; no dollar price is inferred. Token/cache semantics are retained
as recorded. Summed request durations are not elapsed time. A shell call can
contain several provider operations; exact comparable provider-mutation counts
and semantic retry counts were not instrumented. The agents' approximate
provider counts are preserved but should not be ranked as exact measurements.

The reported native node counts are **not directly comparable**: mops counts
861 nodes across its authored aspects/examples, while PAT's reported 393 includes
83 retained build-model nodes and an empty generator root. Excluding those
retained scopes gives approximately 309 PAT nodes. Architectures also differ:
mops reuses KernelF expressions and emits Java-backed JSON; PAT defines its
own expression concepts and native TextGen. Node count alone cannot score quality.

## Quality and remaining work

mops provides an editor-time conditional-reference type rule plus KernelF's
operand checking. Duplicate identifiers, computed-result compatibility, and
cycles remain in a mops Code Mode semantic checker, not full editor-time rules.
The serializer checks with **0 errors, 5 warnings, 11 informational findings**;
warnings include deprecated calls and a possible null dereference.

PAT provides native Form/Question/Calculated/Branch and expression editors,
TextGen JSON, and a production runtime validator. Its native checks detect
missing obligatory reference links but do not diagnose duplicates, expression
and condition types, or cycles. The runtime does detect all four required
diagnostic categories. That is not equivalent to native authoring-time checks.

Both have concrete browser/download evidence and user instructions on their
branches. Coordinator reruns reproduced both 20/20 suites; mops's native
serializer diagnostics and generated questionnaire JSON were independently
confirmed. PAT's structure check and fresh-vs-committed generated JSON hashes
were also confirmed. A native check of an entire model must not be interpreted
as proof that all intended invalid-root semantics are covered.

Neither result should be advertised as a complete QL assignment implementation.
Completing the missing native semantic checks is follow-up work outside this
frozen experiment; no post-budget fixes were folded into the measured results.

## Timing correction and experimental limitations

The mops agent reported completion prematurely several times. Four coordinator
follow-ups requested genuine native integration or correction of model-check
errors. All follow-up intervals remained in its original budget. PAT received
the same frozen protocol but its launch prompt explicitly emphasized meaningful
generation and avoiding premature completion, informed by that experience.
Consequently, supervision and prompt wording were **not perfectly controlled**.

PAT's report originally claimed a 119.17-minute finish using a Git timestamp.
The tool ledger shows the report was still being edited afterward and the final
commit command ran at **22:54:30.893Z**, explicitly assigning author/committer
dates of **22:53:30Z**. The assigned Git date is not valid elapsed-time evidence.
Its full agent span ends at **22:54:47.118Z**, or 120.56 minutes from agent launch.
Implementation and functional evidence preceded the limit; report/commit
finalization narrowly exceeded the strict cap (about 27 seconds from its
recorded work start). The branch report contains this correction; the original
commit is preserved without rewriting history.

Other confounders: one sample per tool, fixed order, shared machine/cache effects,
headless mops versus live-IDE PAT, dynamic Gradle plugin version, Auto model
selection without a fixed model override, differing architectures and test
fixtures, and an acceptance suite visible to both agents. The 20 cases are a
bounded regression contract, not an exhaustive independent assignment oracle.
The coordinator supplied a generic PAT transport helper and prepared the mops
wrapper/daemon before timing; preparation effort is excluded for both.

**Conclusion:** for this experiment, mops led measured time, interaction and
AIU quantities, with somewhat stronger native checking; PAT led implementation
compactness and transport-level reliability. Runtime behavior tied on the
fixed suite. Full native semantic completeness was achieved by neither, so
there is no justified overall winner or claim of statistically established
tool superiority.
