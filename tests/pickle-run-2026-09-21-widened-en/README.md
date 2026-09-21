# Pickle run — 2026-09-21, widened suite, English

First run of the suite after it was widened (`tests/Pickle`, commit `f5cb0f5`): `scripts/Run-PickleWsl.ps1 -Mod
AdaptiveStorageNeolithicRenew -MaxWaitMinutes 480`, in the machine queue, lock held from staging to the `finally`,
nothing launched or closed on Windows. Language English, no `-IncludeWip`. Report written 12:42.

- **`exitReason: failed`**, Pickle exit code 1. **32 scenarios played, 32 written**: 20 passed, 3 failed, 9 skipped
  (`05-french-names`, `@wip`), 0 flaky.
- **The three failures are one wrong assumption of mine**, not a defect of the mod: `def "..._Blueprint" of type
  "ThingDef" exists` finds nothing ("no ThingDef named 'ASNeolithicLargePotChunkGranite_Blueprint'; closest matches:
  the building itself"), for the generated granite pot, the hand-written large pot and the vacstone pot alike.
  Pickle's def lookup does not see vanilla's implied blueprint and frame defs. The scenarios now place a blueprint on
  the map instead; the suite has 31 scenarios since, and the rewrite has not been played.
- **Confirmed by this run:** both research projects sit in the framework's tab (`tab.defName`), cost 400 and are
  Neolithic; the research window opens and closes; the nine ThingDefs and seven GraphicsDefs exist; the earlier
  container, chunk-stack, plinth and reload scenarios passed again.
- **The research capture** (looked at) shows the window on its Main tab with the framework's tab, `Storage`, beside
  Main and Anomaly. It does not show the two projects, which sit inside that tab.
- The French pass queued behind this run was refused by the wrapper: `-IncludeWip` without `-Filter` exits 9 ("ne joue
  que la premiere feature", Pickle #26). That exit is not a run and left no report.

Files: `summary.md`, `summary.json`, `junit.xml`. The full report stayed in `pickle-reports/` and was archived by the
next start; the research frame was copied to `.build/pickle-run-widened-en/` (ignored by git).
