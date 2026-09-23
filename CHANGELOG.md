# Changelog

All notable changes to this mod are documented here.

## [Unreleased]

### Changed

- Stopped tracking the 171 `.dds` textures in Git and ignore `*.dds`. Every one has a `.png` twin in the same folder, which
  is tracked and which RimWorld loads (`tests/Test-Mod.ps1` accepts either extension). The `.dds` files stay on disk locally.

- Rebased the delivered mod content on the original authors' current GitHub `main` (`2bc3fe4`)
  instead of the older Workshop package.
- Adopted upstream's stone-as-stuff architecture: the large stone pot, stone plinth and chunk stack
  now use the framework's `ASFStoneChunks` category rather than generating one def per stone.
- Adopted upstream's save-compatibility patch, current balance values, graphics definitions, shadows,
  stack counts and integrated textures.
- Removed the continuation-only Harmony translation assembly and Harmony dependency; material names
  now come from RimWorld's ordinary stuff-label system.
- Reworked the static and Pickle checks for stuffed buildings, including granite, vacstone and a
  third-party stone. These revised runtime scenarios have not yet been played.

### Fixed

- Kept the Russian folder at the exact `DefInjected` casing required on Linux and Steam Deck.
- Corrected French adjective agreement in the stone plinth description.

The `1.0.0` section below describes the already-published, Workshop-based first release and is retained
as release history; its implementation has now been superseded.

## [1.0.0] — 2026-09-22

First release. Port of Soul, Phaneron and bradson's **Adaptive Storage Neolithic Module** to
RimWorld 1.6. No earlier version of this repository was ever tagged or uploaded, so everything
below is part of this one release.

### Fixed

- `Languages/Russian/Definjected/` renamed to `DefInjected/`. RimWorld matches the literal string
  `DefInjected` — the constant is in `Verse.LoadedLanguage.LoadData`. On Windows the misspelling
  worked because NTFS ignores case; on a case-sensitive filesystem, the Steam Deck included, the
  folder was never found and the whole Russian translation was dropped with nothing written to
  the log.
- French translation extended to vacstone, the sixth stone chunk, added by Odyssey in 1.6. The
  three patches generate a large pot, a plinth and a chunk stack from every child of
  `ChunkRockBase`, so `ASNeolithicLargePotChunkVacstone`, `ASNeolithicPlinthChunkVacstone` and
  `ASNeolithicChunkStorageChunkVacstone` already existed and already worked — they simply had no
  French label. Six keys added, using RimWorld's own French for *vacstone*, **vaccolithe**.
- Russian extended to vacstone as well, six keys added using Odyssey's own Russian term,
  **вакуумит**. Written by Claude, following the phrasing of the existing entries; not reviewed by
  a Russian speaker.
- Corrected French adjective agreement in four stone plinth descriptions (*brute* → *brut*).
- A stone chunk with no colour of its own — the crystal chunk of *Biomes! Caverns*, reported on
  the original mod's page in May 2026 — took the game down: the three generators copy each
  chunk's `graphicData/color` into the building they build, and a chunk without one left a
  template expression unresolved. The generators' selectors now require a colour
  (`[graphicData/color/text()]`); such a chunk gets no pot, plinth or chunk stack instead of
  crashing. Checked against the framework's own generator; not yet tried with the mod that
  reported the original crash.

### Changed

- `packageId` changed from `adaptive.storage.neolithic` to `nelim.adaptivestorageneolithic`, and
  the original declared in `<incompatibleWith>`. The two mods share every `defName`; running both
  would duplicate all 71 defs.
- `<supportedVersions>` set to 1.6.
- `<description>` rewritten, ending with the required IF I GO QUIET, AI-GENERATED, THANKS and
  source-link sections. `<url>` points at this repository.
- `<author>` reads `Soul, Phaneron, bradson - 1.6 adapted by Nelim`.
- Buildings generated from a stone chunk belonging to a third-party mod are now translated into
  French too, through a small Harmony postfix on the language-injection pass, using that mod's
  own name for the stone. Harmony is now an explicit `modDependencies` entry, needed by that code.

