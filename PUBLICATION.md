# Publishing Adaptive Storage Neolithic Renew

Publication sheet for Workshop item `3806101377`, updated after integrating the current upstream source on 2026-09-22; gallery section revised on 2026-10-06.
The item already exists, so a game upload updates its files and tags but does not resend the description. The description is sent by the CI (`update_description`) from the Markdown block below, converted to BBCode (checked identical to the previous BBCode block on 2026-10-06).

In-game Pickle pass of 2026-09-23 (`STATUS.md`, `docs/runs/2026-09-23-tested-milestone.md`). The integrated tree follows upstream GitHub `main` at `2bc3fe4`, uses stone chunks as stuff,
and has no continuation DLL or direct Harmony dependency. **The mod is at `published`** (2026-09-24): `1.1.0` uploaded the content and `1.1.1` the header image (tags `v1.1.0`, `v1.1.1`; evidence in `STATUS.md`). The page was checked against this file on the same day. What remains manual, and the owner's: the Steam comments and thanks, and any change of visibility. The checklist for the next release is `docs/RELEASE_TEMPLATE.md`.

## Steam description

Single source (PUBLISHING.md, 2026-09-25): the CI converts this Markdown to the Steam BBCode and to the plain text of the `<description>` in `Mod/About/About.xml` (`node .github/scripts/sync-about-description.mjs --write`). Edit it here only.

```markdown
Tribal storage for the [Adaptive Storage Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359): baskets of wood, leather and fabric, large pots for raw food, stacked stone chunks, wood and hay piles, a meal shelf, textile and leather bundles, and carved plinths for displaying a single item.

Every container shows what is inside it. Fill a basket and you see the basket fill up.

Two neolithic research projects unlock the set, both available from a tribal start.

**REQUIRES** the [Adaptive Storage Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359). It does nothing on its own.

I am not the author of this mod. The buildings, artwork and design are Soul's, Phaneron's and bradson's. This continuation follows their current GitHub source rather than the older Workshop upload. Credit goes to them; mistakes in the 1.6 adaptation are mine.

## ORIGINAL MOD

[Adaptive Storage Neolithic Module](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895)
Current upstream source: [GitHub](https://github.com/bbradson/Adaptive-Storage-Neolithic-Module)

## WHAT CHANGED

The continuation is based on the original authors' current main branch. That branch replaces one generated building per stone type with three buildings made from the framework's ASFStoneChunks stuff category. Its compatibility patch migrates the older generated defNames and their blueprints and frames to the new buildings while preserving the stone chunk as stuff. This also avoids the old crash path for chunks without their own colour.

The current upstream definitions, balance values, graphics definitions and integrated textures are preserved. RimWorld 1.6 is declared, and the Russian DefInjected folder uses the exact casing required on Linux and Steam Deck.

## COMPATIBILITY

The original mod is declared incompatible because both packages define the same content. Run one or the other.

Odyssey, Biotech and stone mods are optional. Compatible stone chunks can use the shared ASFStoneChunks category without one generated building definition per stone type.

Known soft incompatibilities reported on the original page, not revalidated here: Alpha Biomes chunks cannot stuff the stacked chunks, Expanded Woodworking woods cannot stuff the wood pile because it uses Timber, and Combat Extended.

Content mod: removing it mid-save destroys any of these containers already built and drops what was inside them.

## LICENCE

This mod is MIT licensed by its authors, and the LICENSE file travels with it here and in the repository.

## IF I GO QUIET

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

## AI-GENERATED

The adaptation audit, automated and in-game test work, and documentation were prepared with Claude Code (Anthropic), Codex and ChatGPT (OpenAI), under human direction and review. The mod icon and preview image were generated with DALL-E (OpenAI). The buildings, their artwork, textures, stats and current stone-as-stuff implementation are the original authors' work.

## THANKS

Soul, Phaneron and bradson, for the mod, the [Adaptive Storage Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359), the current source work, and the open licence.

Elzetia and MrBlack-JB, for the French and Russian translations included upstream.

[Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678), [RimLogging](https://steamcommunity.com/sharedfiles/filedetails/?id=3733484696) and [PickleTools](https://steamcommunity.com/sharedfiles/filedetails/?id=3806142401) were used for development and testing only; none is a dependency of the distributed mod.

Full attribution and change history: [ATTRIBUTION.md](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/ATTRIBUTION.md). Released under the MIT licence: [LICENSE](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/LICENSE)

[Source code on GitHub](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew)
```

## 2. Images to upload

`Mod/About/Preview.png` is the Workshop header image sent with the mod update; it is not an additional gallery image. `Mod/About/ModIcon.png`
is the in-game mod-list icon and is not uploaded to the gallery.

