# 2026-09-23 — tested milestone, consolidated

Trimmed 2026-09-29: this file replaces the 14 separate run summaries of 2026-09-13, 2026-09-21, 2026-09-22 and
2026-09-23. None of them are lost — `git log -p -- docs/runs/` has every one — but only this consolidated
summary still proves something about the released `Mod/` tree (`1.1.0`/`1.1.1`, tag `v1.1.1`). It does **not**
cover the `1.1.2` save-migration fix (`50b6c29`): that needs its own fresh run before `tested`, see `STATUS.md`.

Every launch below is `exitReason: passed`. `wsl-deps.map` (no optional mods), `wsl-deps.stones.map` (with
`[K]Extra Stone`) and `wsl-deps.workshop.map` (screenshot studio) each proved something the others could not.

| Pass | Scenarios | Notes |
| --- | --- | --- |
| English, `map`, features 01–04/08/12 | 28 of 28 passed | Feature 01 first (framework load, 9 buildings, GraphicsDefs, research, save/load); 02–04/08/12 after fixing two suite-side steps (a "does not exist" check that also matched the back-compat alias, and a blueprint-stuff read). Feature 12 (performance, issue #3): mean tick 2.63 ms no building, 1.30 empty pot, 1.02 filled pot, 1.98 24 filled pots. 19 `@review` captures opened, all correct. |
| French, `map`, feature 05 | 4 of 5 passed, 1 skipped by requirement (`[K]Extra Stone`, played in the stones pass) | Third attempt; the first failed on an ambiguous plinth defName (same suite-side fix as English), the second never played (launcher ticket purge). Captures: hover labels correct, French research window correct. |
| Russian, `map`, feature 07 | 2 of 2 passed | Third attempt, same suite-side fix. Stone labels translated; material name keeps the English word "chunk" (comes from the chunk def, not a defect of this mod). |
| English, `stones`, feature 06 | 2 of 2 passed | Third-party stone (Kura andesite, never listed by this mod) builds all three variants through the shared category. |
| French, `stones`, features 05+06 | 7 of 7 passed | Completes French coverage with the third-party stone; same "chunk" observation as above. |
| Workshop captures, feature 11 | 6 of 6 passed | Same six scenes as the crops in `Art/WorkshopScreenshots/`; crops stay valid. |

Total: 49 of 50 scenarios run and passed, 1 skipped by requirement and covered elsewhere. Every failure met along
the way was a defect of the Pickle suite itself (an ambiguous defName, a back-compat alias, a blueprint-stuff
read), not of the mod, and every one was fixed and replayed green.

Superseded and dropped without replacement: the 2026-09-13 static audit and the 2026-09-21 authoring runs (the
superseded pre-integration implementation), the 2026-09-22 Core-only and Workshop-capture attempts (each
repeated cleanly on 2026-09-23, kept above), and the first French/Russian attempts that failed on the
since-fixed suite defect.
