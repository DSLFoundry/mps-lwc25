# Fresh implementation instructions

Implement the QL scope in `BENCHMARK.md` from this scaffold, using only the
assigned MPS provider. Read that document and the fixed acceptance runner before
designing the implementation. Do not inspect other QL solutions, Git history,
other branches/worktrees, or historical implementation walkthroughs.

Work independently in this fresh context. There is a 120-minute active-work
budget starting when the coordinator launches this run. Check the real UTC clock
at milestones and before long commands; reserve time for validation, documentation,
and saving results. No human interaction is needed for routine implementation
choices. Do not delegate or launch other agents.

Create a genuine MPS language implementation, an example questionnaire, its
generation path, and the production runtime/GUI. Reuse third-party libraries
when helpful. All persistent MPS edits must go through the assigned provider.
The common runtime adapter may translate data but must not implement independent
evaluation or validation. Do not edit the common suite or this protocol.

Keep timestamped operation evidence. Run native model checks, the existing
build, the common runtime suite, and real browser checks where feasible.
Preserve failures as well as successes. Do not silently substitute a standalone
runtime for native MPS integration or declare an unexercised gate passed.
Finish README user instructions, including how to download JSON answers.

Write `BENCHMARK-RESULTS.md` and the evidence required by `BENCHMARK.md`.
Identify all incomplete work explicitly. If a capability is unavailable, preserve
the exact diagnostic and report it rather than editing serialized persistence.
Stop implementation at the time limit even if unfinished. Commit the work on
the assigned branch, with author/committer Eugen Schindler
`eugenschindler@gmail.com` and trailer:

```
Co-authored-by: Copilot <223556219+Copilot@users.noreply.github.com>
```

Do not push, change branches, modify another checkout, update shared canonical
knowledge, or repair work after your run is frozen. Return the commit, actual
UTC start/end, results location, reached milestones, acceptance count, and any
blocker. The coordinator will publish and compare the frozen runs.