**Every gallery starts with a byte-for-byte copy of the Preview** (owner's rule, 2026-09-29): `0-preview.png`
is `Mod/About/Preview.png` copied as-is. Recopy it whenever the Preview is regenerated. The six picture files below follow it
in the intended order. **Limits** (PUBLISHING.md, owner, 2026-10-06): any number of images, the whole folder under 8 MB and each image
under 2 MB; the folder with the camp candidates is 6.47 MB, the largest image 0.56 MB (`node scripts/Compress-Gallery.cjs` recompresses and checks).

The six pictures are one story, "noon at the storehouse, seen through the animals that come by", played by Pickle feature
`11-workshop-captures.feature` on the sanctuary save `Nelims-tribe` (named scene `calm-zone-close`, a cream stone square in the open air,
no roof and no wall shadow): the hour is set to noon once and each picture waits five more game minutes than the one before (12:00 to
12:25), with a daytime animal that comes by in each (hen, squirrel, hare, dog, peacock, cat). Pictures 2 and 5 use a closer frame. Evidence
and reasoning in `STATUS.md` (2026-10-06) and `TESTING.md` ("Choosing the gallery place"). The pictures are whole frames cut by
`scripts/Crop-WorkshopScreenshots.ps1` (1280 px wide) and recompressed; the owner validated them and uploaded them by her own word on
2026-10-06, before the recompression (see "Current state").
Upload files 0 to 6 in order (the noon series); files 7 to 12 are the camp series, **candidates** (pawns from Mud's and ETRT tribal clothes, VFE Props and Decor, Venus Touch Waistlines, EyeGenes3: thank their authors if they are published), played by `12-workshop-camp.feature` on the Sanctuary Backlot place `bare-clearing`, evidence `tests/Pickle/Evidence/camp-final-7438e80`; the owner chooses what to upload. Do not mix with the superseded series; do not mix them with the superseded earlier series (the storehouse hut, 2026-09-23 and 2026-10-05).

| # | File | Size | Shows |
| --- | --- | --- | --- |
| 0 | `Art/Gallery/0-preview.png` | 896 x 504, 659,724 bytes | Copy of the Workshop header image (now carries the detoured ModIcon, bottom-left) |
| 1 | `Art/Gallery/1-the-whole-set.png` | 1280 x 720, 519948 bytes | The whole set and its visible contents |
| 2 | `Art/Gallery/2-a-basket-fills-up.png` | 1280 x 720, 390468 bytes | A basket empty, partly filled and full |
| 3 | `Art/Gallery/3-chunk-stacks.png` | 1280 x 720, 412183 bytes | Stone-as-stuff stacks at several fill levels and in two materials |
| 4 | `Art/Gallery/4-large-pots.png` | 1280 x 720, 503219 bytes | Large pots showing different stored foods |
| 5 | `Art/Gallery/5-plinths.png` | 1280 x 720, 506776 bytes | Three plinths displaying items |
| 6 | `Art/Gallery/6-a-stone-from-another-mod.png` | 1280 x 720, 435833 bytes | A compatible third-party stone beside granite |
| 7 | `Art/Gallery/7-the-whole-camp-at-noon.png` | 1280 x 720 | CANDIDATE (camp series, owner 2026-10-08): The whole camp at noon: fire, torches, storage on three sides, Ayla, Doka and a dog |
| 8 | `Art/Gallery/8-three-baskets.png` | 1280 x 720 | CANDIDATE (camp series, owner 2026-10-08): Three baskets (empty, one item, full), Ayla behind them, a chicken |
| 9 | `Art/Gallery/9-fuel-and-stone.png` | 1280 x 720 | CANDIDATE (camp series, owner 2026-10-08): Wood and hay piles, granite and marble stacks, Doka and a hare |
| 10 | `Art/Gallery/10-food-for-noon.png` | 1280 x 720 | CANDIDATE (camp series, owner 2026-10-08): Large pots with different food and a lidded one, Doka, Ayla and the dog |
| 11 | `Art/Gallery/11-the-tribes-treasures.png` | 1280 x 720 | CANDIDATE (camp series, owner 2026-10-08): Three plinths (wood, granite, vacstone) each showing an item, the chief Tahu and a peacock |
| 12 | `Art/Gallery/12-every-stone-in-its-place.png` | 1280 x 720 | CANDIDATE (camp series, owner 2026-10-08): Pot and chunk stack of a stone from another mod beside granite, a cat |

Header assets already valid:

- `Mod/About/Preview.png`: 896 x 504, 659,724 bytes, below Steam's 1 MiB limit. Recomposed 2026-09-29 to carry
  the detoured ModIcon bottom-left, tilted `+15deg` (owner's rule; `Art/PREVIEW.md`).
- `Mod/About/ModIcon.png`: 128 x 128, 36,714 bytes, derived from the owner's `Art/ModIcon-source.png` by the renderer (2026-10-05).

## 3. Dependency to declare on Steam

Exactly one required Workshop item:

- [Adaptive Storage Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359) — Workshop id `3033901359`, packageId
  `adaptive.storage.framework`.

Do not declare Harmony, Odyssey, Biotech, `[K]Extra Stone`, Pickle, RimLogging or PickleTools as dependencies. The last three are
development-only tools. The original module is an incompatibility, not a dependency.

## 4. Steam comments

Both are posted. Read live on their recipient pages under account `nelim17` on 2026-09-22, confirmed again 2026-09-28
(`WORKSHOP_COMMENTS.md`, rows `3033901895` and `3033901359`). Kept here for the record, not as a to-do:

- **Adaptive Storage Neolithic Module** (https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895), 5:39am: thanks the
  author for pointing back to the GitHub repository and says the port now follows its `main`.
- **Adaptive Storage Framework** (https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359), 5:44am: thanks the framework
  author for what every container draws.

Whether the item was already public at posting time is not established: it was private on 2026-09-22 and public when read on
2026-09-24, and Steam shows comment times in the viewer's own zone.

No comment is prepared for Pickle, RimLogging or PickleTools: they are credited in the description as development-only tools, and
PickleTools is the publisher's own private project. Harmony is not used directly by this module. `[K]Extra Stone` is only a test
fixture.

## 5. Other Steam fields

- Adult-content questionnaire: **No**. The mod contains storage furniture and cartoon item graphics; no mature content is depicted.
- Tags: no manual action required for the standard tags; RimWorld resends `Mod` and `1.6` on update.
- Incompatible item: Adaptive Storage Neolithic Module, Workshop id `3033901895`.
- Visibility: public. Read from the page and API on 2026-09-24 and again on 2026-09-28 (`visibility 0`).

## 6. Update notes

Steam change note for the integrated tree. It is an update to the existing item `3806101377`, uploaded by the manual workflow
`.github/workflows/publish-tag.yml`, which reads the fenced block under the `### <version>` heading below.

### 1.1.2

```text
[h3]1.1.2 - Save-compatibility fix[/h3]

[list]
[*]Fixed a save-compatibility gap: a legacy stone plinth or stacked chunks that had been minified and reinstalled now migrate correctly (large pots already did).
[*]Removed an inert MayRequire attribute and a leftover comment. No effect on gameplay.
[*]Refreshed the Workshop header image, now carrying the mod icon.
[*]French: reworded several building names and descriptions (haystack, log pile, plinths, meal shelf, stone stack).
[/list]
```

### 1.1.1

```text
[h3]Header image[/h3]

[list]
[*]Updated the Workshop header image. No change to the mod files.
[/list]
```

### 1.1.0

```text
[h3]Upstream source integration[/h3]

[list]
[*]Rebased the continuation on the original authors' current GitHub source instead of the older Workshop package.
[*]Integrated the current definitions, balance work, graphics and textures.
[*]Switched stone storage to the framework's shared ASFStoneChunks stuff category.
[*]Added the upstream save-migration patch for the former generated stone buildings, blueprints and frames.
[*]Removed the obsolete continuation DLL and direct Harmony dependency.
[*]Kept RimWorld 1.6 support and corrected case-sensitive Russian localization paths.
[*]Corrected the French plinth description and made the French and Russian plinth descriptions independent of the material.
[/list]
```

## Current state

**`published`, since 2026-09-24.** Kept for the record; `STATUS.md` is authoritative on what is still open.

- Workshop item: `3806101377`, public; `Mod/About/PublishedFileId.txt` committed.
- Released as `1.1.0` (content) then `1.1.1` (header image only), tags `v1.1.0` and `v1.1.1` created by the CI after each upload. Tag
  and release `1.0.0` stay on the earlier packageId commit as history of the pre-integration mod and were never uploaded to Steam.
  Publication path: `publish-tag.yml` (no assembly, so no build), a dry-run of the exact commit first, then
  `Rimworld-Release-Admin/scripts/dispatch-publish.sh` with the full SHA, approved by Virginie.
- Static checks: `Test-Mod.ps1` 173 assertions and `Test-InstalledTranslations.ps1` 123 assertions, re-run 2026-09-28, both passing.
- Runtime: played 2026-09-23 in the WSL, all green (`STATUS.md`, "Stage history").
- Description: pasted on the page, read back identical on 2026-09-24.
- Dependency: one, fixed above.
- Gallery: the owner uploaded the noon series on 2026-10-06 by her own word (not checkable without a login), with `0-preview.png`. That upload
  was 9.27 MB for the folder, over the 8 MB limit; the files in `Art/Gallery/` are now recompressed (3.43 MB, same pictures). Whether to
  re-upload them is the owner's call. The live header image still predates the ModIcon overlay and the 2026-10-05 icon, since
  `update_preview` is off by default; the next publication can send `Mod/About/Preview.png`.
- Comments: both posted (section 4).
- Still open, not blocking: the file half of a Steam-copy subscription test is automated and passes
  (`tests/Test-SteamCopy.ps1`); the game half needs the owner, since `RimWorld/Mods` holds a development junction with the same
  `packageId`. GitHub issue #3 (performance) remains open pending the reporter's own evidence.
