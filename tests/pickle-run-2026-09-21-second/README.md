# Pickle run — 2026-09-21, second run (English)

Second run of `tests/Pickle`, after the fix to feature 01 committed in `9d554bd`. Same route as the first run
(`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -MaxWaitMinutes 360`, machine queue, lock held from staging
to the `finally`, nothing launched or closed on Windows). Language English, no `-IncludeWip`. Report written 11:39.

- **`exitReason: passed`**, Pickle exit code 0. **20 scenarios played, 20 written**: 18 passed, 0 failed, 2 skipped
  (`05-french-names`, `@wip`), 0 flaky.
- The rewritten scenarios of feature 01 (the nine ThingDefs by type, the seven GraphicsDefs) passed. The first run's
  only failure is closed.
- The 16 `@review` captures were retaken. Looked at in this run's frames: the fabric basket, empty and full (`fabric.png`),
  and the wood pile, hay pile, meal shelf and textile bundle in one row (`piles-strip.png`), which the first run's crop
  had cut off: the four containers are drawn, the bundle as a stack of white rolls. The other captures were looked at
  in the first run (`../pickle-run-2026-09-21/`); this run's frames of them were not reopened one by one.
- The `screenshots` folder of the report also holds frames from other mods' earlier runs, which the run does not clear:
  only the `manual--` frames named after this suite's scenarios date from 11:35 to 11:39 and belong to it.

Files: `summary.md`, `summary.json`, `junit.xml`. The full report and the frames stayed in `pickle-reports/`; the frames
were copied to `.build/pickle-run-2026-09-21-en2/` (ignored by git).
