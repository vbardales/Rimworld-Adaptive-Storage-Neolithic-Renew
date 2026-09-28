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
- **Keep the sources of the gallery.** `.build/pickle-run-workshop-captures` holds the raw frames the six
  images in `Art/WorkshopScreenshots/` were cut from; delete it only after the gallery is regenerated from a
  newer run.
- **Never delete a report that a `STATUS.md` field still points to**: repoint the field first.
- A run's raw folder in `.build/` is scratch once its report has been copied to `tests/Pickle/Evidence/`
  and summarised in `docs/runs/`. Clean it after the summary is written, not before.
