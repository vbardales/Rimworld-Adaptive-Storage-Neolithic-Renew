# Publishing Adaptive Storage Neolithic Renew

What the Workshop page asks for and the repository does not hold anywhere else. It serves twice: for the first upload, and for whoever
takes the mod over. Written 2026-09-21. **Nothing here has been done yet**: no screenshot for the page exists, no tag, no release, no
upload. The state of each item is at the end.

The description is in `Mod/About/About.xml` and is sent **only when the item is created**: a correction afterwards is made by hand on the
Steam page, never from `About.xml`. Read it once more before clicking.

## 1. Screenshots for the page, in the order to upload them

Steam shows the first one large: it is the most demonstrative, not the prettiest. The `Preview.png` is the header image and is not one of
these.

**Produced 2026-09-22, cropped by hand, in `Art/WorkshopScreenshots/`.** `tests/Pickle/Mod/Pickle/Features/11-workshop-captures.feature`
ran clean (6 of 6, `exitReason: passed`, `tests/pickle-run-2026-09-22-workshop-captures/`), each scenario building its own scene with the
interface hidden. Opened, every one of them: the scenes were built too close to the fixture colony's own buildings, so its bedroom, a stray
skeleton and the colony's own stockpile bled into every raw frame, and the containers sat inside a straight-edged colour band (the colony's
home-area floor tint) that cuts each picture in two. The raw frames were cropped by hand to the subject row, which removes the colony but
not the tint seam or the map's own scattered rock decoration, both outside a screenshot's control. Accepted as-is for this release, by the
owner's decision (sprinting to v1.0.0); a future capture built entirely on one side of the home-area tint, away from any rock scatter, would
not need cropping and would not show the seam. The raw, uncropped frames are also kept, under `.build/pickle-run-workshop-captures/`
(ignored by git, local only).

| # | File | Shows | Why here |
| --- | --- | --- | --- |
| 1 | `workshop-1-the-whole-set.png` | The whole set at once: wood pile, hay pile, meal shelf, textile bundle, two baskets, a large pot and a plinth, each with something in it, in one row | The mod's one idea, that every container shows its contents, in a single picture |
| 2 | `workshop-2-a-basket-fills-up.png` | A wooden basket empty, with one item, full, side by side | The idea, isolated: the basket fills up |
| 3 | `workshop-3-chunk-stacks.png` | Granite chunk stacks at one, two and six chunks, and a marble one | The sprite changes with the load, and takes the colour of what is in it |
| 4 | `workshop-4-large-pots.png` | Six large pots with different food | 64 texture variants: contents and material |
| 5 | `workshop-5-plinths.png` | Three plinths, each showing an item | The display case |
| 6 | `workshop-6-a-stone-from-another-mod.png` | The pot and the chunk stack of a stone from another mod, beside granite | The generators build for every stone in the game, not a list |

Not shown on purpose: the architect menu and its dropdown groups (no step reads it, and a hand-taken capture would be one more thing to
redo after each change), and the research window, which shows only the framework's tab.

## 2. Thanks to post, one per recipient

Post after the item is public: a link to a private item opens for nobody. Under 1000 characters each, the Steam comment limit. BBCode works
in comments, and a bare Workshop item URL turns into a thumbnail. `THIS_ITEM` stands for this mod's own URL, known only after the upload.

**Adaptive Storage Neolithic Module** (the original, https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895), for Soul, Phaneron and bradson:

> Thank you for this module, and for licensing it under MIT. I brought it forward to 1.6 as **Adaptive Storage Neolithic Renew** and changed
> almost nothing: the buildings, art and stats are yours. I fixed the Russian folder that Linux and the Steam Deck were dropping, added
> French and Russian for vacstone, translated the buildings of other mods' stones, and made a stone chunk with no colour, the
> Biomes! Caverns crash reported here in May, get no buildings instead of crashing (checked against the framework's generator, not yet with that
> mod). The original stays declared incompatible. Credit is in the description and ATTRIBUTION.md. THIS_ITEM

**Adaptive Storage Framework** (https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359), for bradson:

> Thank you for the framework: every container of this module draws what it holds because of it. I ported the Neolithic module to 1.6 as
> **Adaptive Storage Neolithic Renew** and tested it in a running game on top of your 1.6 build, with Core, Odyssey and a third-party stone
> mod loaded: no error. It reads your `GraphicsDef` and your stone generators as they are. THIS_ITEM

