# Pickle run — 2026-09-21, French pass

Third run of `tests/Pickle`, the French pass: `scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French
-IncludeWip -MaxWaitMinutes 480`, in the machine queue, lock held from staging to the `finally`, nothing launched or closed
on Windows. The staging resolved the language as `French (Français)`, developer mode on. The run began 11:40 and its report
was written 11:46. It ran while a reservation for another session's Concord test was posted; the reservation lets a run in
flight finish, and this one did.

- **`exitReason: passed`**, Pickle exit code 0. **20 scenarios played, 20 written, and 5 features discovered** (`SuiteScanner`
  line of the log): 20 passed, 0 failed, **0 skipped**. The two `@wip` scenarios of `05-french-names` were played this time
  and passed: the three vacstone buildings read *Grand pot en vaccolithe*, *socle en vaccolithe* and *Amas de vaccolithe*, and
  the granite ones *Grand pot en granite*, *socle en granite* and *Amas de granite*. The include-wip selection was not emptied.
- The captures were retaken in French, developer mode on. In developer mode a key missing from the active language
  shows as accented gibberish; none appears on this mod's buildings. The mouse-over line of the captures reads, in
  `mouseover-fr.png`: *Panier en bois*, *Panier en tissu*, *Grand pot en bois*, *Amas de granite*, *Amas de marbre*,
  *Socle en bois*, and in the full frame of the vacstone plinth *Socle en vaccolithe (normal)* under *Or*. The interface
  around it (architect bar, tabs, weather, learning helper) is French.
- **Not covered by this pass:** the descriptions in the inspect pane, the research tab, blueprints and frames, the wood pile,
  hay pile, meal shelf and textile bundle names, the plinth names other than the wooden and vacstone ones, and the Harmony
  fallback for a third-party stone. Nothing was hovered or opened beyond what the scenarios do.
- The log holds two lines about the companion, not the mod, and neither is a scenario failure: a WARN that the companion's
  dependency on the mod declares neither `<downloadUrl>` nor `<steamWorkshopUrl>`, and an ERROR from the vanilla loader that
  the companion "did not load any content" (it ships only Pickle features). No exception, and no line naming an
  `ASNeolithic` def.

Files: `summary.md`, `summary.json`, `junit.xml`, `mouseover-fr.png`. The full report stayed in `pickle-reports/`; the frames
and `Player.log` were copied to `.build/pickle-run-2026-09-21-fr/` (ignored by git).
