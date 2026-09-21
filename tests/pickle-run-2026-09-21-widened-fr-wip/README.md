# Pickle run — 2026-09-21, widened suite, French, feature `05` only

`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French -Filter "05-french-names.feature" -IncludeWip
-MaxWaitMinutes 600`, machine queue, lock held from staging to the `finally`, nothing launched or closed on Windows. Language
`French (Français)`, developer mode on. Staged from the working tree, which held uncommitted edits. Report written 14:46.

- **`exitReason: failed`**, Pickle exit code 1. **9 scenarios played, 9 written in `05`**: 6 passed, 3 failed, 0 skipped.
- **Passed:** the three vacstone and granite building names; the research projects' French label and description; the
  blueprint of the generated granite pot and of the vacstone pot, each selected by its French label and named by the inspect
  pane; a granite chunk stack naming itself through the inspect pane.
- **Failed, all three the suite's own:**
  1. *the descriptions are French, on a generated building and on a hand-written one*, and 2. *the two unambiguous hand-written
     buildings are French*: `'ASNeolithicLargePot' names more than one def (DesignatorDropdownGroupDef, ThingDef)`. The large pot
     shares its name with a dropdown group, which the earlier ambiguity check (against GraphicsDefs) had not caught.
  3. *a hand-written building's blueprint is French as well*: `no selectable thing labeled 'grand pot (plan)'`. Every hand-written
     building takes wood as stuff, so it is displayed with the stuff in its name; my guess at the label was wrong.
- **The mod's Harmony hook was seen working**: the blueprint of the generated granite pot reads *Grand pot en granite (plan)*,
  and the vacstone one was found by *Grand pot en vaccolithe (plan)*. Vanilla copied onto the blueprints the labels the hook
  had written, which is the ordering the mod's assembly exists to guarantee.
- Two captures were taken and looked at in full (`the blueprint of a granite pot, in French`, `the inspect pane on a granite
  chunk stack, in French`): every visible label is French, including the *Stockage* tab, the filter rows and
  *Magasins: Gravats en granite. (1 / 6 piles)*, with no accented fallback text.

The scenarios were then rewritten: the large pot's description and label are no longer read by `def`, and the hand-written
blueprint scenario was dropped (the names it would have read are already in the containers' mouse-over lines). `05` has 8
scenarios now and the rewrite has not been replayed.

Files: `summary.md`, `summary.json`, `junit.xml`. The full report stayed in `pickle-reports/`; the two frames were copied to
`.build/pickle-run-widened-fr-wip/` (ignored by git).
