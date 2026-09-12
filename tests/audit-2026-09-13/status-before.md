---
localization: complete
translation_en: complete
translation_fr: partial
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
stage:        done
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
dependencies: declared
showcase:     complete
tested_on:
workshop:
remaining:
  - defect: French has no entries for buildings generated from additional third-party stone chunks
  - unverified: generated DefInjected targets require verification with the actual framework; the shared checker does not execute DefGenerator
  - unverified: exercise all inventoried text in English and French in game, including generated buildings and plinth art
  - unverified: never seen running; the eleven scenarios are written out in TESTING.md
  - unverified: the Russian translation only proves itself on a case-sensitive filesystem, so on the Steam Deck
  - defect: the icon carries four containers where its sheet called for one, and they merge into one mass at 32 px
session:      local_db1227c9-d5d1-40e9-991f-1efee093b86b
updated:      2026-09-12, confirmed by the session that holds this mod
---

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
