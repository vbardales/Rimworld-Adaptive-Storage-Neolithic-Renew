---
localization: partial
translation_en: partial
translation_fr: partial
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
stage:        dansMonoRepo
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
dependencies: declared
showcase:     partial
tested_on:
workshop:
settings_audit: partial
build_audit: partial
audit_revision: b0cf4fdff6fd8e569d85c4f631ce92361d8dc675 plus working tree
audit_evidence: tests/audit-2026-09-13/README.md
remaining:
  - defect: No remote in the parent monorepo points to this autonomous GitHub repository; gate 1 is incomplete.
  - defect: ModIcon contains more than two objects and loses object separation at 32 px.
  - defect: About.xml lacks the required final Steam-formatted Source code on GitHub link.
  - unverified: Concurrent CSharp, DLL and translation changes require stable source-to-delivered-binary verification and relevant regression tests.
  - unverified: Settings usefulness and inherited framework controls need runtime verification; no empty page or shortcut has been verified in game.
  - unverified: Generated-translation resources and paths pass local checks; verify the Harmony hook, blueprints, frames and completed buildings in a full English/French game load.
  - unverified: Complete Preview colour-family measurement and comparison with an actual game screenshot.
  - unverified: Execute functional scenarios, inspect logs and all owned UI in English and French, on new and existing saves.
  - unverified: Test options, persistence and optional MainButtons integrations if applicable after the settings decision.
  - unverified: Russian Odyssey coverage remains incomplete and case-sensitive runtime verification remains pending outside the EN/FR gate.
session:      local_db1227c9-d5d1-40e9-991f-1efee093b86b
updated:      2026-09-13
---

# Adaptive Storage Neolithic Renew — status

## Current cumulative workflow audit — 2026-09-13

**Authoritative result: `done` -> `dansMonoRepo`.** The user-supplied chain and cumulative
criteria override the older stage vocabulary and the historical statements below. This is
the baseline before gate 1 is fully demonstrated; it does **not** mean the standalone Git
repository was moved back into the parent repository.

Audited HEAD: `b0cf4fdff6fd8e569d85c4f631ce92361d8dc675`, plus the working tree inventoried
in [the evidence manifest](tests/audit-2026-09-13/manifest.json). Read parent PUBLISHING.md,
STYLE_RIMWORLD.md, MOD_SETTINGS.md, TRANSLATIONS.md and AGENTS.md. Commands, outputs,
limitations and the pre-edit status are preserved in [audit evidence](tests/audit-2026-09-13/README.md).

Existing edits were preserved. During the audit, other work added Source/GeneratedTranslations.cs,
Source/Build.ps1, Mod/Assemblies/NeolithicRenew.dll, EN/FR Keyed resources, Harmony metadata
and installed-translation tests. No implementation or image replacement was made by this audit.
The historical claim that no CSharp/build/Keyed exists is therefore superseded. Changes after
the manifest require renewed checks; a successful old check cannot certify the new code.

