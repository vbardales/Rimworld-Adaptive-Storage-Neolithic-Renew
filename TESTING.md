# Testing Adaptive Storage Neolithic Renew

Plan cover current upstream-based stone-as-stuff implementation. Results recorded before 2026-09-22 upstream integration apply only to superseded Workshop-based implementation.

## Static checks

```powershell
pwsh -NoProfile -File tests/Test-Mod.ps1
pwsh -NoProfile -File tests/Test-InstalledTranslations.ps1
pwsh -NoProfile -File tests/Pickle/Source/Build.ps1
```

Checks must establish:

- all XML parses, def identities unique;
- packageId, 1.6 support, framework dependency, incompatibility, Workshop id preserved;
- `ASNeolithicLargePotStone`, `ASNeolithicPlinthStone`, `ASNeolithicChunkStorage` consume `ASFStoneChunks` as stuff;
- all three old generated-building families migrate via `ChunkBackCompatibility.xml`;
- obsolete per-stone generator patches, Harmony dependency, continuation DLL absent;
- Russian `DefInjected` casing, French/Russian targets, texture paths valid;
- Pickle companion, incl. stuffed-building steps, compiles.

## Runtime suite

Use shared WSL Pickle launcher only after normal Windows/WSL process and lock checks pass. Never launch Windows RimWorld executable for this audit.

Run revised suite in these configurations:

1. English, Core + Adaptive Storage Framework.
2. English, Odyssey enabled.
3. French, Odyssey enabled.
4. Russian, Odyssey enabled on case-sensitive WSL filesystem.
5. English and French with `[K]Extra Stone`.
6. Existing save with buildings from former per-stone architecture, to exercise migration.
   **Not played in game, by decision of 2026-09-21** (recorded in `STATUS.md`): backward compatibility checked statically by `tests/Test-Mod.ps1`, which reads `ChunkBackCompatibility.xml`. Pickle suite has no scenario for it; item not blocker for `tested`.

Suite must verify automatically:

- clean game load, no logged errors;
- both research projects, framework research tab;
- construction blueprints, spawned buildings for granite;
- vacstone, third-party andesite accepted as stuff by all three stone buildings;
- save/reload persistence of building def and its stuff;
- French and Russian injected def text;
- baskets, pots, stacks, plinths, content-dependent graphics.

Every scenario needing visual judgment carries `@review`, navigates to state itself, pauses, produces screenshot. Reviewer only accepts or rejects capture. No audio, so no purely manual runtime scenario.

## Publication regression

After runtime suite passes, regenerate all six Workshop captures from feature 11. Existing files made from superseded implementation; not evidence for current release.

Then verify Steam-downloaded copy, not only source checkout: required framework item, load order, research, construction, migration, localization, logs, save/reload. Record exact run and reviewed captures in `STATUS.md` before restoring `stage: tested`.

### The downloaded copy, automated

```powershell
pwsh -NoProfile -File tests/Test-SteamCopy.ps1
```

Reads copy Steam gave subscriber (`steamapps/workshop/content/294100/<id>`, found via Steam registry key and `libraryfolders.vdf`, or given with `-Path`), compares file by file with `Mod/` tree of newest `v*` tag, by git blob hash (`-Ref` picks another). Fails on: missing file, extra file, different content, `.dds`/`.pdb`/`.user` file, wrong `packageId` or `PublishedFileId.txt`, download size differing from Steam-recorded one. Line-ending difference alone = warning.

Exit code 0 passed, 1 failed, **2 skipped because no copy found, not a pass**. Not in CI job: runner has no Steam copy, steamcmd cannot fetch Workshop item without login.

**Not proven: how game loads copy.** Load order, research, construction, localization, logs, save/reload from Steam copy remain in-game run. Two limits block automation: Pickle launcher mounts working tree in WSL, which cannot see Windows Steam library; development junction in `RimWorld/Mods` with same `packageId` puts two mods under one identifier. Script warns when finds one; remove from `Mods/` before in-game subscription test.

