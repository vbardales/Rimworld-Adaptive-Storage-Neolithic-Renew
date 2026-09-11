# Changelog

All notable changes to this mod are documented here.

## [1.0.0] — 2026-09-05

First release. Port of Soul, Phaneron and bradson's **Adaptive Storage Neolithic Module** to
RimWorld 1.6.

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
  Russian still covers the five pre-1.6 chunks.

### Changed

- `packageId` changed from `adaptive.storage.neolithic` to `nelim.adaptivestorageneolithic`, and
  the original declared in `<incompatibleWith>`. The two mods share every `defName`; running both
  would duplicate all 71 defs.
- `<supportedVersions>` set to 1.6.
- `<description>` rewritten. `<url>` points at this repository.
- `<author>` reads `Soul, Phaneron, bradson - 1.6 port: nelim`.

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
  the rest of that day, before receiving its own — see below. `<modIconPath>` stays gone either
  way: it named the authors' texture.

### Added

- `About/ModIcon.png` (128x128, 28 KB) and `About/Preview.png` (896x504, 630 KB), both generated
  with an image model rather than cropped out of the mod, and the only files here that are not
  the authors'. The icon is the repository's mascot with the mod's containers around her; the
  preview is a neolithic storeroom where every container shows its contents, which is the one
  thing this mod does.

  The preview replaces the authors' own showcase, which had shipped unchanged until now. Nothing
  was wrong with theirs — the MIT licence covers it and it was theirs to lend — the port simply
  has its own. Both originals are kept at `Art/Preview-original.png` and
  `Art/ModIcon-original.png`, and the full-resolution generator output at
  `Art/Preview-source.png` and `Art/AdaptiveStorageNeolithic-icon-source.png`.

### Unchanged

- All 71 defs, with their original `defName`s: 46 `AdaptiveStorage.GraphicsDef`, 18 `ThingDef`,
  3 `ResearchProjectDef`, 3 `DesignatorDropdownGroupDef`, 1 `ResearchTabDef`. Every element in
  them still maps to a field that exists in 1.6 — 28 files checked by reflection against
  `Assembly-CSharp.dll` and the framework's 1.6 assemblies, zero unknown fields.
- The three patches, `ChunkStorage.xml`, `LargePot.xml` and `Plinth.xml`. They carry no
  `PatchOperationFindMod` guard and need none: they target `ChunkRockBase`, a Core def.
- All 352 texture files, in both `.png` and `.dds`.
- `About/Preview.png`, the authors' own showcase.
- `LICENSE` — the MIT notice, `Copyright (c) 2023 Soul, Phaneron, bradson`, verbatim, at the
  repository root and inside `Mod/`.
