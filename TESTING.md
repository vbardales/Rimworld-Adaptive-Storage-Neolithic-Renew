# Testing Adaptive Storage Neolithic Renew

This plan covers the current upstream-based stone-as-stuff implementation. Results recorded before the
2026-09-22 upstream integration apply only to the superseded Workshop-based implementation.

## Static checks

```powershell
pwsh -NoProfile -File tests/Test-Mod.ps1
pwsh -NoProfile -File tests/Test-InstalledTranslations.ps1
pwsh -NoProfile -File tests/Pickle/Source/Build.ps1
```

These checks must establish:

- all XML parses and def identities are unique;
- packageId, 1.6 support, framework dependency, incompatibility and Workshop id are preserved;
- `ASNeolithicLargePotStone`, `ASNeolithicPlinthStone` and `ASNeolithicChunkStorage` consume
  `ASFStoneChunks` as stuff;
- all three old generated-building families migrate through `ChunkBackCompatibility.xml`;
- the obsolete per-stone generator patches, Harmony dependency and continuation DLL are absent;
- Russian `DefInjected` casing, French/Russian targets and texture paths are valid;
- the Pickle companion, including its stuffed-building steps, compiles.

## Runtime suite

Use the shared WSL Pickle launcher only after its normal Windows/WSL process and lock checks pass. Never
launch the Windows RimWorld executable for this audit.

Run the revised suite in these configurations:

1. English, Core + Adaptive Storage Framework.
2. English, Odyssey enabled.
3. French, Odyssey enabled.
4. Russian, Odyssey enabled on the case-sensitive WSL filesystem.
5. English and French with `[K]Extra Stone`.
6. Existing save containing buildings from the former per-stone architecture, to exercise the migration.
   **Not played in game, by decision of 2026-09-21** (recorded in `STATUS.md`): backward compatibility is
   checked statically by `tests/Test-Mod.ps1`, which reads `ChunkBackCompatibility.xml`. The Pickle suite has
   no scenario for it and this item is not a blocker for `tested`.

The suite must verify automatically:

- clean game load and no logged errors;
- both research projects and the framework research tab;
- construction blueprints and spawned buildings for granite;
- vacstone and third-party andesite accepted as stuff by all three stone buildings;
- save/reload persistence of both the building def and its stuff;
- French and Russian injected def text;
- baskets, pots, stacks, plinths and their content-dependent graphics.

Every scenario needing visual judgment carries `@review` and must navigate to the state itself, pause, and
produce a screenshot. The reviewer should only need to accept or reject that capture. There is no audio and
therefore no purely manual runtime scenario.

## Publication regression

After the runtime suite passes, regenerate all six Workshop captures from feature 11. The existing files were
made from the superseded implementation and must not be treated as evidence for the current release.

Then verify the Steam-downloaded copy, not only the source checkout: required framework item, load order,
research, construction, migration, localization, logs and save/reload. Record the exact run and reviewed
captures in `STATUS.md` before restoring `stage: tested`.

### The downloaded copy, automated

```powershell
pwsh -NoProfile -File tests/Test-SteamCopy.ps1
```

Reads the copy Steam gave the subscriber (`steamapps/workshop/content/294100/<id>`, found through the Steam
registry key and `libraryfolders.vdf`, or given with `-Path`) and compares it file by file with the `Mod/` tree
of the newest `v*` tag, by git blob hash (`-Ref` picks another). It fails on a missing file, an extra file, a
different content, a `.dds`/`.pdb`/`.user` file, a wrong `packageId` or `PublishedFileId.txt`, and a download
whose size differs from the one Steam recorded. A difference in line endings alone is a warning.

Exit code 0 passed, 1 failed, **2 skipped because no copy was found, which is not a pass**. It is not in the CI
job: a runner has no Steam copy and steamcmd cannot fetch a Workshop item without a login.

**What it does not prove is how the game loads the copy.** Load order, research, construction, localization,
logs and save/reload from the Steam copy remain a run in game. Two limits stand in the way of automating that:
the Pickle launcher mounts the working tree in the WSL, which does not see the Windows Steam library, and a
development junction in `RimWorld/Mods` carrying the same `packageId` puts two mods under one identifier. The
script warns when it finds one; take it out of `Mods/` before a subscription test in game.

## Evidence to keep

Raw reports are large and live only on disk: `tests/Pickle/Evidence/` and `.build/` are gitignored, and
what belongs in git is one text line per run in `docs/runs/`. The rules that apply here, from `AGENTS.md`:

- **Keep, per pass and per scenario, the latest report for the revision now in the repository.** Older
  ones go as soon as a newer one replaces them, unless one is the only proof of a check the latest run
  did not repeat. A report about a superseded build proves nothing about the current one: the runs of
  2026-09-21 played the Workshop-based implementation and were deleted for that reason.
- **Two sets are kept, not one.** `wsl-deps.map` (without optional mods) and `wsl-deps.stones.map` (with
  `[K]Extra Stone`) each prove something the other cannot, so a report from each stays.
  The 2026-09-23 layout: English `map` split over two launches (feature 01, then 02, 03, 04, 08, 12), French
  and Russian `map` once each, `stones` in English and French, and the Workshop captures. Every one of those
  is the sole proof of its scenarios, so none is redundant.
