# Pickle run — 2026-09-21, widened suite, French without the `@wip` feature

French pass of the 22 non-`@wip` scenarios (`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French
-MaxWaitMinutes 600`), machine queue, lock held from staging to the `finally`, nothing launched or closed on Windows. The staging
resolved the language as `French (Français)`, developer mode on. Staged from the working tree, which held uncommitted edits.
Report written 14:42.

- **`exitReason: passed`**, Pickle exit code 0. **31 scenarios played, 31 written**: 22 passed, 0 failed, 9 skipped
  (`05-french-names`, `@wip`, played by the run that follows), 0 flaky.
- Everything that passed in English passed in French, the blueprint placements and the research window included.
- **The research capture** (looked at) shows the window on its Main tab, called *Principal*, with the framework's tab
  beside it, called **Stockage**, and *Anomalie*. *Stockage* is the label this mod's French `ResearchTabDef` gives the
  framework's tab, so the capture shows that translation applied in a running game. The two projects sit inside that
  tab and are not in the frame.
- The interface around it is French (architect bar, weather, learning helper); no accented fallback text is visible.

Files: `summary.md`, `summary.json`, `junit.xml`. The full report stayed in `pickle-reports/`, which the next run archives; the
frames were copied to `.build/pickle-run-widened-fr/` (ignored by git). `Player.log` was gone by the time it was copied.
