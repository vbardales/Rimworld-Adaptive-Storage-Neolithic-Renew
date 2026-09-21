# Pickle run, English, feature 01 only: the research tab opened by defName

2026-09-21, `Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Filter "01-loads-on-the-framework.feature"`, English, no optional mod
(the bare pass, no `-DepMap`), lock taken 20:05:52, released 20:08:22. Tree of commit `df12a10` (the step assembly and the rewritten scenario),
nothing else staged. Archived by the next run as `pickle-reports-archive/0921-2008`; copied here from it.

**`exitReason: passed`. 7 scenarios played of the 7 in the feature, 7 passed, 0 failed, 0 skipped.** The scenario counts match: 01 holds seven.

The new one, *the framework's research tab, opened by its defName, lists both projects*, passed (8.8 s). Its steps attached what they read, in
`messages.ndjson`:

- the window's tab records: `Main (label 'Main'), Anomaly (label 'Anomaly'), ASFAdaptiveStorage (label 'Storage', selected)`;
- the projects it lists on that tab: `ASNeolithicNeolithicStorage: 'Neolithic storage', cost 400, at (0, 1), Neolithic` and
  `ASNeolithicNeolithicItemDisplay: 'Neolithic item display', cost 400, at (0, 2), Neolithic`.

**Capture, opened and looked at** (`.build/pickle-run-research-tab-en/screenshots/`, ignored by git): the research window with the tab `Storage`
selected beside `Main` and `Anomaly`, holding two boxes one above the other, *Neolithic storage 400* and *Neolithic item display 400*. This is
TESTING.md scenario 2 as written: a tab holding both projects, one above the other, each costing 400. The window's framing and the
placement of the two boxes are a person's to judge; the boxes sit at the left of a large empty tab.

Not covered: the "marked neolithic" of scenario 2 is read as `techLevel Neolithic` (asserted by another scenario of `01`), not seen on the boxes.
This pass ran the whole of `01`, in English only; the French tab is in `../pickle-run-2026-09-21-research-tab-fr/`.
