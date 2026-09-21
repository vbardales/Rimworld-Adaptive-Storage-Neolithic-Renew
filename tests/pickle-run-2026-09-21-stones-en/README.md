# Pickle run — 2026-09-21, "stones" pass, English — did not run to the end

`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -DepMap wsl-deps.stones.map -MaxWaitMinutes 720`: the suite
beside [K]Extra Stone (`kura.extrastone`, staged next to Harmony, the framework and Odyssey). English, developer mode, no
`-IncludeWip`. Staged from commit `2be9d4f`, clean. Machine queue, lock held from staging to the `finally`, nothing launched or
closed on Windows. Report written 17:40 (the run began about 16:42).

- **`exitReason: in-progress`, wrapper exit code 5.** The wrapper says so in words: the report is that of a run that did not go to
  the end, and its figures are not a result. **34 scenarios reported of 43 written**: 22 passed, 1 failed, 11 skipped. The nine
  missing are the four of `06` and the five of `07`: the run stopped right after `05`'s skipped scenarios, before the first
  scenario of `06`, the feature this pass exists for. **`06` has not been played.**
- **The cause of the stop is not established.** The run's `Player.log` was overwritten by the French pass that started the same
  minute, before it could be read. It lasted about 58 minutes for 34 scenarios of roughly 10 s each, so most of that time was
  not scenario time; a sleeping machine, as on the run of 14:32, or Pickle's 45-minute deadline are both possible, neither verified.
- **The one failure is mine**: `the framework's tab opens and shows the two projects` (`01`), which clicked the research
  window's tab by its label: `tag 'btn:Storage' not found; known tags: no tags recorded this frame`. Nothing tags that tab
  as a button. The scenario, and its French twin in `05`, were removed: the suite is 41 scenarios now.
- The 22 that passed are the non-`@wip` scenarios of `01` to `04` again, on a game with a second stone mod loaded, including
  the research window capture and the container captures. No error was raised by having [K]Extra Stone active beside the mod.

Files: `summary.md`, `summary.json`, `junit.xml`. The frames were copied to `.build/pickle-run-stones-en/` (ignored by git). To be
replayed: the English "stones" pass, whole.
