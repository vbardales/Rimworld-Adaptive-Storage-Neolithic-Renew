# Pickle run — 2026-09-21, widened suite, English, after the rewrite

Second English pass of the widened suite, after the three blueprint scenarios were rewritten to place a blueprint on the map
(`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -MaxWaitMinutes 600`). Machine queue, lock held from staging to
the `finally`, nothing launched or closed on Windows. Language English, developer mode on, no `-IncludeWip`. The suite was
staged from the working tree, which held uncommitted edits to the features, README, TESTING.md and STATUS.md at the time.
Report written 14:32; the lock was taken 13:06.

- **`exitReason: passed`**, Pickle exit code 0. **31 scenarios played, 31 written**: 22 passed, 0 failed, 9 skipped
  (`05-french-names`, `@wip`), 0 flaky.
- The rewritten blueprint scenarios passed: a blueprint can be placed for the generated granite pot, plinth and chunk stack,
  for the hand-written large pot and wood pile, and for the vacstone pot and chunk stack, with no error logged.
- The run held the lock for about 85 minutes, against about 6 for the earlier passes. **Cause, given afterwards by Virginie: the
  computer went to sleep** while the run was in progress (someone had closed it). The game was suspended and the clock kept running, which is why no
  scenario took longer than 26 s in the report and why the durations do not account for the wait. The results are those of a
  run that finished normally once the machine woke; nothing in them points to the sleep. A sleeping machine holds the queue
  for everyone behind it.

Files: `summary.md`, `summary.json`, `junit.xml`. The full report stayed in `pickle-reports/`; the research frame was copied to
`.build/pickle-run-widened-en2/` (ignored by git).