| Transition | Finding and evidence |
| --- | --- |
| dansMonoRepo -> horsMonoRepo | **Defect:** no parent-monorepo remote points to this mod's GitHub URL (complete remote inventory saved). **Validated:** independent .git and Git top-level; no mod files tracked by parent; origin exists, GitHub PUBLIC/main verified live and HEAD confirmed pushed. The folder is physically nested under the parent workspace but is Git-independent. Names are coherent: nelim.adaptivestorageneolithic, Adaptive Storage Neolithic Renew, Rimworld-Adaptive-Storage-Neolithic-Renew, AdaptiveStorageNeolithicRenew. **Validated:** English README, ATTRIBUTION, LICENSE and CHANGELOG initialized; original installed MIT notice inspected, authors credited, root/distributed LICENSE and ATTRIBUTION identical. public/open is supported; no unofficial/prohibited suffix is required. |
| horsMonoRepo -> ModIcon generee | **Defect:** icon exceeds the one-or-two-object rule; the mascot remains readable but the containers merge at 32 px. Viewed the delivered 128 px PNG and an inspection-only 32 px reduction. **Validated:** 128x128 PNG, 28,385 bytes. **Non verified:** development completion and correspondence between new source and delivered DLL. A separate control build succeeded with one CS1684 reference warning; it did not replace or certify the delivered DLL. Compilation is now applicable. |
| ModIcon generee -> Preview generee | **Validated:** actual PNG 896x504, 608,863 bytes; viewed at full size and 268 px, title/version identifiable, no clipping. Original sources preserved in Art. **Non verified:** current style checklist's quantitative hue-family measurement and comparison against an actual game screenshot. No game or Workshop display was inspected. |
| Preview generee -> preOptions | **Validated in isolation:** English description, correct Renew name/suffix, no linking words requiring reduction; warm secondary ink and blue accent visibly distinct at both sizes. Art/preview-palette.json drives the composition. Historical font and contrast evidence remains applicable to unchanged art/layout/version inputs (minima 6.30/4.87/6.07/6.72). **Defect under PUBLISHING.md:** description contains a raw GitHub URL instead of ending with the required [url=...]Source code on GitHub[/url] link. No new render/contrast measurement was performed. |
| preOptions -> options | **Non verified:** settings_audit=partial; static inventory and rationale below do not establish functioning or absence of UI in game. No RIMMSQOL integration tested. |
| options -> l10n | **Non verified:** new CSharp fallback changes the translation mechanism and coverage, so previous complete localization/English claims cannot certify the current tree. Six paired EN/FR Keyed entries exist and contain meaningful text; generated injection targets and fallback behaviour still need verification. Initial standalone run: 1,276 assertions; rerun after new resources: 1,282. Shared DefInjected check: 112 keys, zero reported errors, 66 UNVERIFIED generated paths. These are not a translation-gate pass. |
| l10n -> preTest | **Validated statically for inspected files:** framework types and generator operations are really used and framework is declared before this mod; new code directly uses Harmony, now explicitly declared/loadAfter. Installed framework also declares Harmony and supports 1.6. Biotech toxipotato graphics use MayRequire; Odyssey vacstone and other chunks are discovered by generators, so these integrations are optional. No module LoadFolders or version folders; single supportedVersion 1.6. No unresolved Def references/parents in the installed-data check. **Non verified:** actual loading/optional-DLC combinations and future dependency versions; no version constraint was invented. |
| preTest -> done | **Validated within scope:** existing functional scenarios have preconditions/actions/expected outcomes; static XML/contracts pass, 28 files pass reflected field checks, installed-data references resolve. **Non verified:** new translation code tests and delivered-binary provenance on a stable snapshot. Installed-translation tests appeared and were being edited during the audit; not executed by this audit to avoid racing their shared outputs. Existing scenarios do not fully cover the new hook, complete FR/EN UI inventory, or the settings gate. |
| done -> tested | **Non verified:** no game scenarios, runtime logs, complete EN/FR UI, fresh/existing save runs, settings/persistence/shortcut checks or regression runs performed. tested_on remains empty. Russian case-sensitive and missing Odyssey coverage remain separately recorded. |

Later isolated successes do not bypass the first failed gate.

### Settings audit

Inventory includes the module's costs, capacity limits, storage filters, research requirements,
graphics thresholds, art generation, new translation hook and inherited framework settings.
Costs/capacities/research are authored balancing values; no concrete player requirement was found
that warrants exposing every constant. Storage contents/filters are per-building game/framework
controls; wood/textile filters intentionally lock to their construction material. The new translation
hook has no player setting. No module settings category or MainButtonDef was found.

The installed framework exposes global contents-tab selection, automatic opening, label style,
zoom hiding/threshold and mouse-over hiding through its own settings category. These are relevant
inherited controls, not evidence of a module-named page or of a module-specific shortcut.
A duplicate page is not automatically warranted. Verify the inherited controls' real effects and
confirm whether a module-specific option has a concrete use; if none, observe absence of an empty
module page and shortcut in a clean game before recording not_applicable. If useful module settings
are required, validate the primary route, hidden optional shortcut, effects and persistence.
No runtime/integration versions are claimed as tested. Installed assemblies permit static checks;
the available computer-control surface does not provide native RimWorld interaction.

### Exact next transition

To reach **horsMonoRepo**, register the existing repository URL
`https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew.git`
as a remote in `C:/Users/nelim/Documents/rimworld`, then verify that registration and the already
established standalone/public/licence/naming/documentation/pushed-commit evidence remain current.
This audit deliberately did not change Git configuration, move files or push anything.
The icon, settings, localization and runtime work listed above concerns later transitions.

## Historical records (superseded where inconsistent with the audit above)

The following records are retained as history, not current certification. In particular,
statements that stage stays done, that compilation is unnecessary, and that localization is
complete do not override the current front matter and audit.

# Adaptive Storage Neolithic Renew — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it. It is tracked by the mod's own repository,
as Anima Song's is.

The fields above were read off the disk on 2026-09-12, and the three that cannot be read off it
were confirmed the same day.

- **`stage` stays `done`.** The port, the showcase, the icon and the test scenarios are finished
  and pushed. Never having been run is not what this field carries: `tested` is a stage of its
  own, and the run itself is recorded by `tested_on` and by the first `remaining` line.
