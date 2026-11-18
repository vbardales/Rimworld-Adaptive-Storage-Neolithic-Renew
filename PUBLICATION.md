# Publishing Adaptive Storage Neolithic Renew

Publication sheet for Workshop item `3806101377`, updated for 1.2.0 on 2026-11-16 (integration of the upstream source on 2026-09-22, gallery section revised on 2026-10-06 and 2026-10-10, Russian wording and release notes revised on 2026-11-12 and 2026-11-16).
The item already exists, so a game upload updates its files and tags but does not resend the description. The description is sent by the CI (`update_description`) from the Markdown block below, converted to BBCode (checked identical to the previous BBCode block on 2026-10-06).

In-game Pickle pass of 2026-09-23 (`STATUS.md`, `Docs/runs/2026-09-23-tested-milestone.md`). The integrated tree follows upstream GitHub `main` at `2bc3fe4`, uses stone chunks as stuff,
and has no continuation DLL or direct Harmony dependency. **The published version is `1.1.3`** (tag `v1.1.3` at `e47cceb`, 2026-10-11; `1.1.0` uploaded the content, `1.1.1` and `1.1.2` the header image and the fixes); **`1.2.0` (RimWorld 1.7 support) is in preparation** (`STATUS.md`, `workflow_stage`; section 6 holds its change note). What remains manual and belongs to the owner: the Steam comments and thanks, the gallery upload, and any change of visibility. The checklist for the next release is `Docs/RELEASE_TEMPLATE.md`.

## Steam description

Single source (PUBLISHING.md, 2026-09-25): the CI converts this Markdown to the Steam BBCode and to the plain text of the `<description>` in `Mod/About/About.xml` (`node .github/scripts/sync-about-description.mjs --write`). Edit it here only.

```markdown
Tribal storage for the [Adaptive Storage Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359): baskets of wood, leather and fabric, large pots for raw food, stacked stone chunks, wood and hay piles, a meal shelf, textile and leather bundles, and carved plinths for displaying a single item.

Every container shows what is inside it. Fill a basket and you see the basket fill up.

Two neolithic research projects unlock the set, both available from a tribal start.

**REQUIRES** the [Adaptive Storage Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359). It does nothing on its own.

I am not the author of this mod. The buildings, artwork and design are the work of Soul, Phaneron and bradson. This continuation follows their current GitHub source rather than the older Workshop upload. Credit goes to them; mistakes in the adaptation are mine.

## ORIGINAL MOD

[Adaptive Storage Neolithic Module](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895)
Current upstream source: [GitHub](https://github.com/bbradson/Adaptive-Storage-Neolithic-Module)

## WHAT CHANGED

The continuation is based on the original authors' current main branch. That branch replaces one generated building per stone type with three buildings made from the framework's ASFStoneChunks stuff category. Its compatibility patch migrates the older generated defNames and their blueprints and frames to the new buildings while preserving the stone chunk as stuff. This also avoids the old crash path for chunks without their own colour.

The current upstream definitions, balance values, graphics definitions and integrated textures are preserved. The latest RimWorld version is declared, and the Russian DefInjected folder uses the exact casing required on Linux and Steam Deck.

## LANGUAGES

English, French, Russian, Thai, German and Chinese (Simplified and Traditional).

French: upstream's translation (Elzetia), revised and validated by the maintainer.

Russian: upstream's translation (MrBlack-JB); what was corrected here (the two research names, the meal shelf, both plinth descriptions, the stone stack description and both basket descriptions) was done with Claude (Anthropic) and reviewed by ChatGPT (OpenAI), and has not been checked by a Russian speaker.

Thai (SLOST), German (Daedalus) and Chinese (WhyBlyat): translations found on the Workshop, none declaring a licence, integrated with credit to their authors. The stone stack and the stone plinth description were missing from the Thai and German ones and were written with Claude (Anthropic). None of these three languages has been checked by a speaker.

## COMPATIBILITY

The original mod is declared incompatible because both packages define the same content. Run one or the other.

Better Architect Menu is optional: when it is loaded, the storage buildings sort into its general, resources and food storage categories, and nothing changes without it.

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

SLOST, Daedalus and WhyBlyat, for the Thai, German and Chinese translations.

ferny, for [Better Architect Menu](https://steamcommunity.com/sharedfiles/filedetails/?id=3563882422), whose storage categories the buildings use when it is loaded. It is optional, not a dependency.

[Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678), [RimLogging](https://steamcommunity.com/sharedfiles/filedetails/?id=3733484696) and [PickleTools](https://steamcommunity.com/sharedfiles/filedetails/?id=3806142401) were used for development and testing only; none is a dependency of the distributed mod.

[Extra Stone](https://steamcommunity.com/sharedfiles/filedetails/?id=852103845) by Kuratheris, the third-party stone mod that the stone buildings are tested against. It is not a dependency either.

The camp pictures of the gallery were staged with other mods, none of them a dependency (links in ATTRIBUTION.md): Female Body Variants Continued and Female Apparel Variants Continued (DanZinagri and tiagocc0), WDI's Realistic Bodies (Windonsi and Starkz), Facial Animation Performance Patch (astryl), Facial Animation - WIP and Facial Animation - Experimentals (Nals), Vanilla Textures Expanded - Facial Animation (Oracle of Thessia), Akeron Extras - Facial Animations (Newton Zephyr), Vanilla Experimentals for Facial Animation (SunshineyDays), EyeGenes3 (Lucius), Vanilla Expanded Framework with Vanilla Furniture Expanded - Props and Decor (Oskar Potocki, Sarg Bjornson and the Vanilla Expanded team), Roo's HD Hairstyles (continued) (Qux, after Rooboid), Vanilla Hair Expanded (Oskar Potocki, XeoNovaDan), Hat Hair Control (lordfelix), Vanilla Apparel Expanded (Oskar Potocki, Trunken, Sarg Bjornson), FashionRIMsta (Continued) (Mlie, after spoonshortage and Nackblad), Fairycore - Apparel 2 (Faeris), AB's Visible Pants (aedbia), Let's Have a Cat! Continued (akairo, Bernau31), and the Facial Animation add-ons FacialAnimation add closed eyes (Vi, Kirisaki), Visual beauty for Facial Animation (SleepyFrieren), NL Facial Animation - Init Fix (Moshii), NL Facial Animation - Load Fix (CCJ) and Cuter Kids for Facial Animation (ria), and my own [Venus Touch Waistlines](https://github.com/vbardales/Rimworld-Venus-Touch-Waistlines), which fits the clothes to those bodies.

Full attribution and change history: [ATTRIBUTION.md](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/ATTRIBUTION.md). Released under the MIT licence: [LICENSE](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/LICENSE)

[Source code on GitHub](https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew)
```

