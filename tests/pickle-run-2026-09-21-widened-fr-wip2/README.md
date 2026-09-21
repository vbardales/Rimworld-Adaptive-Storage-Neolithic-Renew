# Pickle run — 2026-09-21, French, feature `05` only, after the rewrite

`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French -Filter "05-french-names.feature" -IncludeWip
-MaxWaitMinutes 600`, machine queue, lock held from staging to the `finally`, nothing launched or closed on Windows. Language
`French (Français)`, developer mode on. Staged from the tree at commit `f72f54c`, clean. Report written 15:14.

- **`exitReason: passed`**, Pickle exit code 0. **8 scenarios played, 8 written in `05`**: 8 passed, 0 failed, 0 skipped.
- Passed: the vacstone and granite building names; the descriptions of the generated chunk stack and pot and of the wood pile;
  the wood pile's label; the blueprint of the generated granite pot and of the vacstone pot, each selected by its French label
  and named by the inspect pane; the research projects' French labels and descriptions; a granite chunk stack naming itself
  through the inspect pane.
- The three scenarios that failed in the earlier pass (`../pickle-run-2026-09-21-widened-fr-wip/`) were rewritten or dropped
  and no longer fail; nothing else changed.
- The two captures of the earlier pass were looked at; this run's were not reopened.

Files: `summary.md`, `summary.json`, `junit.xml`. The full report stayed in `pickle-reports/`.
