# Publishing Adaptive Storage Neolithic Renew

Publication sheet for Workshop item `3806101377`, updated after integrating the current upstream source on 2026-09-22.
The item already exists, so RimWorld will update its files and tags but **will not resend the description**. Paste the Steam-formatted
description below into the Workshop page by hand.

**The mod is at `tested`** (in-game Pickle pass of 2026-09-23, `STATUS.md` and `docs/runs/`). The integrated tree follows upstream GitHub `main` at `2bc3fe4`, uses stone chunks as stuff,
and has no continuation DLL or direct Harmony dependency. The steps that remain before `prepublished` are the repository-position and tag/release question below, the adult-content boxes, the owner's approval of the six gallery images and pasting the description by hand; the item stays private until then.

## 1. Steam description

Paste this directly into the existing Workshop item's description. The same source text is kept in `Mod/About/About.xml`; later uploads
will not synchronize it automatically.

```text
Tribal storage for the [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359]Adaptive Storage Framework[/url]: baskets of wood, leather and fabric, large pots for raw food, stacked stone chunks, wood and hay piles, a meal shelf, textile and leather bundles, and carved plinths for displaying a single item.

Every container shows what is inside it. Fill a basket and you see the basket fill up.

Two neolithic research projects unlock the set, both available from a tribal start.

[b]REQUIRES[/b] the [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359]Adaptive Storage Framework[/url]. It does nothing on its own.

I am not the author of this mod. The buildings, artwork and design are Soul's, Phaneron's and bradson's. This continuation follows their current GitHub source rather than the older Workshop upload. Credit goes to them; mistakes in the 1.6 adaptation are mine.

[h2]ORIGINAL MOD[/h2]

[url=https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895]Adaptive Storage Neolithic Module[/url]
Current upstream source: [url=https://github.com/bbradson/Adaptive-Storage-Neolithic-Module]GitHub[/url]

[h2]WHAT CHANGED[/h2]

The continuation is based on the original authors' current main branch. That branch replaces one generated building per stone type with three buildings made from the framework's ASFStoneChunks stuff category. Its compatibility patch migrates the older generated defNames and their blueprints and frames to the new buildings while preserving the stone chunk as stuff. This also avoids the old crash path for chunks without their own colour.

The current upstream definitions, balance values, graphics definitions and integrated textures are preserved. RimWorld 1.6 is declared, and the Russian DefInjected folder uses the exact casing required on Linux and Steam Deck.

[h2]COMPATIBILITY[/h2]

The original mod is declared incompatible because both packages define the same content. Run one or the other.

Odyssey, Biotech and stone mods are optional. Compatible stone chunks can use the shared ASFStoneChunks category without one generated building definition per stone type.

Known soft incompatibilities reported on the original page, not revalidated here: Alpha Biomes chunks cannot stuff the stacked chunks, Expanded Woodworking woods cannot stuff the wood pile because it uses Timber, and Combat Extended.

Content mod: removing it mid-save destroys any of these containers already built and drops what was inside them.

[h2]LICENCE[/h2]

This mod is MIT licensed by its authors, and the LICENSE file travels with it here and in the repository.

[h2]IF I GO QUIET[/h2]

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

[h2]AI-GENERATED[/h2]

The adaptation audit, automated and in-game test work, and documentation were prepared with Claude Code (Anthropic), Codex and ChatGPT (OpenAI), under human direction and review. The mod icon and preview image were generated with DALL-E (OpenAI). The buildings, their artwork, textures, stats and current stone-as-stuff implementation are the original authors' work.

[h2]THANKS[/h2]

Soul, Phaneron and bradson, for the mod, the [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359]Adaptive Storage Framework[/url], the current source work, and the open licence.

Elzetia and MrBlack-JB, for the French and Russian translations included upstream.

[url=https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678]Pickle[/url], [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3733484696]RimLogging[/url] and [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806142401]PickleTools[/url] were used for development and testing only; none is a dependency of the distributed mod.

Full attribution and change history: [url=https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/ATTRIBUTION.md]ATTRIBUTION.md[/url]. Released under the MIT licence: [url=https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/blob/main/LICENSE]LICENSE[/url]

[url=https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew]Source code on GitHub[/url]
```

## 2. Images to upload

`Mod/About/Preview.png` is the Workshop header image sent with the mod update; it is not an additional gallery image. `Mod/About/ModIcon.png`
is the in-game mod-list icon and is not uploaded to the gallery.

The six files below are the intended gallery order. They were regenerated from the integrated upstream implementation by Pickle feature
`11-workshop-captures.feature` on 2026-09-22 (6/6 passed; summary in `docs/runs/2026-09-22-workshop-captures.md`) and cropped pixel-for-pixel with `Art/Crop-WorkshopScreenshots.ps1`.
For the Nelim screenshot studio, place the subject over the upper-right orange area of the central emblem and centre the camera at (132, 132) at maximum zoom. The crop may cut buildings or contents at its edge. The six crops have been checked for legibility; the final Workshop review remains the owner's.
Upload these six files in order; do not mix them with the superseded Workshop-based captures.

