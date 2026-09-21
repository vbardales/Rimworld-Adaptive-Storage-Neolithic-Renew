# Pickle run, French, feature 05 only: the research tab reads Stockage

2026-09-21, `Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French -Filter "05-french-names.feature" -IncludeWip`, no optional mod
(the bare pass, no `-DepMap`), lock taken 20:08:25, released 20:10:36. Tree of commit `df12a10`. Archived by the next run as
`pickle-reports-archive/0921-2010`; copied here from it.

**`exitReason: passed`. 11 scenarios played of the 11 in the feature, 9 passed, 0 failed, 2 skipped.** The two skipped are the third-party stone
scenarios (`@requires:Kura.ExtraStone`), which need the "stones" pass; 05 holds eleven with them, nine without.

The new one, *the framework's research tab reads Stockage and lists both projects*, passed (8.6 s): the window's tab record for
`ASFAdaptiveStorage` is labelled `Stockage`, and both projects are among the ones it lists at cost 400.

**Capture, opened and looked at** (`.build/pickle-run-research-tab-fr/screenshots/`, ignored by git): the tabs read `Principal`, `Anomalie`,
`Stockage` (selected), and the two boxes read *Stockage néolithique 400* and *Présentoir néolithique 400*, one above the other. The main buttons
along the bottom and the learning helper are French too. As in English, the layout is a person's to judge.

The eight other scenarios that ran passed as they did in the earlier French passes (the vacstone and Core labels, the descriptions, the wood pile,
the blueprint of a generated building, the vacstone blueprint, the research text, the container naming itself).
