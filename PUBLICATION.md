# Publishing Adaptive Storage Neolithic Renew

Publication sheet for Workshop item `3806101377`, updated for 1.1.3 on 2026-10-10 (integration of the upstream source on 2026-09-22, gallery section revised on 2026-10-06 and 2026-10-10).
The item already exists, so a game upload updates its files and tags but does not resend the description. The description is sent by the CI (`update_description`) from the Markdown block below, converted to BBCode (checked identical to the previous BBCode block on 2026-10-06).

In-game Pickle pass of 2026-09-23 (`STATUS.md`, `docs/runs/2026-09-23-tested-milestone.md`). The integrated tree follows upstream GitHub `main` at `2bc3fe4`, uses stone chunks as stuff,
and has no continuation DLL or direct Harmony dependency. **The published version is `1.1.2`** (tag `v1.1.2`, 2026-10-01; `1.1.0` uploaded the content, `1.1.1` the header image); **`1.1.3` is in preparation** (`STATUS.md`, `workflow_stage`; section 6 holds its change note). What remains manual, and the owner's: the Steam comments and thanks, the gallery upload, and any change of visibility. The checklist for the next release is `docs/RELEASE_TEMPLATE.md`.

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

Known compatibility limitations reported on the original page, not rechecked here: Alpha Biomes chunks cannot be used as material for chunk stacks, and Expanded Woodworking woods cannot be used for the wood pile, which requires Timber. Compatibility issues with Combat Extended have also been reported.

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

