# Publishing Adaptive Storage Neolithic Renew

What the Workshop page asks for and the repository does not hold anywhere else. It serves twice: for the first upload, and for whoever
takes the mod over. Written 2026-09-21 and updated after the upstream-source correction on 2026-09-22.

**Publication is paused.** The live item and its six existing screenshots describe the superseded Workshop-based implementation. The
current tree follows upstream GitHub `main` at `2bc3fe4`, uses stone chunks as stuff, and has no continuation DLL or direct Harmony
dependency. Run and review the revised Pickle suite before replacing the live text and captures.

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
| 6 | `workshop-6-a-stone-from-another-mod.png` | The pot and the chunk stack of a stone from another mod, beside granite | Compatible stone chunks work through the shared stuff category, not a generated list |

Not shown on purpose: the architect menu and its dropdown groups (no step reads it, and a hand-taken capture would be one more thing to
redo after each change), and the research window, which shows only the framework's tab.

## 2. Thanks to post, one per recipient

Post after the item is public: a link to a private item opens for nobody. Under 1000 characters each, the Steam comment limit. BBCode works
in comments, and a bare Workshop item URL turns into a thumbnail. `THIS_ITEM` stands for this mod's own URL, known only after the upload.

There is no separate Harmony thank-you message: Harmony is no longer used directly by this module.

**Adaptive Storage Neolithic Module** (the original, https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895), for Soul, Phaneron and bradson. 856 characters:

```
Hey! 🙏 Thank you for pointing me back to the GitHub repository. My first 1.6 upload was based on the older Workshop package; Adaptive Storage Neolithic Renew now follows your current `main`, including the stone-as-stuff migration, balance work, graphics and integrated textures. I kept the continuation metadata and 1.6/test work separate, and proposed the small supported-version, Linux casing and French grammar fixes back in PR #4. Credit for the buildings, art and current implementation remains yours in the description and ATTRIBUTION.md. Thanks again for the correction and for licensing the project openly. ✨
THIS_ITEM
```

**Adaptive Storage Framework** (https://steamcommunity.com/sharedfiles/filedetails/?id=3033901359), for bradson. 488 characters:

```
This framework is the actual magic ✨ — every single container in my module draws what's inside it because of you 🙌. Adaptive Storage Neolithic Renew now follows the original module's current GitHub source and its ASFStoneChunks architecture, rather than the older Workshop package I first copied. The revised 1.6 runtime pass will cover Core, Odyssey and a third-party stone before I repost the result. Thank you for building something this solid to build on top of! 💛
THIS_ITEM
```

## 3. Dependencies and DLC to declare

Checked in the sources, not from intention.

- **Required, declared in `modDependencies`:** Adaptive Storage Framework (`adaptive.storage.framework`), whose storage parents and graphics types the module uses.
- **Not dependencies:**
  - **Odyssey** and stone mods may contribute things in the framework's `ASFStoneChunks` stuff category; no per-stone building defs are generated.
  - **Biotech**: two `GraphicsDef` entries carry `MayRequire="Ludeon.RimWorld.Biotech"` for the toxipotato pot; no dependency.
- **`loadAfter`:** `Ludeon.RimWorld`, then the framework.
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
- Tag `1.0.0` and a GitHub release carrying the `CHANGELOG.md`. The owner chose the packageId-creation commit for this tag;
  the changelog already carries `[1.0.0]` with the release date.
- Fill `workshop:` in `STATUS.md` with the item id, and post the two messages above.

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
| Tag `1.0.0` and GitHub release with the changelog | **Done, 2026-09-22:** release published at `https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/releases/tag/1.0.0`; tag points to `8fb1177`, the packageId-creation commit, by owner instruction, not to the current delivered tree. |
| Description read again, English, sections in order (IF I GO QUIET, AI-GENERATED, THANKS, attribution line, source link) | Written; to be read once more — it was already sent to Steam at item creation, so any further correction is made by hand on the Steam page, not in `About.xml` |
| This file | Written |
| Screenshots for the page, order and what each shows | **Done, 2026-09-22.** The 6 files are in `Art/WorkshopScreenshots/`, cropped by hand from a clean Pickle run; not yet uploaded to the Steam page |
| Thanks messages, one per recipient, under 1000 characters | Written; to be posted after the item is public |
| Dependencies and DLC | Fixed above, from the sources |
| Adult-content boxes | Reading given; **the images of the page do not exist yet**; the owner answers |
