# Testing Adaptive Storage Neolithic Renew

Plan cover current upstream-based stone-as-stuff implementation. Results recorded before 2026-09-22 upstream integration apply only to superseded Workshop-based implementation.

## Static checks

```powershell
pwsh -NoProfile -File Tests/Test-Mod.ps1
pwsh -NoProfile -File ../scripts/Build-PickleSteps.ps1 -ModRoot .
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
   **Not played in game, by decision of 2026-09-21** (recorded in `STATUS.md`): backward compatibility checked statically by `Tests/Test-Mod.ps1`, which reads `ChunkBackCompatibility.xml`. Pickle suite has no scenario for it; item not blocker for `tested`.
7. English with Better Architect Menu (`ferny.BetterArchitect`, Architect Icons, pass map `wsl-deps.bam.map`, feature `13-better-architect-menu`): the mod's own gated patch files baskets, plinths, piles, bundles, stone stack, large pots and meal shelf in Better Architect Menu's categories (2026-11-16). Uses the local step `the ThingDef {string} has its designation category {string}` because the shared def step refuses names shared with a GraphicsDef.

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
pwsh -NoProfile -File ../scripts/Test-SteamCopy.ps1 -ModRoot .
```

Reads copy Steam gave subscriber (`steamapps/workshop/content/294100/<id>`, found via Steam registry key and `libraryfolders.vdf`, or given with `-Path`), compares file by file with `Mod/` tree of newest `v*` tag, by git blob hash (`-Ref` picks another). Fails on: missing file, extra file, different content, `.dds`/`.pdb`/`.user` file, wrong `packageId` or `PublishedFileId.txt`, download size differing from Steam-recorded one. Line-ending difference alone = warning.

Exit code 0 passed, 1 failed, **2 skipped because no copy found, not a pass**. Not in CI job: runner has no Steam copy, steamcmd cannot fetch Workshop item without login.

**Not proven: how game loads copy.** Load order, research, construction, localization, logs, save/reload from Steam copy remain in-game run. Two limits block automation: Pickle launcher mounts working tree in WSL, which cannot see Windows Steam library; development junction in `RimWorld/Mods` with same `packageId` puts two mods under one identifier. Script warns when finds one; remove from `Mods/` before in-game subscription test.

## Evidence to keep

Raw reports large, live only on disk: `Tests/Pickle/Evidence/` and `.build/` gitignored; git holds one text line per run in `Docs/runs/`. Rules from `AGENTS.md`:

- **Keep, per pass and per scenario, latest report for revision now in repository.** Older ones go once newer replaces them, unless one is only proof of a check latest run did not repeat. Report about superseded build proves nothing about current one: runs of 2026-09-21 played Workshop-based implementation, deleted for that reason.
- **Keep two sets, not one.** `wsl-deps.map` (no optional mods) and `wsl-deps.stones.map` (with `[K]Extra Stone`) each prove something other cannot, so one report from each stays.
  2026-09-23 layout: English `map` split over two launches (feature 01, then 02, 03, 04, 08, 12), French and Russian `map` once each, `stones` in English and French, Workshop captures. Each is sole proof of its scenarios, none redundant.
- **Read `exitReason` before counts, open every `@review` capture** before citing run. Green scenario says path ran, not that picture shows anything.
- **Keep raw gallery frames until owner validated and uploaded it**, then delete: six images in `Art/Gallery/` (1280 px wide, whole frames) are the record, replay of `11-workshop-captures.feature` regenerates frames. Summary, `junit.xml`, `Player.log` of run stay.
- **Never delete report a `STATUS.md` field still points to**: repoint field first.
- Run's raw folder in `.build/` is scratch once report copied to `Tests/Pickle/Evidence/` and summarised in `Docs/runs/`. Clean after summary written, not before.
- **Once published, trim `Docs/runs/` to what still proves current `Mod/`** (`AGENTS.md`): drop development-era and pre-integration runs, keep tested milestone and any post-publication regression. Done 2026-09-29: 14 files (2026-09-13 to 2026-09-23) consolidated into one, `Docs/runs/2026-09-23-tested-milestone.md`; nothing lost, `git log -p -- Docs/runs/` has every original. Next in-game run starts clean file.

### What to keep per run (owner's request, 2026-10-02)

- Keep only `summary.json`, `summary.md`, `junit.xml`, `Player.log` of each regression pass. Delete `report.html`, `messages.ndjson` (tens of MB, stale after rebuild) and, for regression pass whose `@review` captures nobody opens, `screenshots/` folder (about 80 MB per full pass).
- Keep `screenshots/` only where capture is proof: Workshop gallery run (`workshop-2026-09-23`) and any run whose `@review` captures were opened and accepted.
- Never keep two folders for same pass on same revision; newer replaces older.
- Features 05 (French) and 07 (Russian) assert one language each, steps end in `when the language is French` / `Russian` (2026-10-08): check only in pass of that language, report `not applicable` (attachment, green scenario) in any other, so English, French or Russian pass has no red by design any more. Red now means defect or stale expectation. Scenarios of 05 taking screenshots still run in every language.
