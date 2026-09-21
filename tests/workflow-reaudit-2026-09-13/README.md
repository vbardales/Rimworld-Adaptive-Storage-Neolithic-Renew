# Workflow re-audit — 2026-09-13

Applies the revised user workflow, which supersedes the previous remote and Preview evidence requirements.
Initial HEAD was b0cf4fdff6fd8e569d85c4f631ce92361d8dc675 with local translation changes.
Those changes were committed independently during the audit as
3406ecefe9f977642516f647a3a43b877388205a and pushed to origin/main. The checked Mod and Source
hashes remained unchanged: manifest.json and freshness.json (empty difference list).
Git diff against 3406ece was also empty for the three test source files.

The autonomous repository is C:/Users/nelim/Documents/rimworld/AdaptiveStorageNeolithicRenew;
the distributed root is Mod/. Its origin is
https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew.git.
Read-only gh repo view confirmed PUBLIC/main and git ls-remote confirmed 3406ece on main.
The nested filesystem location is independent of the parent Git repository. No parent remote
is required or should be restored. Root/distributed LICENSE and ATTRIBUTION copies still match;
the installed original MIT notice and initial English documentation were verified in the earlier audit.

Tests ran in an isolated copy under .build/workflow-reaudit-20260913 to preserve original build
outputs and all historical evidence. Mod/Source were copied without changes and test scripts
were copied into its tests/ directory. No production DLL or source file was overwritten.

| Check | Command and actual result |
| --- | --- |
| Static tests | pwsh -NoProfile -File SNAPSHOT/tests/Test-Mod.ps1: 1,310 assertions passed (static.txt). |
| Delivered binary tests | pwsh -NoProfile -File SNAPSHOT/tests/Test-InstalledTranslations.ps1: 28 assertions passed, six installed stones materialized (installed.txt). This ran before rebuilding the copied DLL. |
| Build | pwsh -NoProfile -File SNAPSHOT/Source/Build.ps1: successful, CS1684 reference warning about System.Span (build.txt). |
| Binary freshness | Compared delivered copy with rebuilt DLL. Same 6,656 bytes and identical bytes after masking only the PE COFF timestamp (derived from e_lfanew+8) and actual module MVID (read with PEReader/MetadataReader). See binary-equivalence.json. All other bytes match, including executable code and resources. |
| DefInjected | ../scripts/Check-DefInjected.ps1 -TransMod SNAPSHOT/Mod -Targets @(SNAPSHOT/.build/translation-targets,FRAMEWORK) -ExtraAssemblies @(FRAMEWORK/1.6/Assemblies/AdaptiveStorageFramework.dll): 112 keys, zero errors, zero UNVERIFIED paths (def-injected.txt). Framework-only conditional target messages are not unresolved module keys. |
| XML fields | ../scripts/Check-XmlFields.ps1 -ModPath SNAPSHOT/Mod -ExtraAssemblies FRAMEWORK/1.6/Assemblies/*.dll: 28 files, no unknown fields (xml-fields.txt). |

FRAMEWORK is C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/3033901359.
The scripts use installed RimWorld Managed/Data and Harmony Workshop 2009463077/Current/Assemblies.
Native constructors are bypassed in field tests, and parameter substitution uses a callback;
these successful tests are not a full Harmony/game-load/UI test.

Additional decompilation comparison: delivered-retry.cs.txt and rebuilt-retry.cs.txt match exactly.
The first ilspycmd attempt required unavailable .NET 6 and produced empty *.cs.txt files, which
are retained but are not successful evidence. The retry used process-local DOTNET_ROLL_FORWARD=Major.
Decompiled missing-reference comments are not evidence of a game failure. The independent raw PE
comparison above establishes equality beyond compilation-specific fields without relying on decompilation.

Direct visual inspection repeated on Mod/About/ModIcon.png (128 px), its unchanged 32 px inspection
thumbnail from the earlier audit, Mod/About/Preview.png and Art/preview-268.png. Icon dimensions and
size remain 128x128 PNG / 28,385 bytes; Preview remains 896x504 PNG / 608,863 bytes.
Icon defect: several containers/foreground objects exceed the one-or-two-object rule and are difficult
to distinguish at 32 px. Preview passes: overhead camera, floor grid, worn storage subject, coherent
warm palette, no detailed face, legible title/version, distinct blue accent and warm Renew suffix.
No concrete camera doubt remains; no screenshot-comparison report or new palette measurement is required.
Existing palette/layout/font/contrast evidence was not invalidated by changes to translation code.

No game interaction, full hook execution, FR/EN UI run, save test, settings interaction or RIMMSQOL
integration was performed. Native game UI control is unavailable through the enabled computer surface.
Settings audit therefore remains partial, with the prior inventory preserved in STATUS.md.
Resources/translation mechanisms pass independently; the ordered options -> l10n transition still awaits options.

STATUS before editing is archived in status-before.md. Existing audit folders, translation validation,
source, images and compiled distribution were preserved. Only status/evidence was added by this audit.

## Settings interpretation superseded — 2026-09-13

The later explicit user clarification supersedes the earlier paragraph requiring runtime checks
for options. Source/Def inspection suffices for a justified no-settings result. Reinspection found
no module-specific settings need, page or shortcut. Mod/Source hashes and test sources are unchanged,
so existing successful tests remain fresh. settings_audit is now not_applicable; options passes
independently. Interactive verification is tracked only under done -> tested. No implementation changed.

## Explicit icon acceptance — 2026-09-13

The user accepted the current icon after the style findings were explained: "moi, j'override, je valide".
Its object-count/readability deviation is an accepted exception, not outstanding work. Mod/Source
hashes and test sources remain unchanged. STATUS now records modicon_audit/showcase complete and
stage done. Game validation remains unexecuted; tested_on stays empty. No artifact was modified.
