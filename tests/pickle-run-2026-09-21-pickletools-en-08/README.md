# PickleTools research steps, English, launch 1 of 2, feature 08

2026-09-21, `Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew` with `-Filter 08-... -Then <09 or 10>`, one hold of the lock per language.

**`exitReason: passed`. 3 scenarios played of 3, 3 passed, 0 failed, 0 skipped.**

- a tab by its def name, whatever the case (`asfadaptivestorage` reaches `ASFAdaptiveStorage`, both projects listed at 400);
- the vanilla Main tab by its def name, with `Stonecutting` listed;
- a tab by a translation key (`ASNeolithicPickle_StorageTab`, `Storage` in English), the framework's tab reached, both projects at 400.

Capture of the last one, opened and looked at (`.build/pickle-run-pickletools-en-08/screenshots/`, ignored by git): the tab `Storage` selected, *Neolithic storage 400* and *Neolithic item display 400* one above the other.

Pass `avec-pickletools`: `-DepMap wsl-deps.avec-pickletools.map`, which stages the framework and the shared research steps of
`PickleTools/ResearchSteps` (packageId `nelim.pickletools.research`), 13 mods staged and all loaded. `-IncludeWip`, the features being
`@wip @pickletools`. Tree: commit `df12a10` plus the uncommitted files of the features 08 to 10, the map and the Keyed test data of the
companion (`Mod/Languages/*/Keyed/PickleTests.xml`). Copied from the archive of the next run; scenarios played = scenarios written.