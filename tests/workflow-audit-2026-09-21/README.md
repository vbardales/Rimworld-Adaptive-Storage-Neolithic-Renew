# Workflow audit — 2026-09-21

Audit against `rimworld/AUDIT.md` (chain dansMonoRepo → … → published). No RimWorld instance was
launched, on Windows or in the WSL. The only process probes were read-only (`Get-Process
RimWorldWin64`: none; `pgrep RimWorldLinux`: none). No image was generated, nothing was published.

## Audited state

- Repository: `C:/Users/nelim/Documents/rimworld/AdaptiveStorageNeolithicRenew`, distributed root `Mod/`.
- HEAD = `origin/main` = `ae237ea0103df912b531075d330c6c8089b2fddc` (after `git fetch`). GitHub: PUBLIC, default branch `main`.
- Local changes at audit start, preserved: `STATUS.md` (uncommitted audit edits of 2026-09-13) and the
  untracked `tests/workflow-reaudit-2026-09-13/`. This audit adds only STATUS.md edits and this folder.
- Delta since the previously audited revision `3406ece`: two credit commits (`1b6302f`, `ae237ea`) touching
  `Mod/About/About.xml` (`<author>`), both `ATTRIBUTION.md`, both `LICENSE`, `CHANGELOG.md`. Wording only.
- SHA-256 manifest of 2026-09-13 (393 files under `Mod/` and `Source/`) recompared: 3 differences
  (`Mod/About/About.xml`, `Mod/ATTRIBUTION.md`, `Mod/LICENSE`), exactly the two commits above. `Source/`,
  `Mod/Assemblies/NeolithicRenew.dll` (e620fadb…603a), Defs, Patches, Languages, Textures: unchanged, so the
  2026-09-13 binary-equivalence result (`tests/workflow-reaudit-2026-09-13/binary-equivalence.json`) still applies.
- Root/distributed copies of `LICENSE` and `ATTRIBUTION.md`: identical.

## Commands and results (Windows PowerShell 5.1; PowerShell 7 is not installed on this machine)

| Check | Result |
| --- | --- |
| `powershell.exe -File tests/Test-Mod.ps1` | PASS, 1,310 assertions, exit 0 |
| `powershell.exe -File tests/Test-InstalledTranslations.ps1` | PASS, 28 installed-assembly assertions, six stones materialized, exit 0 |
| `scripts/Check-DefInjected.ps1 -TransMod ./Mod -Targets ./.build/translation-targets,FRAMEWORK -ExtraAssemblies AdaptiveStorageFramework.dll` | 112 keys, 0 errors |
| `scripts/Check-XmlFields.ps1 -ModPath ./Mod -ExtraAssemblies FRAMEWORK/1.6/Assemblies/*.dll` | 28 files, no unknown fields |
| `scripts/Check-DefRefs.ps1 -ModPath ./Mod -AlsoScan FRAMEWORK` | 48 defs, XML well formed, no missing def reference, no wrong def type, all ParentName resolved |

FRAMEWORK = `C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/3033901359`.
`Check-DefInjected.ps1` must be called in-process (`&`), not through `powershell.exe -File`, or its array
parameters collapse and the run fails on an assembly path — a launch mistake made and corrected during this audit, not a mod defect.

## Direct inspection

- `Mod/About/ModIcon.png`: PNG 128x128, 28,385 bytes, SHA-256 CE64C1B4…50CD (the icon the user accepted by explicit
  override on 2026-09-13; unchanged).
- `Mod/About/Preview.png`: PNG 896x504, 608,863 bytes (< 1 MB), opened and viewed: overhead camera, tiled floor,
  baskets, pot, chunk stack, hay, a worn plinth; title, "Renew" suffix, summary and 1.6 badge readable, blue rule
  clearly distinct from the ochre suffix. No concrete visual doubt.
- `About.xml`: description in English, name `Adaptive Storage Neolithic Renew`, no licence suffix (public/open, MIT by
  the authors); Harmony and Adaptive Storage Framework in `modDependencies` and `loadAfter`; original module in
  `incompatibleWith`. Framework packageId `adaptive.storage.framework`, Harmony `brrainz.harmony`, original
  `adaptive.storage.neolithic` confirmed against the installed About.xml files. Harmony is used directly by
  `Source/GeneratedTranslations.cs`; Biotech textures are gated by `MayRequire="Ludeon.RimWorld.Biotech"`;
  no `LoadFolders.xml` and no versioned folder exist.
- Settings: grep of `Source/`, `Mod/Defs`, `Mod/Patches` for ModSettings, GetSettings, SettingsCategory,
  DoSettingsWindowContents, MainButtonDef, MainTabWindow, Dialog_: no match. No settings page, no shortcut.
- Hard-coded UI text: `GeneratedTranslations.cs` contains no player-facing literal; it resolves
  `ASNeolithic.Generated.*` Keyed entries (six, in English and French).

## Pickle / Gherkin (criterion of preTest → done)

`git ls-files` and the working tree contain no `Tests/Pickle`, no `*.feature`, no step DLL, and no document that
states why Gherkin would not apply. TESTING.md lists eleven in-game scenarios in prose only. Other mods of the workspace
(ArchitectStudio, QuietNewFactions, SkillIcons, TailorMadeWaistlines, TechLevelFixes) carry a `Tests/Pickle`.
Several of this mod's scenarios are things only a running game shows (sprite swap at 1/2/6 chunks, contained items drawn
in the basket, the dropdown holding six stone variants with Odyssey, state after a save/reload). The criterion
"Pickle tests written, scope justified" is therefore not met. Their execution is not required at this step.
