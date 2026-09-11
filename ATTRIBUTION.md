# Adaptive Storage Neolithic Module — attribution

A 1.6 port of **Adaptive Storage Neolithic Module**, by **Soul**, **Phaneron** and **bradson**
([3033901895](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895)).

## Status: public, by written permission

This is the rare case where nothing has to be assumed. The mod ships a `LICENSE` file — the
**MIT licence**, `Copyright (c) 2023 Soul, Phaneron, bradson` — and its README says so in as many
words: ASF and all of its modules are fully open source, and the only thing the authors ask is
that the original authors be credited.

So this port rests on a permission that was given in writing, not on an author's silence. Three
things follow, and all three are done:

- **The `LICENSE` file travels with the mod.** MIT requires the notice to accompany every
  distribution, and Steam distributes as surely as GitHub does — so the file is at the root of
  this repository **and** inside `Mod/`, the folder that gets published.
- **The original copyright notice is kept verbatim.** It still reads
  `Copyright (c) 2023 Soul, Phaneron, bradson`. Nothing of mine is substituted for it, and no
  second copyright line is added: the port did not create new authorship worth claiming.
- **No removal-on-request clause.** That clause is the convention for abandoned mods republished
  without permission. It has no place here — the authors already said yes, and the terms of the
  yes are in the file.

The `<author>` field reads `Soul, Phaneron, bradson - 1.6 port: nelim`.

## What was carried over

The whole mod, unchanged in substance: 71 defs, three patches, 352 texture files, and the French
and Russian translations.

- **46 `AdaptiveStorage.GraphicsDef`**, 18 `ThingDef` (9 buildings and 9 abstract bases),
  3 `ResearchProjectDef` (one abstract), 3 `DesignatorDropdownGroupDef`, 1 `ResearchTabDef` —
  all with their original `defName`s.
- **`Patches/ChunkStorage.xml`, `LargePot.xml`, `Plinth.xml`**, which build one large pot, one
  plinth and one chunk stack per stone chunk in the game.
- **`Textures/ASNeolithic/`**, byte for byte, in both the `.png` and `.dds` forms the original
  ships. RimWorld 1.6 accepts both — `.png`, `.jpg`, `.jpeg`, `.psd`, `.dds` — and the `.dds`
  copies are the authors' deliberate choice, not redundancy.
