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

The `<author>` field reads `Soul, Phaneron, bradson - 1.6 adapted by Nelim`.

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
## The two images, which are the only things here that are not the authors'

Both were generated with DALL-E (OpenAI) on 2026-09-11, under direction, and neither borrows a
pixel from the mod. They are offered under the same MIT terms as the rest of the port work.

- **`About/ModIcon.png`** (128x128) — the repository's mascot, with the mod's containers around
  her. An icon is the one file that speaks for the port rather than for the mod it carries, so
  it must not be the source author's art. See below for what used to be there.
- **`About/Preview.png`** (896x504) — a neolithic storeroom where every container shows its
  contents, which is the one thing this mod does. It replaces the authors' own showcase, which
  had been carried over unchanged until this date and is kept at `Art/Preview-original.png`,
  outside the published folder. Their showcase was never a problem: the MIT licence covers it
  and it was theirs to lend. The port simply has its own now.

Full-resolution sources are kept at `Art/AdaptiveStorageNeolithic-icon-source.png` and
`Art/Preview-source.png`. Neither overwrites the authors' files, which sit beside them under
their own names.

## What was left out of the published folder

Four things, none of them content:

- **`About/PublishedFileId.txt`** — the authors' own Workshop item id. Carrying it forward would
  aim the first upload at *their* Workshop item instead of creating a new one.
- **The mod icon, in all three places it lived.** `About/ModIcon.png` went with the
  repository-wide icon pass of 2026-09-11, on the rule that a port must not wear the source
  author's art as its own identity — the one file that is supposed to speak for the port rather
  than for the mod it carries. That deletion settled nothing on its own: `About/ModIcon.png` is
  only RimWorld's fallback, and `<modIconPath>ASNeolithic/ModIcon</modIconPath>` went on resolving
  to `Textures/ASNeolithic/ModIcon`, which is the authors' icon shipped whole — not even a crop.
  So the field is gone too, with `ModIcon.png` and `ModIcon.dds` beneath it. The original is kept
  at `Art/ModIcon-original.png`, outside the published folder.

  The mod shipped no icon at all for the rest of that day. It now has its own, generated rather
  than cropped, and `About/ModIcon.png` is once more the file RimWorld reads. `<modIconPath>`
  stays gone: restoring it would point back at the authors' texture and undo the whole point.
- **`About/Preview.dds`** (1.2 MB) and **`About/ModIcon.dds`** — never read by anything.
  `Verse.ModMetaData` looks for the literal filenames `About/Preview.png` and `About/ModIcon.png`,
  verified by reading the two property getters out of `Assembly-CSharp.dll`. The `.dds` pair in
  `About/` is a texture converter's overspill; the `.dds` files under `Textures/` are not, and
  they are all kept.
- **`Misc/`** — nine shelved textures with an `info.txt` saying they are unused and are not
  loaded from that folder. Kept in this repository under `Art/shelved-textures/`, out of the
  published folder.

## What changed in the port

**Nothing in the defs; one change in the patches, below.** Every XML element in the mod still maps to a field that exists on the
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
the official RimWorld translation of *vacstone*, **vaccolithe**. Russian now covers all six as well: the six
vacstone entries were written by Claude with the official Russian Odyssey term, **вакуумит**, following
the phrasing of the existing entries, and have not been reviewed by a Russian speaker.

**A stone chunk without a colour is left alone.** The three generators copy `graphicData/color` from each chunk into the building
they build. A player reported on the original mod's page (May 2026) that a chunk without that node, the crystal chunk of *Biomes!
Caverns*, took the game down, because the template expression could not be resolved. The selectors now read
`Defs/ThingDef[@ParentName="ChunkRockBase"][graphicData/color/text()]`, in both operations of each patch, so such a chunk gets no
pot, plinth or chunk stack instead of a crash. `tests/Test-Mod.ps1` checks the selection, and `tests/Test-InstalledTranslations.ps1`
feeds the framework's own generator a chunk with no colour and one with an empty colour: with the old selectors that generator
raises an error, with the new ones it does not. Not yet seen in a running game. The cost is that a stone with no colour of its
own in its def gets no buildings.

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
  file under `Textures/` is reachable from a def or from the `Patches/` generators. The one
  exception used to be `ASNeolithic/ModIcon`, reachable only from `modIconPath`; both are gone.
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
