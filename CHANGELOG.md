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
- `About/ModIcon.png`, with the repository-wide icon pass of 2026-09-11: a port should not wear the
  source author's art as its own identity. That deletion alone does not settle it — `About/ModIcon.png`
  is the fallback, and `<modIconPath>` still resolves to `Textures/ASNeolithic/ModIcon`, which is
  the authors'. An icon of this mod's own, to the house style, is owed before publication.

### Unchanged

- All 71 defs, with their original `defName`s: 46 `AdaptiveStorage.GraphicsDef`, 18 `ThingDef`,
  3 `ResearchProjectDef`, 3 `DesignatorDropdownGroupDef`, 1 `ResearchTabDef`. Every element in
  them still maps to a field that exists in 1.6 — 28 files checked by reflection against
  `Assembly-CSharp.dll` and the framework's 1.6 assemblies, zero unknown fields.
- The three patches, `ChunkStorage.xml`, `LargePot.xml` and `Plinth.xml`. They carry no
  `PatchOperationFindMod` guard and need none: they target `ChunkRockBase`, a Core def.
- All 352 texture files, in both `.png` and `.dds`.
- `About/Preview.png` and `Textures/ASNeolithic/ModIcon.png`, the authors' own.
- `LICENSE` — the MIT notice, `Copyright (c) 2023 Soul, Phaneron, bradson`, verbatim, at the
  repository root and inside `Mod/`.