[Extra Stone](https://steamcommunity.com/sharedfiles/filedetails/?id=852103845) by Kuratheris, the third-party stone mod that the stone buildings are tested against. It is not a dependency either.

The camp pictures of the gallery were staged with other mods, none of them a dependency: [Female Body Variants Continued](https://steamcommunity.com/sharedfiles/filedetails/?id=3798082132) and [Female Apparel Variants Continued](https://steamcommunity.com/sharedfiles/filedetails/?id=3799726535) (DanZinagri and tiagocc0), [WDI's Realistic Bodies](https://steamcommunity.com/sharedfiles/filedetails/?id=3527486510) (Windonsi and Starkz), [TailorMade: Unified Apparel & Body Refitting](https://steamcommunity.com/sharedfiles/filedetails/?id=3756915448) and [Facial Animation Performance Patch](https://steamcommunity.com/sharedfiles/filedetails/?id=3790129900) (astryl), [Facial Animation - WIP](https://steamcommunity.com/sharedfiles/filedetails/?id=1635901197) and [Facial Animation - Experimentals](https://steamcommunity.com/sharedfiles/filedetails/?id=2581693737) (Nals), [Vanilla Textures Expanded - Facial Animation](https://steamcommunity.com/sharedfiles/filedetails/?id=2816938779) (Oracle of Thessia), [Akeron Extras - Facial Animations](https://steamcommunity.com/sharedfiles/filedetails/?id=2889716301) (Newton Zephyr), [Vanilla Experimentals for Facial Animation](https://steamcommunity.com/sharedfiles/filedetails/?id=3753978140) (SunshineyDays), [EyeGenes3](https://steamcommunity.com/sharedfiles/filedetails/?id=3745223213) (Lucius), [Mud's Tribal Apparel](https://steamcommunity.com/sharedfiles/filedetails/?id=2796703834) (Mud), [ETRT: Tribal Apparel (continued)](https://steamcommunity.com/sharedfiles/filedetails/?id=3545351721) (qux, after Evil Tactician, with Ogam's retextures), [Vanilla Expanded Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=2023507013) with [Vanilla Furniture Expanded - Props and Decor](https://steamcommunity.com/sharedfiles/filedetails/?id=2102143149) (Oskar Potocki, Sarg Bjornson and the Vanilla Expanded team), and my own [Venus Touch Waistlines](https://github.com/vbardales/Rimworld-Venus-Touch-Waistlines), which fits the clothes to those bodies.

Full attribution and change history: [ATTRIBUTION.md](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/ATTRIBUTION.md). Released under the MIT licence: [LICENSE](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/LICENSE)

[Source code on GitHub](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew)
```

## 2. Images to upload

`Mod/About/Preview.png` is the Workshop header image sent with the mod update; it is not an additional gallery image. `Mod/About/ModIcon.png`
is the in-game mod-list icon and is not uploaded to the gallery.

**Every gallery starts with a byte-for-byte copy of the Preview** (owner's rule, 2026-09-29): `0-preview.png`
is `Mod/About/Preview.png` copied as-is. Recopy it whenever the Preview is regenerated. The nine gallery pictures below follow it
in the intended order. **Limits** (PUBLISHING.md, owner, 2026-10-06): any number of images, the whole folder under 8 MB and each image
under 2 MB; the folder is 6.47 MB, the largest image 0.66 MB (`node scripts/Compress-Gallery.cjs` recompresses and checks).

Pictures 1 to 6 are one story, "noon at the storehouse, seen through the animals that come by", played by Pickle feature
`11-workshop-captures.feature` on the sanctuary save `Nelims-tribe` (named scene `calm-zone-close`, a cream stone square in the open air,
no roof and no wall shadow): the hour is set to noon once and each picture waits five more game minutes than the one before (12:00 to
12:25), with a daytime animal that comes by in each (hen, squirrel, hare, dog, peacock, cat). Pictures 2 and 5 use a closer frame. Evidence
and reasoning in `STATUS.md` (2026-10-06) and `TESTING.md` ("Choosing the gallery place"). The pictures are whole frames cut by
`scripts/Crop-WorkshopScreenshots.ps1` (1280 px wide) and recompressed; the owner validated them and uploaded them by her own word on
2026-10-06, before the recompression (see "Current state").
Upload files 0 to 9 in order. Pictures 1 to 6 are the noon series (uploaded 2026-10-06, before the recompression); pictures 7 to 9 are the accepted pictures of the camp (the owner accepted them 2026-10-08, refused three others, deleted; the folder was reindexed without gaps on 2026-10-10 by the session, which directs the gallery, so the files were `8-`, `9-`, `11-` before). The camp continues the same noon, one step further from the storehouse: the tribe comes to the same storage, played by `12-workshop-camp.feature` on the Sanctuary Backlot place `bare-clearing` (pawns from Mud's and ETRT tribal clothes, VFE Props and Decor, Venus Touch Waistlines, EyeGenes3: their authors are to be thanked before these pictures are published, see `STATUS.md`). Raw frames are deleted; nothing re-cuts them. Do not mix with the superseded earlier series (the storehouse hut, 2026-09-23 and 2026-10-05).

| # | File | Size | Shows |
| --- | --- | --- | --- |
| 0 | `Art/Gallery/0-preview.png` | 896 x 504, 659,724 bytes | Copy of the Workshop header image (now carries the detoured ModIcon, bottom-left) |
| 1 | `Art/Gallery/1-the-whole-set.png` | 1280 x 720, 519948 bytes | The whole set and its visible contents |
| 2 | `Art/Gallery/2-a-basket-fills-up.png` | 1280 x 720, 390468 bytes | A basket empty, partly filled and full |
| 3 | `Art/Gallery/3-chunk-stacks.png` | 1280 x 720, 412183 bytes | Stone-as-stuff stacks at several fill levels and in two materials |
| 4 | `Art/Gallery/4-large-pots.png` | 1280 x 720, 503219 bytes | Large pots showing different stored foods |
| 5 | `Art/Gallery/5-plinths.png` | 1280 x 720, 506776 bytes | Three plinths displaying items |
| 6 | `Art/Gallery/6-a-stone-from-another-mod.png` | 1280 x 720, 435833 bytes | A compatible third-party stone beside granite |
| 7 | `Art/Gallery/7-three-baskets.png` | 1280 x 720, 439470 bytes | Camp, accepted 2026-10-08: three baskets (empty, one item, full), Ayla by the fire, a chicken |
| 8 | `Art/Gallery/8-fuel-and-stone.png` | 1280 x 720, 556245 bytes | Camp, accepted 2026-10-08: wood and hay piles, granite and marble stacks, Doka in the wolf hood, a hare |
| 9 | `Art/Gallery/9-the-tribes-treasures.png` | 1280 x 720, 551848 bytes | Camp, accepted 2026-10-08: three plinths (wood, granite, vacstone) each showing an item, the chief Tahu on his stool, a peacock |

Header assets already valid:

- `Mod/About/Preview.png`: 896 x 504, 659,724 bytes, below Steam's 1 MiB limit. Recomposed 2026-09-29 to carry
  the detoured ModIcon bottom-left, tilted `+15deg` (owner's rule; `Art/PREVIEW.md`).
- `Mod/About/ModIcon.png`: 128 x 128, 36,714 bytes, derived from the owner's `Art/ModIcon-source.png` by the renderer (2026-10-05).

## 3. Dependency to declare on Steam

Exactly one required Workshop item:

- [Adaptive Storage Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359): Workshop id `3033901359`, packageId
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
PickleTools is the publisher's own private project. Harmony is not used directly by this module.

### Drafts for the test and camp integrations (2026-10-10)

Every mod below is named in `THANKS` because a test pass stages it (PUBLISHING.md, "Remerciements"; none is a dependency). Register rows are `drafted` in `WORKSHOP_COMMENTS.md`, Vanilla Expanded Framework (2023507013) is already `posted` and only gains this mod in `Covers`. Authors come from each installed About.xml; only ETRT (3545351721) had its page read. Read the last comments of each page before posting, at most three a day, and post only once pictures 7 to 9 are on the Steam page. One comment per page.

**[K]Extra Stone (Kuratheris)** (852103845)

```text
Your stones were the test subjects for my storage mod: pots, plinths and chunk stacks built from your andesite with no patch at all, and the mod never even met them before. Thanks for being such good guinea stones :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]
```

**Female Body Variants Continued (DanZinagri and tiagocc0)** (3798082132)

```text
Thin, fat or hulk, the women of my gallery camp get the right body thanks to this. Thank you DanZinagri for the original and tiagocc0 for carrying it on, the tribe in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] would be a bit lopsided without it xD
```

**Female Apparel Variants Continued (DanZinagri and tiagocc0)** (3799726535)

```text
The clothes for those bodies: with your female apparel variants the tunics of my camp sit on the women instead of next to them. Thanks to DanZinagri and tiagocc0, I used it staging the gallery of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] :)
```

**WDI's Realistic Bodies (Windonsi, Starkz)** (3527486510)

```text
Realistic bodies are what turns my little tribe from paper dolls into people. I staged the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] with your mod, thank you Windonsi and Starkz :)
```

**TailorMade: Unified Apparel & Body Refitting (astryl)** (3756915448)

```text
TailorMade sits under the clothing setup I used for the tribe in my gallery pictures, and the pawns came out wearing their clothes instead of being wrapped by them. Thank you astryl, [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] owes you a few tunics.
```

**Facial Animation Performance Patch (astryl)** (3790129900)

```text
I load this next to Facial Animation whenever I stage pawns with faces, for the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Quiet little mod, very welcome. Thanks astryl :)
```

**[NL] Facial Animation - WIP (Nals)** (1635901197)

```text
The chief of my gallery camp has a face because of you. Facial Animation is part of how I stage the tribe in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url], thank you Nals, it still makes a drafted pawn glare properly lol
```

**[NL] Facial Animation - Experimentals (Nals)** (2581693737)

```text
I run the Experimentals build when I stage faces for the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Thank you Nals for both builds, and for taking the time to keep experimenting :)
```

**Vanilla Textures Expanded - Facial Animation (Oracle of Thessia)** (2816938779)

```text
Part of the Facial Animation set I load to give the tribe in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] a face that matches the vanilla look. Thanks Oracle of Thessia for making that match :)
```

**Akeron Extras - Facial Animations (Newton Zephyr)** (2889716301)

```text
Akeron faces were on the guest list for the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url], so your Extras made it into the staging. Thank you Newton Zephyr :)
```

**Vanilla Experimentals for Facial Animation (SunshineyDays)** (3753978140)

```text
Moving vanilla eyes, small detail, big difference when you zoom on a pawn: I loaded yours for the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Thanks SunshineyDays, very nice touch :)
```

**EyeGenes3 (Lucius)** (3745223213)

```text
Green, dark brown, golden: I picked the eyes of the three people in my camp pictures from your genes. Thank you Lucius, [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] had a very particular casting call xD
```

**Mud's Tribal Apparel (Mud)** (2796703834)

```text
When I needed a neolithic wardrobe for the tribe in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url], your tribal capes and cloaks were the first place I looked. Thanks Mud :)
```

**ETRT: Tribal Apparel (continued) (qux, after Evil Tactician; retextures by Ogam)** (3545351721)

```text
The wolf and deer hoods in my gallery are yours. Thank you qux for keeping ETRT: Tribal Apparel going, and Evil Tactician and Ogam for what's underneath: a neolithic storage mod needed a neolithic crowd. [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]
```

**Vanilla Furniture Expanded - Props and Decor (Oskar Potocki, Sarg Bjornson)** (2102143149)

```text
The tanning rack in the corner of my camp pictures is yours, and a camp without props is just a field. Thank you Oskar Potocki and Sarg Bjornson for the decor behind [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] :)
```

## 5. Other Steam fields

- Adult-content questionnaire: **No**. The mod contains storage furniture and cartoon item graphics; no mature content is depicted.
- Tags: no manual action required for the standard tags; RimWorld resends `Mod` and `1.6` on update.
- Incompatible item: Adaptive Storage Neolithic Module, Workshop id `3033901895`.
- Visibility: public. Read from the page and API on 2026-09-24 and again on 2026-09-28 (`visibility 0`).

## 6. Update notes

Steam change note for the integrated tree. It is an update to the existing item `3806101377`, uploaded by the manual workflow
`.github/workflows/publish-tag.yml`, which reads the fenced block under the `### <version>` heading below.