- **Read `exitReason` before the counts, and open every `@review` capture** before citing a run. A green
  scenario says the path ran, not that the picture shows anything.
- **Keep the sources of the gallery.** The raw frames the six images in `Art/Gallery/` were cut from live in
  `tests/Pickle/Evidence/gallery-sanctuary-lit-c544d92`; delete them only after the gallery is regenerated
  from a newer run.
- **Never delete a report that a `STATUS.md` field still points to**: repoint the field first.
- A run's raw folder in `.build/` is scratch once its report has been copied to `tests/Pickle/Evidence/`
  and summarised in `docs/runs/`. Clean it after the summary is written, not before.
- **Once published, trim `docs/runs/` to what still proves the current `Mod/`** (`AGENTS.md`): drop
  development-era and pre-integration runs, keep the tested milestone and any post-publication regression.
  Done 2026-09-29: 14 files (2026-09-13 to 2026-09-23) consolidated into one, `docs/runs/2026-09-23-tested-milestone.md`;
  nothing is lost, `git log -p -- docs/runs/` has every original. The next in-game run starts a clean file.

### What to keep per run (owner's request, 2026-10-02)

- Keep only `summary.json`, `summary.md`, `junit.xml` and `Player.log` of each regression pass. Delete `report.html`, `messages.ndjson` (tens of MB, stale after a rebuild) and, for a regression pass whose `@review` captures nobody opens, the `screenshots/` folder (about 80 MB per full pass).
- Keep `screenshots/` only where a capture is the proof: the Workshop gallery run (`workshop-2026-09-23`) and any run whose `@review` captures were opened and accepted.
- Never keep two folders for the same pass on the same revision; the newer replaces the older.
- Features 05 (French) and 07 (Russian) assert one language each: play them only under `-Language French` or `-Language Russian`. In an English pass they fail by design (2026-10-02, `042e` and `96b2`).

## Gallery regeneration phase (owner's request, 2026-10-04)

The Workshop gallery is regenerated by a capture scenario, not by hand, whenever the mod's art or the staging changes
and before a publication that updates the images. Rules:

- **Scenario:** `11-workshop-captures.feature`, the six pictures in upload order. A gallery capture is a staged photograph
  (owner's rule of 2026-10-02): common set, subject and contents chosen, interface hidden. Menus are the only captures not staged.
- **Map:** the sanctuary save `Nelims-tribe` of PickleTools' ScreenshotStudio, frames by name (`I am at the sanctuary "hut"`),
  emptied by name (`the sanctuary "hut" is emptied`). Its reference is `PickleTools/docs/SANCTUAIRE-LIEUX.md`.
- **Pass:** one request, `-Filter '11-workshop-captures.feature'`, `-Language English`, `-DepMap wsl-deps.sanctuary.map`,
  a fresh `-EvidenceDir`, the SHA in the label. Plinth and third-party scenes skip without Odyssey or `[K]Extra Stone`.
- **Then, by hand:** open every capture, crop with `Art/Crop-WorkshopScreenshots.ps1 -SourceDirectory <evidence>/screenshots`
  (adjust the boxes to the new framing), write the result into `Art/Gallery/1-` to `6-`, keep `0-preview.png` identical to the
  Preview, delete the raw captures, then upload the gallery on the Steam page in order.
- The fixture is a Git LFS file kept by PickleTools; its first commit waits for the owner. Until then the pass only runs on this machine.

### Choosing the gallery place (owner's request, 2026-10-06)

Choose the place after reading the name and description of every named place (`ScreenshotStudio/Source/StudioSteps.cs`,
`SanctuarySites`, or `PickleTools/docs/SANCTUAIRE-LIEUX.md`), not the first one that works. PickleTools' gallery rules
(`docs/GALERIE.md`) apply:

- Never clear, empty or raze a place so that it suits the mod (for example the bamboo forest for a neutral background):
  places keep their meaning and the smileys must stay checkable. If no place fits, describe the need (size, ground,
  background, light, animals) to the Pickle Tools session. Questions for it go through the Ticket Manager session.
- Never remove a roof for a gallery capture: the roof belongs to the building and removing it leaves wall shadows. A dark
  place is lit with torches, otherwise choose an outdoor place with natural light.
- Do not submit before PickleTools announces that the final `Nelims-tribe` fixture is ready.

Places considered for this mod, outdoors with natural noon light:

| Place | Ground | Verdict |
|---|---|---|
| `calm-zone` | cream/white rectangle | Preferred on paper: neutral, bright. Two monuments stand to the right; check the frame. |
| `emerald-clearing` (aliases `podium`, `clearing-a`) | bare earth, free 14 x 14 square, power cell at x 205 | Fallback: free and already scripted, but its ground may lack contrast with wood. |
| `exhibition-zone` | saturated orange carpet, one object per cell | Rejected for storage: the colour would swallow wooden and leather objects. |
| `gravel-yard` | gravel, furniture and lamps | Rejected: would need clearing. |
| `hut` (alias `tea-room`) | roofed wood interior | Rejected: dark inside, and its roof must not be removed. |

The choice is confirmed from NPT's empty photographs of the candidates; record the final choice and the reason here.
