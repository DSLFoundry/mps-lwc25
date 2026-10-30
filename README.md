# QL agentic-coding benchmark scaffold

This branch is the common starting point for independent implementations of the
[original QL assignment](https://homepages.cwi.nl/~storm/Ql.pdf) in JetBrains MPS.
See [BENCHMARK.md](BENCHMARK.md) for the scope, acceptance criteria, run rules,
and measurements.

## PAT versus mops comparison

An AI-assisted, from-scaffold comparison of **mops versus Projectional Agent
Toolkit (PAT)** on MPS 2026.1.1 is documented in
[the benchmark comparison](https://github.com/DSLFoundry/mps-lwc25/blob/main/doc/QL-Benchmark-Comparison.md),
with links to this common scaffold, both implementation branches, and their
measured results. Both passed the timed runtime suite but initially lacked
native semantic checks; a separately documented untimed follow-up completed
those checks on both branches without changing the original benchmark scores.
Both timed implementations started at commit
`ebb9a686670577120e0a228a79a3afb33cbc5de2`; this README update does not change
that recorded baseline.

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

The original repository authors are Klemens Schindler and Eugen Schindler.
Historical paper materials remain in `doc`; they are not implementation input
for either fresh benchmark run.