- **`tested_on` stays empty**, meaning never. That is true of nearly the whole repository, not
  only here.
- **The original `remaining` entries carry three lines.** The first two are checks that were impossible rather than
  skipped: the mod has never run, and the case of the Russian `DefInjected` folder only fails on
  a case-sensitive filesystem, which is the Steam Deck and not this machine. The third is a real
  known fault, small and cosmetic.

One field was repaired rather than confirmed: `workshop` held the stray text `reste:`, left by
the sweep that wrote this file. It is empty, which means the mod has never been uploaded.

`stage` vocabulary: `port`, `showcase`, `preTest`, `done`, `tested`, `published`.

`licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.

## What makes this sheet stale

Three events, and none of them corrects it on its own.

- **A run in game.** Fill `tested_on`, move `stage` to `tested`, and strike from `remaining` what
  the run covered. The first four scenarios of `TESTING.md` fall on the first successful load.
- **A Workshop upload.** Fill `workshop` with the item id and move `stage` to `published`.
- **A new icon.** Drop the `defect` line. The regeneration prompt is kept in the mod's showcase
  sheet, which lives in the monorepo and is ignored there.

- **`dependencies`** — `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.

## Preview overlay — 2026-09-12

- Delivered image: `Mod/About/Preview.png`, 896 x 504, 608,863 bytes (under 900 KB).
- Text-free illustration: `Art/Preview.png`, copied unchanged from the preserved
  `Art/Preview-source.png`. No replacement illustration was generated; the original source
  remains available under its distinct existing name. The existing crop is retained.
- Composition and layout parameters: `Art/preview.html`; sole colour reference:
  `Art/preview-palette.json`; renderer: `Art/render-preview.cjs`.
- The veil follows the warm stone/packed-earth surfaces, slightly desaturated. The blue
  accent comes from the folded textile in the storage basket, with saturation and lightness
  increased. Its cool hue clearly separates it from the dominant warm ochre family and
  the secondary ink at both output sizes. The secondary ink follows the dominant ochre
  family of the lit stone, wicker and earth, lightened to pass contrast while retaining
  its colour. It colours the Renew suffix; no status tag is displayed
  because this mod is public/open and its name has no unofficial suffix.
- Existing title and summary preserved, including case and word order. Strong title words
  and summary use exactly the same primary ink. Renew is a direct title span at 0.65em
  (29.9 px), secondary ink, still weight 600. Text begins at (50, 54); title 46 px/600,
  summary 21 px/400; rule 58 x 3 px.
  The dark veil holds its opacity over the text before fading, to maintain contrast across
  the illuminated floor. Text shadow follows the guide. Version 1.6 is read from the highest
  stable supportedVersions entry in the delivered About.xml, not hardcoded.
- Actual fonts verified through Chrome's platform-font API after `document.fonts.ready`:
  Segoe UI Semibold for the title and suffix, Segoe UI Regular for the summary, Segoe UI Bold for the
  version; no fallback. Badge triangle and rotated version use the guide's coordinates.
- Contrast measured on a separate render with text hidden, over EVERY pixel in each full
  text rectangle: primary title minimum 6.30:1; Renew suffix 4.87:1; summary 6.07:1;
  version on opaque badge 6.72:1.
  Tag contrast is not applicable because there is no tag. Evidence: `Art/preview-qa.json`
  and `Art/preview-background-qa.png`.
- Visually checked at 896 x 504 and at 268 px wide (`Art/preview-268.png`): title and version
  identifiable, reduced Renew suffix readable, blue rule visible and distinct from the ochre
  suffix, no overlap or clipping. The small summary is intended for
  the full-size image. Preview, composition sources, palette and QA evidence were pushed
  to GitHub on origin/main in commit 77936db. No Workshop publication performed.

## Automated tests — 2026-09-12

- `tests/Test-Mod.ps1`: 747 assertions passed locally. Covers XML syntax, metadata including
  the published GitHub link, texture paths and casing, translation keys, and static stone
  generator contracts with five, six and seven stone types (15, 18 and 21 buildings).
- Tests, documentation and `.github/workflows/test.yml` were pushed to origin/main in
  commit 9c43cc9. The workflow runs on pushes and pull requests; its remote result has not
  been verified in this session.
- These static checks do not execute the framework in RimWorld or verify rendering and
  hauling. Manual scenarios remain unexecuted, so `tested_on` stays empty and `stage`
  stays `done`.

## Translation audit — 2026-09-13

Applied the new parent-workspace PUBLISHING.md / TRANSLATIONS.md gate to revision
`b0cf4fdff6fd8e569d85c4f631ce92361d8dc675` plus the changes in this working tree.
The existing stage and unexecuted in-game checks are preserved. French remains `partial`;
this audit does not certify the new gate as passed.