### Added

- `About/ModIcon.png` (128x128, 28 KB) and `About/Preview.png` (896x504, 630 KB), both generated
  with DALL-E (OpenAI) rather than cropped out of the mod, and the only files here that are not
  the authors'. The icon is the repository's mascot with the mod's containers around her; the
  preview is a neolithic storeroom where every container shows its contents, which is the one
  thing this mod does.

  The preview replaces the authors' own showcase, which had shipped unchanged until now. Nothing
  was wrong with theirs — the MIT licence covers it and it was theirs to lend — the port simply
  has its own. Both originals are kept at `Art/Preview-original.png` and
  `Art/ModIcon-original.png`, and the full-resolution generator output at
  `Art/Preview-source.png` and `Art/AdaptiveStorageNeolithic-icon-source.png`.
- `Source/GeneratedTranslations.cs`, compiled to `Mod/Assemblies/NeolithicRenew.dll`: the Harmony
  postfix that lets a building generated at load time carry its translated label before vanilla
  copies it onto blueprints and frames.
- `tests/Test-Mod.ps1` (1,410 assertions) and `tests/Test-InstalledTranslations.ps1`: static and
  installed-assembly checks covering XML validity, generated identities, translation coverage,
  the icon and preview files, and the fix above.
- `tests/Pickle/`: an in-game Pickle (Gherkin) suite, 41 scenarios across seven features plus
  Workshop-capture and third-party-stone/Russian scenarios, run in the WSL in English, French and
  Russian, with and without a stone mod from another author. See `tests/Pickle/README.md` for
  what ran and what did not.
- `PUBLICATION.md`: the order and content of the Workshop page's screenshots, the thank-you
  messages, the dependency/DLC review and the adult-content reading.

### Removed from the published folder

- `About/PublishedFileId.txt` — the original authors' Workshop item id. Left in place, the first
  upload would have targeted their item instead of creating a new one.
- `About/Preview.dds` (1.2 MB) and `About/ModIcon.dds`. `Verse.ModMetaData` reads the literal
  filenames `About/Preview.png` and `About/ModIcon.png` and nothing else, so neither file was ever
  loaded. The `.dds` textures under `Textures/` are a different matter — RimWorld does accept
  `.dds` there — and all of those are kept.
- `Misc/`, nine textures the mod's own `info.txt` describes as shelved and never loaded. Moved to
  `Art/shelved-textures/`, outside the published folder.
- The mod icon, everywhere it lived: `About/ModIcon.png` with the repository-wide icon pass of
  2026-09-11, then the `<modIconPath>` field and the `Textures/ASNeolithic/ModIcon.png` and
  `.dds` it pointed at. A port must not wear the source author's art as its own identity, and
  here it was not even a crop — it was the authors' icon file, shipped whole and named by the
  About. Removing only the `About/` fallback had changed nothing on screen. The original is kept
  at `Art/ModIcon-original.png`, outside the published folder. The mod went without an icon for
  the rest of that day, before receiving its own — see above. `<modIconPath>` stays gone either
  way: it named the authors' texture.

### Unchanged

- All 71 defs, with their original `defName`s: 46 `AdaptiveStorage.GraphicsDef`, 18 `ThingDef`,
  3 `ResearchProjectDef`, 3 `DesignatorDropdownGroupDef`, 1 `ResearchTabDef`. Every element in
  them still maps to a field that exists in 1.6 — 28 files checked by reflection against
  `Assembly-CSharp.dll` and the framework's 1.6 assemblies, zero unknown fields.
- The three patches, `ChunkStorage.xml`, `LargePot.xml` and `Plinth.xml`, aside from the colour
  fix above. They carry no `PatchOperationFindMod` guard and need none: they target
  `ChunkRockBase`, a Core def.
- All 352 texture files, in both `.png` and `.dds`.
- `About/Preview.png`, the authors' own showcase.
- `LICENSE` — the MIT notice, `Copyright (c) 2023 Soul, Phaneron, bradson`, verbatim, at the
  repository root and inside `Mod/`.
