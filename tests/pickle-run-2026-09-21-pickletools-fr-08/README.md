# PickleTools research steps, French, launch 1 of 2, feature 08

2026-09-21, `Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French -Filter 08-pickletools-research.feature -Then 10-pickletools-research-french.feature`,
one hold of the lock for the two launches.

**`exitReason: passed`. 3 scenarios played of 3, 3 passed, 0 failed, 0 skipped.** The same three scenarios as in English, with the game
in French (`French (Français)`): the key `ASNeolithicPickle_StorageTab` now reads `Stockage` and still reaches the framework's tab.

Capture of the keyed scenario, opened and looked at (`.build/pickle-run-pickletools-fr-08/screenshots/`, ignored by git): the tabs read
`Principal`, `Anomalie`, `Stockage` (selected), the two boxes *Stockage néolithique 400* and *Présentoir néolithique 400*.

Pass `avec-pickletools`: `-DepMap wsl-deps.avec-pickletools.map`, which stages the framework and the shared research steps of
`PickleTools/ResearchSteps` (packageId `nelim.pickletools.research`), 13 mods staged and all loaded. `-IncludeWip`, the features being
`@wip @pickletools`. Tree: commit `df12a10` plus the uncommitted files of the features 08 to 10, the map and the Keyed test data of the
companion (`Mod/Languages/*/Keyed/PickleTests.xml`). Copied from the archive of the next run; scenarios played = scenarios written.