- **`Languages/French/`**, by [Elzetia](https://github.com/elzetia), and **`Languages/Russian/`**,
  translator unnamed in the mod.
- **`About/Preview.png`** and **`Textures/ASNeolithic/ModIcon.png`**, the authors' own.

## What was left out of the published folder

Four things, none of them content:

- **`About/PublishedFileId.txt`** — the authors' own Workshop item id. Carrying it forward would
  aim the first upload at *their* Workshop item instead of creating a new one.
- **`About/ModIcon.png`**, removed on 2026-09-11 with the repository-wide icon pass: an icon taken
  from the source mod is the source author's art standing in for the identity of the port, which
  is the one place a port should speak for itself. **The question is not closed by that deletion.**
  `About/ModIcon.png` is only RimWorld's fallback; the icon actually shown comes from
  `<modIconPath>ASNeolithic/ModIcon</modIconPath>`, which resolves to
  `Textures/ASNeolithic/ModIcon` — still the authors' art. This mod needs its own mascot icon, to
  the ModIcon block of `STYLE_RIMWORLD.md`, before it is published.
- **`About/Preview.dds`** (1.2 MB) and **`About/ModIcon.dds`** — never read by anything.
  `Verse.ModMetaData` looks for the literal filenames `About/Preview.png` and `About/ModIcon.png`,
  verified by reading the two property getters out of `Assembly-CSharp.dll`. The `.dds` pair in
  `About/` is a texture converter's overspill; the `.dds` files under `Textures/` are not, and
  they are all kept.
- **`Misc/`** — nine shelved textures with an `info.txt` saying they are unused and are not
  loaded from that folder. Kept in this repository under `Art/shelved-textures/`, out of the
  published folder.

## What changed in the port

**Nothing in the defs.** Every XML element in the mod still maps to a field that exists on the
1.6 class — checked by reflection with `scripts/Check-XmlFields.ps1` against RimWorld's
`Assembly-CSharp.dll` and the framework's own 1.6 assemblies, 28 files, zero unknown fields. Every
C# type the XML names still exists in those assemblies. No renames, no removals, nothing to
rewrite.

**`Languages/Russian/Definjected/` → `DefInjected/`.** RimWorld looks for the exact string
`DefInjected` — the literal is in `Verse.LoadedLanguage.LoadData`, alongside the legacy-name
warnings for `CodeLinked` and `DefLinked`. On Windows, NTFS ignores case and the misspelling
worked by accident. On a case-sensitive filesystem — Linux, and therefore the Steam Deck — the
folder is not found, the game falls back to English, and **nothing is logged**. This is the same
failure mode this repository already documents for `LoadFolders.xml`.

**French now covers vacstone.** 1.6 added a sixth stone chunk, `ChunkVacstone`, with the Odyssey
expansion. The three patches generate from *every* `ThingDef` whose `ParentName` is
`ChunkRockBase`, so the mod picks it up on its own and produces `ASNeolithicLargePotChunkVacstone`,
`ASNeolithicPlinthChunkVacstone` and `ASNeolithicChunkStorageChunkVacstone` — but Elzetia's French
was written when there were five, so those three came out in English. Six French keys added, using
the official RimWorld translation of *vacstone*, **vaccolithe**. Russian still covers five: I do
not write Russian, and inventing it would be worse than leaving the gap visible.

**`packageId`** changed from `adaptive.storage.neolithic` to `nelim.adaptivestorageneolithic`, and
the original is declared in `<incompatibleWith>`: the two share every `defName`, so running both
would duplicate all 71 defs.

**`<supportedVersions>`** set to 1.6 alone. **`<description>`** rewritten.

## What did not change

The buildings themselves: their stats, their costs, their stuff categories, their storage filters,
their graphics and every stage of them, the two research projects and their positions in the tab.
The original `defName`s are kept, so a save moves between the two mods without losing anything.

## Notes from the port

- **The mod ships no C# at all.** The only class it names outside vanilla is
  `AdaptiveStorage.Extension`, and the three patches are driven by
  `GeneratorOperation.DefGenerator` and `GeneratorOperation.PatchGenerator`. All three live in the
  framework, and all three are present in its 1.6 assemblies — confirmed by loading
  `AdaptiveStorageFramework.dll`, `GeneratorOperation.dll` and `1ITransformable.dll` from the
  framework's `1.6/Assemblies/` and enumerating the types.
- **The three patches carry no `PatchOperationFindMod` guard, and do not need one.** Their xpath
  is `Defs/ThingDef[@ParentName="ChunkRockBase"]`, and `ChunkRockBase` is a Core def with five
  children in Core and one in Odyssey. The xpath can never come up empty, so the failure that
  broke Medieval Homestead — a patch aimed at a mod that is not installed — cannot occur here.
- **No orphan textures.** All 91 `texPath` and `uiIconPath` values resolve to a file, and every
  file under `Textures/` is reachable from a def, the `Patches/` generators, or `modIconPath`.
  The 16 MB is all load-bearing.
- **`ASFAdaptiveStorage`, the research tab, is defined by this module and no other.** It carries
  the framework's `ASF` prefix, which reads as if the framework owned it, but the framework
  defines only `AdaptiveStorageBase`, `AdaptiveStorageMinifiableBase` and the content-label
  styles. None of the other 28 Adaptive Storage modules installed here references the tab, so
  there is no duplicate-defName risk.

## Third-party content

- **Adaptive Storage Framework**, by Soul, Phaneron and bradson
  ([3033901359](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359)) — a declared
  dependency, MIT, supporting 1.4, 1.5 and 1.6. Studied by reflection to confirm its 1.6 API.
  Nothing from it is redistributed here.

## Adoption

If I do not answer within a reasonable time after being contacted, anyone may freely update this
or any other of my mods, including publishing a continuation of it. All credit must be preserved.
