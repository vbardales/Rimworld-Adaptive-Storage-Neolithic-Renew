# Pickle run — 2026-09-21

First run of `tests/Pickle`, in the WSL under Xvfb through `scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew
-MaxWaitMinutes 240`, taken in the machine's queue behind other suites, with the lock held from staging to the
`finally`. No game was launched on Windows and none was closed. Language English, no `-IncludeWip`.

- Suite revision: HEAD `eed9050` at the time of the run (the tree was clean).
- Run 10:34 to 10:40 local time. The script's own output: "le jeu est sorti en  mais son rapport est complet
  (16 passes, 1 echoues) : on retient le rapport", Pickle exit code 1, lock released.
- **`exitReason: failed`** read first. **19 scenarios played, 19 written** (the suite had 5 features, 19 scenarios then).
  16 passed, 1 failed, 2 skipped (`05-french-names`, `@wip`), 0 flaky.
- The failure: `the nine hand-written buildings exist and are this mod's` — "'ASNeolithicBasketWoody' names more
  than one def (ThingDef, GraphicsDef); say which with `def "..." of type "..."`". A defect of the suite, not of the
  mod: fixed afterwards by naming the type and splitting the scenario; the fix has not been played.
- Of the 16 `@review` captures, 15 were looked at (the 16th, the fabric basket empty, was not); the full frames are 3.3 MB each and not committed. Two were
  opened at full size; the rest as crops of their centre, kept here: `basket.png`, `chunks.png`, `others.png`,
  `pile-reload.png`. The textile bundle in the
  pile/shelf capture.

Files: `summary.md`, `summary.json`, `junit.xml` copied from the report of the run. The full report
(`report.html` 75 MB, `messages.ndjson`, screenshots) stayed in `pickle-reports/`, which the next run archives;
the 17 relevant frames were copied to `.build/pickle-run-2026-09-21/` (ignored by git).