### 1.1.3

```text
[h3]1.1.3 - Basket graphic and French wording[/h3]

[list]
[*]Fixed the basket graphic size: its size was declared with one value instead of two. It now reads 2 x 2 as intended.
[*]French: corrected the descriptions of the baskets, the hay pile, both plinths, the textile bundles, the wood pile and the stone stack (clearer wording, and no mention of colonists, which the plinths could not gender).
[*]Refreshed the mod icon and the Workshop header image.
[*]Thanks, in the description, to the authors of the stone mod the tests use and of the mods behind the new gallery pictures.
[/list]
```

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

**Published at `1.1.2` (2026-10-01); `1.1.3` in preparation.** Kept for the record; `STATUS.md` is authoritative on what is still open.

- Workshop item: `3806101377`, public; `Mod/About/PublishedFileId.txt` committed.
- Released as `1.1.0` (content), `1.1.1` (header image only) and `1.1.2` (back-compat links and basket filter), tags `v1.1.0`, `v1.1.1` and `v1.1.2` created by the CI after each upload. Tag
  and release `1.0.0` stay on the earlier packageId commit as history of the pre-integration mod and were never uploaded to Steam.
  Publication path: `publish-tag.yml` (no assembly, so no build), a dry-run of the exact commit first, then
  `Rimworld-Release-Admin/scripts/dispatch-publish.sh` with the full SHA, approved by Virginie.
- Static checks: `Test-Mod.ps1` 173 assertions and `Test-InstalledTranslations.ps1` 123 assertions, re-run 2026-09-28, both passing.
- Runtime: played 2026-09-23 in the WSL, all green (`STATUS.md`, "Stage history").
- Description: pasted on the page, read back identical on 2026-09-24.
- Dependency: one, fixed above.
- Gallery: the owner uploaded the noon series on 2026-10-06 by her own word (not checkable without a login), with `0-preview.png`. That upload
  was 9.27 MB for the folder, over the 8 MB limit; the files in `Art/Gallery/` are now recompressed (3.43 MB for those six pictures; with the three camp pictures 7 to 9 the whole folder is 6.47 MB). Whether to
  re-upload them is the owner's call. The live header image still predates the ModIcon overlay and the 2026-10-05 icon, since
  `update_preview` is off by default; the next publication can send `Mod/About/Preview.png`.
- Comments: both posted (section 4).
- Still open, not blocking: the file half of a Steam-copy subscription test is automated and passes
  (`tests/Test-SteamCopy.ps1`); the game half needs the owner, since `RimWorld/Mods` holds a development junction with the same
  `packageId`. GitHub issue #3 (performance) remains open pending the reporter's own evidence.