**Harmony** (https://steamcommunity.com/sharedfiles/filedetails/?id=2009463077), for Brrainz (Andreas Pardeike):

> Thank you for Harmony. A mod of mine uses one postfix on the language injection so that buildings generated at load time are translated
> before the game copies their labels onto blueprints and frames: **Adaptive Storage Neolithic Renew**. It ran in a real game, French, English
> and Russian, and the blueprint reads its French name. THIS_ITEM

## 3. Dependencies and DLC to declare

Checked in the sources, not from intention.

- **Required, declared in `modDependencies`:** Harmony (`brrainz.harmony`), because `Source/GeneratedTranslations.cs` patches the game with it; and the
  Adaptive Storage Framework (`adaptive.storage.framework`), whose `AdaptiveStorageBase` every building inherits and whose `GraphicsDef` draws them.
- **Not dependencies:**
  - **Odyssey** and every stone mod are inputs of the generators, which build from every child of `ChunkRockBase`, so vacstone or any other stone is
    picked up when present. Nothing is required, and the mod is played without Odyssey (five stones, fifteen generated buildings).
  - **Biotech**: two `GraphicsDef` entries carry `MayRequire="Ludeon.RimWorld.Biotech"` for the toxipotato pot; no dependency.
- **`loadAfter`:** Harmony, `Ludeon.RimWorld`, the framework.
- **Versions:** `supportedVersions` is 1.6 alone. There is no `LoadFolders.xml`: no versioned folder and no `IfModActive` branch to check, in this mod or
  in the framework's folder it stages.
- **Incompatible:** `adaptive.storage.neolithic`, the original: both share every `defName`.
- **Known soft incompatibilities from the original's page**, not tested here: Alpha Biomes chunks cannot stuff the stacked chunks, Expanded
  Woodworking woods cannot stuff the wood pile (it uses Timber), Combat Extended.

## 4. Adult content

Answer **no**. The mod adds storage furniture. The images that could raise the question were opened on 2026-09-21: the large pot texture for
human meat (`Textures/ASNeolithic/LargePot/LargePotHumanMeat_Full.png`) is a bowl of dark red meat chunks, not distinguishable from the other
meat pots, and the insect-meat one likewise. The icon and the preview show a cartoon mascot and a storeroom. The page images of section 1 do not
exist yet and must be opened before the boxes are answered for good. The boxes are answered by Virginie: this is my reading, not the answer.

## 5. Right after the upload, which cannot be redone

- **Commit `Mod/About/PublishedFileId.txt` immediately.** It holds the Workshop item id. Lost, the next upload creates a second item.
- Steam creates every item **private**: RimWorld never calls `SetItemVisibility`. Subscribe to the item, test it, then make it public by hand.
- Tag `v1.0.0` and a GitHub release carrying the `CHANGELOG.md`. Nothing was ever tagged or published, so the `[Unreleased]` section becomes
  `[1.0.0]` with its date on the day of the tag.
- Fill `workshop:` in `STATUS.md` with the item id, and post the three messages above.

## State on 2026-09-22

**The item was created on Steam, id `3806101377`, at 09:11 on 2026-09-22 — by Virginie's own hand, in her own
running game.** `About/PublishedFileId.txt` was committed and pushed immediately (`a008025`). This happened
ahead of the normal order below: the page screenshots and the tag were still pending when it went up. The item
is private by default (RimWorld never calls `SetItemVisibility`); whether it has been subscribed to, tested or
switched public is not established here.

| Item | State |
| --- | --- |
| Repository up to date and pushed, DLL matches the sources | Done |
| Workshop item created | **Done, 2026-09-22, id 3806101377** — out of order, before the screenshots and the tag |
| `About/PublishedFileId.txt` committed and pushed | Done (`a008025`) |
| Subscribe to the item, test it, then switch it public by hand | **Not done / not established** |
| Tag `v1.0.0` and GitHub release with the changelog | **Not done**: waits for the owner's word |
| Description read again, English, sections in order (IF I GO QUIET, AI-GENERATED, THANKS, attribution line, source link) | Written; to be read once more — it was already sent to Steam at item creation, so any further correction is made by hand on the Steam page, not in `About.xml` |
| This file | Written |
| Screenshots for the page, order and what each shows | **Done, 2026-09-22.** The 6 files are in `Art/WorkshopScreenshots/`, cropped by hand from a clean Pickle run; not yet uploaded to the Steam page |
| Thanks messages, one per recipient, under 1000 characters | Written; to be posted after the item is public |
| Dependencies and DLC | Fixed above, from the sources |
| Adult-content boxes | Reading given; **the images of the page do not exist yet**; the owner answers |