## 2. Images to upload

`Mod/About/Preview.png` is the Workshop header image sent with the mod update; it is not an additional gallery image. `Mod/About/ModIcon.png`
is the in-game mod-list icon and is not uploaded to the gallery.

**Every gallery starts with a byte-for-byte copy of the Preview** (owner's rule, 2026-09-29): `0-preview.png`
is `Mod/About/Preview.png` copied as-is. Recopy it whenever the Preview is regenerated. The nine gallery pictures below follow it
in the intended order. **Limits** (PUBLISHING.md, owner, 2026-10-06): any number of images, the whole folder under 8 MB and each image
under 2 MB; the folder is 3.75 MB (3,752,807 bytes, ten files), the largest image 0.74 MB (`node scripts/Compress-Gallery.cjs` recompresses and checks).

Pictures 1 to 8 are one story, "noon at the camp": Nelim and Soren tidy the neolithic camp of Nelim's tribe on the Sanctuary Backlot place `bare-clearing`, one picture every five game minutes from 12:00 to 12:40, played by Pickle feature `12-workshop-camp.feature` on the save `Nelims-tribe` (shotlist in `STATUS.md`). Picture 9 is the research window on the Storage tab, cropped, with no subtitle. The old storehouse and camp series (2026-09 to 2026-10) were removed on 2026-11-09 (`git rm`); the Steam page keeps them until the new gallery is uploaded. The camp is staged with other mods, none a dependency (see THANKS above).
Upload files 0 to 9 in order.

| # | File | Size | Shows |
| --- | --- | --- | --- |
| 0 | `Art/Gallery/0-preview.png` | 896 x 504, 740,897 bytes | Copy of the Workshop header image |
| 1 | `Art/Gallery/1-camp-noon.jpg` | 1920 x 1080, 335,009 bytes | Untidy camp at noon: five storage types waiting, loose chunks and logs |
| 2 | `Art/Gallery/2-baskets.jpg` | 1920 x 1080, 318,759 bytes | Three baskets: empty, one stone, full |
| 3 | `Art/Gallery/3-piles.jpg` | 1920 x 1080, 393,835 bytes | Wood pile and hay pile |
| 4 | `Art/Gallery/4-pots.jpg` | 1920 x 1080, 405,269 bytes | Large pots showing berries, milk and grain |
| 5 | `Art/Gallery/5-stacks.jpg` | 1920 x 1080, 355,019 bytes | Granite stacks at 1, 2 and 6 chunks, and a marble stack |
| 6 | `Art/Gallery/6-plinths.jpg` | 1920 x 1080, 292,130 bytes | Wood and vacstone plinths showing gold and an item |
| 7 | `Art/Gallery/7-another-mod.jpg` | 1920 x 1080, 315,130 bytes | A stone from another mod (Extra Stone) with its own pot and stack beside granite |
| 8 | `Art/Gallery/8-tidied.jpg` | 1920 x 1080, 332,352 bytes | The same camp, tidy and with storage filled |
| 9 | `Art/Gallery/9-research-window.jpg` | 1920 x 1080, 264,248 bytes | Research window, Storage tab, both projects (no subtitle) |

### Gallery subtitles

Pictures 1 to 8 have no interface window, so each carries one English line burned in at the bottom (`../scripts/Add-Subtitle.ps1`, owner rule 2026-10-15). The clean captures are in `Art/Gallery-clean/` (same index, `.jpg`); `Art/Gallery/` holds the subtitled `.jpg` files to upload. `0-` and `9-` have none.

| # | File | Line |
| --- | --- | --- |
| 1 | `1-camp-noon.jpg` | Noon at the camp, and everything still to put away. |
| 2 | `2-baskets.jpg` | What goes in, shows. |
| 3 | `3-piles.jpg` | Wood and hay, stacked as they come. |
| 4 | `4-pots.jpg` | Large pots show what they hold. |
| 5 | `5-stacks.jpg` | Stone piles up, in two materials. |
| 6 | `6-plinths.jpg` | The tribe's treasures, on their plinths. |
| 7 | `7-another-mod.jpg` | A stone from another mod joins the camp. |
| 8 | `8-tidied.jpg` | Everything in its place: the camp rests at noon. |

Header assets already valid:

- `Mod/About/Preview.png`: 896 x 504, 740,897 bytes, below Steam's 1 MiB limit. Recomposed 2026-09-29 to carry
  the detoured ModIcon bottom-left, tilted `+15deg` (owner's rule; `Art/PREVIEW.md`).
- `Mod/About/ModIcon.png`: 128 x 128, 37,307 bytes, derived from the owner's `Art/ModIcon-source.png` by the renderer (2026-10-05).

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

### Test and camp integration comments

The 15 thank-you texts (posted 2026-10-11) now live in `WORKSHOP_COMMENTS.md`, section "Sent texts: Adaptive Storage Neolithic Renew".

### Thank-you comments of the 1.2 line (drafted 2026-11-17)

Three new recipients come with 1.2.0, the Thai, German and Chinese translations. Their pages have no comment yet (read 2026-11-17), so there is no mood to match; the texts stay in the owner's plain voice. Post them after the item shows 1.2.0 (`postOnSteam`), one per page, at most three a day. Better Architect Menu (3563882422, ferny) is already `posted` (comment from Architect Studio): this mod only joins its `Covers` in `WORKSHOP_COMMENTS.md`, no second comment. Rows: `WORKSHOP_COMMENTS.md`, status `drafted`.

**[แปลไทย] Adaptive Storage Neolithic Module (SLOST)** (3341668276)

```text
Thai players of the storage mod get your words now: your translation of the Adaptive Storage Neolithic Module is part of the 1.2.0 update of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url], with your name in the credits. Thank you SLOST :)
```

**Adaptive Storage Neolithic Module - Deutsch (German Language Pack) (Daedalus)** (3115381045)

```text
Danke Daedalus! Your German pack for the Adaptive Storage Neolithic Module now ships inside the 1.2.0 update of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url], so the baskets and pots speak German there too. Credited to you, of course xD
```

**Adaptive Storage Neolithic Renew 汉化 (WhyBlyat)** (3821420014)

```text
Your Chinese version of Adaptive Storage Neolithic Renew, Simplified and Traditional, is now part of the mod itself with the 1.2.0 update, and credited to you. Thank you WhyBlyat for taking the trouble to translate it lol [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]
```

### Thank-you comments for the camp gallery mods (drafted 2026-11-18)

The camp series of 2026-11 was staged with every mod of `Tests/Pickle/wsl-deps.camp.map` (copied from the Sanctuary map). The 15 comments of 2026-10-11 cover the older series; the mods below came with the new one and none of the posted comments names this mod. All eight pages were thanked already by other mod sessions, so these are second, short messages on a page: the owner decides which ones go out. Rows: `WORKSHOP_COMMENTS.md`, status `drafted`, "ASN gallery". Post after the item shows 1.2.0, a few a day. Five more pages had no row at all (Fashion RIMsta, Fairycore Apparel 2, Cuter Kids for Facial Animation, Vanilla Hair Expanded, Vanilla Apparel Expanded): their drafts follow the first eight and are first messages on those pages. Authors from the About.xml of each mod (PiI, 2026-11-18, from local files): check the creator's name on the page before posting.

**Roo's HD Hairstyles (continued) (Qux, after Rooboid)** (3559870636)

```text
Nelim's long hair in the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] is one of yours. Thank you Qux for keeping the HD hairstyles going, and Rooboid for the originals :)
```

**Hat Hair Control (lordfelix)** (3760821540)

```text
Part of the wardrobe setup I load to stage the tribe in the gallery of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Thank you lordfelix :)
```

**AB's Visible Pants (aedbia)** (2986402536)

```text
The trousers of the tribe in the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] show up thanks to your mod. Thank you aedbia :)
```

**[VK]FacialAnimation add closed eyes (Vi/Kirisaki)** (3694711465)

```text
Part of the Facial Animation stack I load to give the tribe in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] a face. Thank you Vi and Kirisaki for the closed eyes :)
```

**Visual beauty for Facial Animation (SleepyFrieren)** (3685072616)

```text
The faces of my gallery camp in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] look nicer with this in the stack. Thank you SleepyFrieren :)
```

**NL Facial Animation - Init Fix (Moshii)** (3609895011)

```text
Quiet little fix, and the Facial Animation stack behind the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] needs it. Thank you Moshii xD
```

**NL Facial Animation - Load Fix (CCJ)** (3721489042)

```text
Another small piece of the Facial Animation stack I load for the tribe in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Thank you CCJ :)
```

**Let's Have a Cat! Continued (akairo original, Bernau31 maintainer)** (3682940618)

```text
The camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] were staged with this loaded, cats included. Thank you akairo for the original and Bernau31 for carrying it on :)
```

**FashionRIMsta (Continued) (Mlie, after spoonshortage and Nackblad)** (3592569869)

```text
Loaded with the rest of the wardrobe for the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Thank you Mlie for keeping FashionRIMsta going, and spoonshortage and Nackblad for the original :)
```

**Fairycore - Apparel 2 (Faeris)** (3812924898)

```text
Part of the wardrobe I load to stage the tribe in the gallery of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Thank you Faeris :)
```

**Cuter Kids for Facial Animation (ria)** (3807706870)

```text
One more piece of the Facial Animation stack behind the faces of the camp pictures in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Thank you ria :)
```

**Vanilla Hair Expanded (Oskar Potocki, XeoNovaDan)** (1888705256)

```text
The hairstyles of the tribe in the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] are staged with this loaded. Thank you Oskar Potocki, XeoNovaDan and the Vanilla Expanded team xD
```

**Vanilla Apparel Expanded (Oskar Potocki, Trunken, Sarg Bjornson)** (1814987817)

```text
Part of the wardrobe I load to stage the tribe in the camp pictures of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url]. Thank you Oskar Potocki, Trunken, Sarg Bjornson and the Vanilla Expanded team :)
```

### Use This Instead comment (2026-10-11)

Posted by the owner on the [Use This Instead](https://steamcommunity.com/sharedfiles/filedetails/?id=3396308787) page (Mlie), after the 1.1.3 publication. Row in `USE_THIS_INSTEAD.md`.

```
Hello Mlie, and thank you for Use This Instead. A replacement for a mod that Steam no longer lets people subscribe to:

[b]Old:[/b] [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895]Adaptive Storage Neolithic Module[/url] by Soul, Phaneron and bradson, packageId adaptive.storage.neolithic, RimWorld 1.4 and 1.5.
[b]New:[/b] [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377]Adaptive Storage Neolithic Renew[/url] by Nelim (the same authors' MIT-licensed work, adapted to 1.6), packageId nelim.adaptivestorageneolithic, RimWorld 1.6.

The new mod declares the old one as incompatible. Thanks!
```

## 5. Other Steam fields

- Adult-content questionnaire: **No**. The mod contains storage furniture and cartoon item graphics; no mature content is depicted.
- Tags: no manual action required for the standard tags; RimWorld resends `Mod`, `1.6` and `1.7` on update (the 1.7 tag needs `update_tags=true`, AUDIT.md "Passe 1.7").
- Incompatible item: Adaptive Storage Neolithic Module, Workshop id `3033901895`.
- Visibility: public. Read from the page and API on 2026-09-24 and again on 2026-09-28 (`visibility 0`).

## 6. Update notes

Steam change note for the integrated tree. It is an update to the existing item `3806101377`, uploaded by the manual workflow
`.github/workflows/publish-tag.yml`, which reads the fenced block under the `### <version>` heading below.

### 1.2.0

The Pickle run on RimWorld 1.7 is green (STATUS.md, `tested_1_7: yes`, 2026-11-16, 23 of 23). This note goes out with the release. `<li>1.7</li>` is in `supportedVersions` (About.xml and the Pickle companion) since 2026-11-18, in the same commit as the Preview redo (badge 1.7).

```text
[h3]1.2.0 - RimWorld 1.7 support[/h3]

[list]
[*]Thai, German and Chinese (Simplified and Traditional) translations added, from SLOST, Daedalus and WhyBlyat.
[*]The mod now declares RimWorld 1.7 next to 1.6. No textures were touched. Russian wording corrected: the two research names, the meal shelf, the plinth descriptions, the stone stack description and both basket descriptions.
[*]Better Architect Menu support: when that mod is loaded, the storage buildings sort into its general, resources and food storage categories. Nothing changes without it.
[*][url=https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/CHANGELOG.md]Full changelog[/url]
[/list]
```

### 1.1.3

```text
[h3]1.1.3 - Basket graphic and French wording[/h3]

[list]
[*]Fixed the basket graphic size: its size was declared with one value instead of two. It now reads 2 x 2 as intended.
[*]French: corrected the descriptions of the baskets, the hay pile, both plinths, the textile bundles, the wood pile and the stone stack (clearer wording and gender-neutral phrasing in the plinth descriptions).
[*]Refreshed the mod icon and the Workshop header image.
[*]Added credits to the description for the stone mod used in testing and the mods used to stage the new gallery pictures.
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

**Published at `1.1.3` (2026-10-11, tag `v1.1.3` at `e47cceb`).** Kept for the record; `STATUS.md` is authoritative on what is still open.

- Workshop item: `3806101377`, public; `Mod/About/PublishedFileId.txt` committed.
- Released as `1.1.0` (content), `1.1.1` (header image only) and `1.1.2` (back-compat links and basket filter), tags `v1.1.0`, `v1.1.1` and `v1.1.2` created by the CI after each upload. Tag
  and release `1.0.0` stay on the earlier packageId commit as history of the pre-integration mod and were never uploaded to Steam.
  Publication path: `publish-tag.yml` (no assembly, so no build), a dry-run of the exact commit first, then
  `Rimworld-Release-Admin/scripts/dispatch-publish.sh` with the full SHA, approved by Virginie.
- Static checks: `Test-Mod.ps1` 173 assertions and `Test-InstalledTranslations.ps1` 123 assertions, re-run 2026-09-28, both passing.
- Runtime: played 2026-09-23 in the WSL, all green (`STATUS.md`, "Stage history").
- Description: pasted on the page, read back identical on 2026-09-24.
- Dependency: one, fixed above.
- Gallery: the owner reports having uploaded the noon series on 2026-10-06 (not checkable without a login), with `0-preview.png`. That upload
  was 9.27 MB for the folder, over the 8 MB limit. The gallery was then rewritten (2026-11, "noon at the camp") and `Art/Gallery/` now holds ten files, 3,752,807 bytes (section 2), under the limit. The new series is not on the page yet: the owner uploads files 0 to 9 at publication. The live header image is the one published with 1.1.2 (it carries the earlier ModIcon); the Preview regenerated on 2026-10-05 from the new icon source is not on the page yet, since
  `update_preview` is off by default; the next publication can send `Mod/About/Preview.png`.
- Comments: both posted (section 4).
- Still open, not blocking: the file half of a Steam-copy subscription test is automated and passes
  (shared `scripts/Test-SteamCopy.ps1 -ModRoot`); the game half needs the owner, since `RimWorld/Mods` holds a development junction with the same
  `packageId`. GitHub issue #3 (performance) remains open pending the reporter's own evidence.
