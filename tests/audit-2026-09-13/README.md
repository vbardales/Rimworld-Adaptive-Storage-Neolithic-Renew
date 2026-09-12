# Workflow audit evidence — 2026-09-13

Base revision: `b0cf4fdff6fd8e569d85c4f631ce92361d8dc675`, plus the working tree.
`manifest.json` records SHA-256 hashes of the inspected Mod, Source, Art and test files.
This is an audit snapshot, not a release or a runtime certification.

- `static-tests.txt`: first run, 1,276 assertions passed.
- `static-tests-final.txt`: rerun after concurrent source/resource additions, 1,282 passed.
  Command: `pwsh -NoProfile -File tests/Test-Mod.ps1`.
- `xml-fields.txt`: `../scripts/Check-XmlFields.ps1 -ModPath ./Mod -ExtraAssemblies $assemblies`;
  28 files checked, no unknown fields.
- `def-injected.txt`: `../scripts/Check-DefInjected.ps1 -TransMod ./Mod -Targets ./Mod,$framework -ExtraAssemblies $assemblies`;
  112 keys, zero reported errors, 66 UNVERIFIED generated targets. Exit success is not gate success.
- `def-refs.txt`: `../scripts/Check-DefRefs.ps1 -ModPath ./Mod -AlsoScan $framework`;
  no unresolved Def references, wrong reference types or missing parents. Does not execute patches.
- `$framework` was `C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/3033901359`;
  `$assemblies` comprised its `1.6/Assemblies/*.dll`. Game data and Managed paths were the
  checkers' default installed RimWorld paths. These are local dependency snapshots, not pinned releases.
- `build.txt`: failed audit invocation caused by passing a relative forward-slash source path
  to the legacy compiler; this was a command-path error, not a source defect.
- `build-retry.txt`: compilation using absolute paths succeeded (exit 0), with CS1684 about
  System.Span in the reference assembly. Compiler: Windows Framework64/v4.0.30319/csc.exe;
  arguments: /nologo /target:library /optimize+, references to Assembly-CSharp.dll,
  UnityEngine.CoreModule.dll and Workshop 2009463077/Current/Assemblies/0Harmony.dll.
  Input: Source/GeneratedTranslations.cs. Output: .build/NeolithicRenew.audit.dll.
  The delivered DLL was not overwritten or proven equivalent to this control build.
- `monorepo-remotes.txt`: complete `git config --get-regexp '^remote\..*\.url$'` result
  for the parent monorepo, using a process-local safe.directory override. No remote names
  this mod's GitHub repository. No Git configuration was changed.
- GitHub read-only checks succeeded after the sandbox prevented network/config access:
  `gh repo view vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew --json name,visibility,url,defaultBranchRef`
  returned PUBLIC, main and the expected URL; `git ls-remote origin refs/heads/main`
  returned the base revision above. No push, release or publication was performed.
- `image-metadata.json`: actual PNG dimensions and sizes.
- `icon-32.png`: inspection-only reduction of the delivered icon; no replacement art.
  The 128 px icon and this 32 px thumbnail were viewed. The mascot is identifiable,
  but the many containers and foreground objects lose separation at 32 px.
- Delivered Preview and Art/preview-268.png were viewed. Title, Renew suffix, blue accent
  and version are legible and distinct; no text clipping was observed. No new browser render,
  colour-family measurement or side-by-side game screenshot comparison was performed.
  Historical Art/preview-qa.json and its input art/palette/composition remain unchanged
  from 77936db; the About.xml difference concerns dependencies, not the displayed version.
- `status-before.md` preserves the pre-edit status, including historical remaining entries.

The original installed module at Workshop 3033901895 contains its authors' MIT notice;
the port preserves that notice. Root and Mod copies of LICENSE match byte for byte, as do
the two ATTRIBUTION.md copies. Their SHA-256 values are respectively
`B6529759668FC71EBAE8C6B5478CC83D93E03D0643790199718674CEEC8A40ED` and
`D422BE7F7FA5BF4E3FA6216128D0DC23F72371C4797777DAB6E5804F728E34CE`.

Source/GeneratedTranslations.cs, its DLL, Keyed EN/FR resources and direct Harmony metadata
appeared during this audit. They were not created by this audit. Earlier no-code/no-Keyed
findings are historical only. Tests do not yet establish this new runtime hook's behaviour.
Further changes invalidate affected checks; compare with manifest.json before reusing results.

No RimWorld session was operated. Installed assemblies permit static/reflection checks,
but the available computer-control surface does not support native game interaction.
No fresh game logs, FR/EN UI observations, saves, RIMMSQOL tests or Steam Deck run were obtained.

Final freshness check: tests/Test-InstalledTranslations.ps1 changed after the manifest and tests/TranslationChecks.cs appeared. They remain unverified; the delivered Mod/Source files in the manifest had no hash differences at that check. See changed-since-manifest.json. No previously saved test output was replaced.