- Inventory: all 24 XML files under `Mod/Defs`, all three `Mod/Patches` templates and
  both language folders. There is no owned C# code, assembly, Keyed UI, LoadFolders file
  or version-specific content. Nine concrete buildings contribute 18 label/description
  fields; two research projects contribute four; the research tab contributes one.
  Generated buildings contribute 30 fields for Core, or 36 with Odyssey: 53 or 59
  English/French texts in total. Abstract parent text is counted on concrete children.
- Localization: owned text uses Def label/description fields, including generated labels;
  these admit DefInjected translation. English comes from the Defs and generator templates,
  so an English language folder would duplicate the native source. No owned parameterized
  UI sentences, rich-text tags or grammar rules were found. Graphics identifiers, texture
  paths, dropdown defNames and metadata are not player-facing translation entries.
- French: all 59 Core/Odyssey entries are nonempty and were read for meaning. Fixed
  `brute` to `brut` for granite, sandstone, limestone and marble plinth descriptions.
  Existing ardoise agreement is correct. The automatic generators also accept arbitrary
  third-party chunks, whose generated identities have no bundled French entries: they
  fall back to English. A finite list of six stones does not establish universal coverage.
- `pwsh -NoProfile -File tests/Test-Mod.ps1`: **1,276 assertions passed**. Added checks
  against concrete Defs and inherited English fields, French coverage for both supported
  stone sets, nonempty values, placeholders and duplicate French keys across files of
  the same Def type. The seven-stone scenario checks English but explicitly does not
  certify French coverage for an unknown stone.
- `pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod`:
  **112 keys, zero reported errors, 66 UNVERIFIED generated paths** (36 French, 30 Russian).
  The script explicitly does not implement DefGenerator/PatchGenerator. The standalone
  template tests provide additional structural evidence, but do not turn these findings
  into a successful check against the actual runtime.
- Dependency boundary: inspected the installed framework's `Defs/ThingDefBase.xml`;
  the inherited storage base adds no literal label/description. Storage UI remains
  framework/game-owned. Plinths reference vanilla `NamerArtFurniture` and
  `ArtDescription_Furniture`; those defs exist in installed Core. Their rendered names,
  descriptions and inherited UI still need English/French testing in game.
- Russian is outside the new EN/FR gate. Its six missing Odyssey entries and the existing
  Steam Deck check remain unresolved. Nothing was published or tested in RimWorld.

Reaudit the affected fields after changes to Defs, patches or language resources. Resolve
the French coverage gap and generated-target verification before claiming the gate passed.

## Translation implementation and revalidation — 2026-09-13

This update supersedes the missing-third-party-French and unresolved-generated-target
findings in the earlier translation audit. It does not override the concurrent workflow
or settings audit, and does not certify in-game behavior.

- Added `Source/GeneratedTranslations.cs` and the compiled `Mod/Assemblies/NeolithicRenew.dll`.
  Harmony is now an explicit dependency. The mod constructor patches the early language
  injection pass with a postfix, before vanilla generates blueprints and frames. This order
  was verified in the installed RimWorld 1.6 PlayDataLoader and LoadedLanguage code.
- Six English/French Keyed resources provide complete phrases, with a named CHUNK parameter
  for labels. The fallback uses the chunk's translated label and preserves successful
  DefInjected entries per field. English native text, languages without these resources,
  and unrelated building identities remain unchanged. This adds no settings page or button.
- Rebuilt successfully with `pwsh -NoProfile -File Source/Build.ps1`. The installed game
  reference produces CS1684 about System.Span; the code does not use that type.
- Standalone tests: 1,310 assertions passed. Installed-assembly tests: 28 assertions passed,
  including the delivered fallback code and the actual GeneratorOperation.dll using all
  six installed stone chunks. Field tests bypass Unity constructors and substitute resource
  parameters through a callback, so they are not a full engine or Harmony integration test.
- The shared Check-DefInjected script, given those materialized Defs and the framework,
  checked 112 paths with zero errors and zero UNVERIFIED paths. The earlier 66 unresolved
  generated paths are resolved by this additional evidence. Exact command: TESTING.md.
- Evidence and source/binary SHA-256 hashes: `tests/translation-validation-2026-09-13/`.
  The separate concurrent audit snapshot is historical and was not rewritten.
- Still unverified: full game load and hook execution, blueprints/frames, finished buildings,
  plinth art and UI in English/French. A third-party stone's own untranslated material name
  remains that mod's responsibility. Settings/runtime gates from the workflow audit remain
  pending; top-level partial statuses are preserved for that reason.