| # | File | Size | Shows |
| --- | --- | --- | --- |
| 1 | `Art/WorkshopScreenshots/workshop-1-the-whole-set.png` | 780 x 250, 263,370 bytes | The whole set and its visible contents |
| 2 | `Art/WorkshopScreenshots/workshop-2-a-basket-fills-up.png` | 350 x 250, 76,286 bytes | A basket empty, partly filled and full |
| 3 | `Art/WorkshopScreenshots/workshop-3-chunk-stacks.png` | 610 x 250, 161,427 bytes | Stone-as-stuff stacks at several fill levels and in two materials |
| 4 | `Art/WorkshopScreenshots/workshop-4-large-pots.png` | 610 x 250, 169,584 bytes | Large pots showing different stored foods |
| 5 | `Art/WorkshopScreenshots/workshop-5-plinths.png` | 350 x 250, 80,242 bytes | Three plinths displaying items |
| 6 | `Art/WorkshopScreenshots/workshop-6-a-stone-from-another-mod.png` | 580 x 250, 176,570 bytes | A compatible third-party stone beside granite |

Header assets already valid:

- `Mod/About/Preview.png`: 896 x 504, 673,694 bytes, below Steam's 1 MiB limit.
- `Mod/About/ModIcon.png`: 128 x 128, 28,385 bytes.

## 3. Dependency to declare on Steam

Exactly one required Workshop item:

- [Adaptive Storage Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359) — Workshop id `3033901359`, packageId
  `adaptive.storage.framework`.

Do not declare Harmony, Odyssey, Biotech, `[K]Extra Stone`, Pickle, RimLogging or PickleTools as dependencies. The last three are
development-only tools. The original module is an incompatibility, not a dependency.

## 4. Steam comments still to post

Only recipients for which no post is recorded are listed. Do not post a second message if Steam or another publication record shows that
one of these was already sent. The current repository contains no `posted` record for either recipient, and neither page's newest public
comments showed this continuation on 2026-09-22. Each message is below 1,000 characters and uses the real item URL.

### Adaptive Storage Neolithic Module — drafted, not posted

Post on https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895 only after item `3806101377` is public.

```text
Hey! 🙏 Thank you for pointing me back to the GitHub repository. My first 1.6 upload was based on the older Workshop package; Adaptive Storage Neolithic Renew now follows your current main branch, including the stone-as-stuff migration, balance work, graphics and integrated textures. I kept the continuation metadata and 1.6/test work separate, and proposed the supported-version, Linux casing and French grammar fixes back in PR #4. Credit for the buildings, art and current implementation remains yours in the description and ATTRIBUTION.md. If this causes any concern, I will take it down immediately. Thanks again for the correction and for licensing the project openly. ✨

https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377
```

### Adaptive Storage Framework — drafted, not posted

Post on https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359 only after item `3806101377` is public.

```text
This framework is the actual magic ✨ — every container in my module draws what is inside it because of you. Adaptive Storage Neolithic Renew now follows the original module's current GitHub source and its ASFStoneChunks architecture, rather than the older Workshop package I first copied. The new runtime pass will cover Core, Odyssey and a third-party stone before publication. Thank you for building something this solid to build on top of! 💛

https://steamcommunity.com/sharedfiles/filedetails/?id=3806101377
```

No separate comments are prepared for Pickle, RimLogging or PickleTools: they are credited in the description as development-only tools,
and PickleTools is the publisher's own private project. Harmony is not used directly by this module. `[K]Extra Stone` is only a test
fixture; do not post a compatibility claim before the revised runtime pass succeeds.

## 5. Other Steam fields

- Adult-content questionnaire: **No**. The mod contains storage furniture and cartoon item graphics; no mature content is depicted.
- Tags: no manual action required for the standard tags; RimWorld resends `Mod` and `1.6` on update.
- Incompatible item: Adaptive Storage Neolithic Module, Workshop id `3033901895`.
- Visibility: leave private until the integrated tree has passed the revised runtime scenarios and the replacement captures have been
  reviewed; then make it public manually.

## 6. Update notes

Use these as the Steam change notes when uploading the integrated tree. This is an update to the existing item, not a new `1.0.0` item.

```text
[h3]Upstream source integration[/h3]

[list]
[*]Rebased the continuation on the original authors' current GitHub source instead of the older Workshop package.
[*]Integrated the current definitions, balance work, graphics and textures.
[*]Switched stone storage to the framework's shared ASFStoneChunks stuff category.
[*]Added the upstream save-migration patch for the former generated stone buildings, blueprints and frames.
[*]Removed the obsolete continuation DLL and direct Harmony dependency.
[*]Kept RimWorld 1.6 support and corrected case-sensitive Russian localization paths.
[/list]
```

## Current state

- Workshop item: `3806101377`; `Mod/About/PublishedFileId.txt` is committed.
- GitHub tag and release `1.0.0` exist on the earlier packageId commit by owner instruction; they do not identify this later integration.
- Static checks: GitHub Actions on HEAD, `Test-Mod.ps1` 173 assertions (29 XML files, 171 textures) and `Test-InstalledTranslations.ps1` 123 assertions passed.
- Runtime on the integrated tree: played 2026-09-23, all green; stage is `tested`.
- Description: ready to paste manually.
- Dependency: one, fixed above.
- Gallery: six cropped replacement captures are in the paths above; the owner still needs to approve and upload them.
- Comments: two drafted, neither recorded as posted; post only after the item is public and only once.