## Evidence to keep

Raw reports large, live only on disk: `tests/Pickle/Evidence/` and `.build/` gitignored; git holds one text line per run in `docs/runs/`. Rules from `AGENTS.md`:

- **Keep, per pass and per scenario, latest report for revision now in repository.** Older ones go once newer replaces them, unless one is only proof of a check latest run did not repeat. Report about superseded build proves nothing about current one: runs of 2026-09-21 played Workshop-based implementation, deleted for that reason.
- **Keep two sets, not one.** `wsl-deps.map` (no optional mods) and `wsl-deps.stones.map` (with `[K]Extra Stone`) each prove something other cannot, so one report from each stays.
  2026-09-23 layout: English `map` split over two launches (feature 01, then 02, 03, 04, 08, 12), French and Russian `map` once each, `stones` in English and French, Workshop captures. Each is sole proof of its scenarios, none redundant.
- **Read `exitReason` before counts, open every `@review` capture** before citing run. Green scenario says path ran, not that picture shows anything.
- **Keep raw gallery frames until owner validated and uploaded it**, then delete: six images in `Art/Gallery/` (1280 px wide, whole frames) are the record, replay of `11-workshop-captures.feature` regenerates frames. Summary, `junit.xml`, `Player.log` of run stay.
- **Never delete report a `STATUS.md` field still points to**: repoint field first.
- Run's raw folder in `.build/` is scratch once report copied to `tests/Pickle/Evidence/` and summarised in `docs/runs/`. Clean after summary written, not before.
- **Once published, trim `docs/runs/` to what still proves current `Mod/`** (`AGENTS.md`): drop development-era and pre-integration runs, keep tested milestone and any post-publication regression. Done 2026-09-29: 14 files (2026-09-13 to 2026-09-23) consolidated into one, `docs/runs/2026-09-23-tested-milestone.md`; nothing lost, `git log -p -- docs/runs/` has every original. Next in-game run starts clean file.

### What to keep per run (owner's request, 2026-10-02)

- Keep only `summary.json`, `summary.md`, `junit.xml`, `Player.log` of each regression pass. Delete `report.html`, `messages.ndjson` (tens of MB, stale after rebuild) and, for regression pass whose `@review` captures nobody opens, `screenshots/` folder (about 80 MB per full pass).
- Keep `screenshots/` only where capture is proof: Workshop gallery run (`workshop-2026-09-23`) and any run whose `@review` captures were opened and accepted.
- Never keep two folders for same pass on same revision; newer replaces older.
- Features 05 (French) and 07 (Russian) assert one language each, steps end in `when the language is French` / `Russian` (2026-10-08): check only in pass of that language, report `not applicable` (attachment, green scenario) in any other, so English, French or Russian pass has no red by design any more. Red now means defect or stale expectation. Scenarios of 05 taking screenshots still run in every language.

## Gallery regeneration phase (owner's request, 2026-10-04)

Workshop gallery regenerated by capture scenario, not by hand, whenever mod's art or staging changes and before publication updating images. Rules:

- **Scenario:** `11-workshop-captures.feature`, six pictures in upload order. Gallery capture = staged photograph (owner's rule of 2026-10-02): common set, subject and contents chosen, interface hidden. Menus only captures not staged.
- **Map:** sanctuary save `Nelims-tribe` of Sanctuary Backlot repository (since 2026-10-08; place steps `Nelim's Sanctuary:` = SB, rest `Nelim's Pickle Tools:` = NPT), frames by name (`I am at the sanctuary "hut"`), emptied by name (`the sanctuary "hut" is emptied`). Reference: `PickleTools/docs/SANCTUAIRE-LIEUX.md`.
- **Pass:** one request, `-Filter '11-workshop-captures.feature'`, `-Language English`, `-DepMap wsl-deps.sanctuary.map`, fresh `-EvidenceDir`, SHA in label. Plinth and third-party scenes skip without Odyssey or `[K]Extra Stone`.
- **Then, by hand:** open every capture, crop with `scripts/Crop-WorkshopScreenshots.ps1 -SourceDirectory <evidence>/screenshots[,<other evidence>/screenshots]` (keeps whole frames, resizes to 1280 px), write result into `Art/Gallery/1-` to `6-`, run `node scripts/Compress-Gallery.cjs` (256-colour PNGs, each image under 2 MB, folder under 8 MB, PUBLISHING.md), keep `0-preview.png` identical to Preview, delete raw captures, then upload gallery on Steam page in order.
- Fixture is Git LFS file kept by PickleTools; first commit waits for owner. Until then pass only runs on this machine.

### Choosing the gallery place (owner's request, 2026-10-06)

Choose place after reading name and description of every named place (`ScreenshotStudio/Source/StudioSteps.cs`, `SanctuarySites`, or `PickleTools/docs/SANCTUAIRE-LIEUX.md`), not first one that works. PickleTools gallery rules (`docs/GALERIE.md`) apply:

- Never clear, empty or raze place to suit mod (e.g. bamboo forest for neutral background): places keep meaning, smileys must stay checkable. If no place fits, describe need (size, ground, background, light, animals) to Pickle Tools session. Questions go through Ticket Manager session.
- Never remove roof for gallery capture: roof belongs to building, removal leaves wall shadows. Dark place lit with torches, otherwise choose outdoor place with natural light.
- Do not submit before PickleTools announces final `Nelims-tribe` fixture ready.

Places considered, outdoors with natural noon light:

| Place | Ground | Verdict |
|---|---|---|
| `calm-zone` | cream/white rectangle | Chosen: neutral, bright, smooth cream stone. |
| `emerald-clearing` (aliases `podium`, `clearing-a`) | vivid green square on bare earth, power cell at x 205 | Rejected: green square strong colour cast, not neutral ground. |
| `exhibition-zone` | saturated orange carpet, one object per cell | Rejected for storage: colour would swallow wooden and leather objects. |
| `gravel-yard` | gravel, furniture and lamps | Rejected: would need clearing. |
| `hut` (alias `tea-room`) | roofed wood interior | Rejected: dark inside, roof must not be removed. |

Choice (2026-10-06, from PickleTools noon photographs of candidates): **`calm-zone`**. Square is cream smooth stone, about 11 x 11 cells (about 9 x 9 usable, edge soft), ringed with flowers, no wall shadow, two monuments outside zoom-11 frame. `emerald-clearing` vivid green square, `exhibition-zone` orange smiley, `gravel-yard` and `statue-garden` cluttered. Camera of `calm-zone` leaves square right of frame centre, so crop boxes follow it.

### Camp candidates (owner's request, 2026-10-07)

`12-workshop-camp.feature` (`@wip`, pass `wsl-deps.camp.map`, `-IncludeWip`) plays second series, "Noon at the camp", with three pawns (Venus Touch Waistlines, Female Body Variants, WDI bodies loaded). Six pictures cut by `node scripts/Cut-Candidates.cjs <evidence>/screenshots` into `Art/Gallery/` as `7-`, `8-`, `9-` (accepted by owner 2026-10-08, three others refused and deleted, reindexed without gaps 2026-10-10) (1280 px, 256 colours), after noon set; uploaded set `1-` to `6-` untouched, and the owner join it, decided by session 2026-10-10 as gallery director (8 MB folder, 2 MB each: whole `Art/Gallery/` is 4.98 MB with camp pictures).
Pawn order that works (Pickle Tools, 2026-10-07): waits first, `game speed is paused`, create colonists and dress them, `stands at` last, then `the other colonists are out of frame`, presentation mode, capture; no wait after pawns. Raw frames: `tests/Pickle/Evidence/camp-final-7438e80`, kept until owner validated and uploaded. Remaining flaw: thin strip of place's green border at top edge of 1, 4 and 6.