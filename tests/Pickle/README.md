# Adaptive Storage Neolithic Renew Pickle suite

The suite targets the current upstream stone-as-stuff architecture. Historical result folders under
`tests/pickle-run-2026-09-21-*` document the superseded Workshop-based version and do not validate the
current `Mod/` tree.

## Companion mod

`Mod/` is a Pickle companion mod. `Source/Build.ps1` compiles three focused step providers:

- research-tab navigation and assertions;
- publication screenshot setup;
- building and blueprint placement with an explicit stuff `ThingDef`.

The stuff-aware steps are required because the current upstream code has one stone pot, one stone plinth
and one chunk stack, each made from `ASFStoneChunks`; per-stone generated building defs no longer exist.

## Feature coverage

- `01-loads-on-the-framework`: load, research definitions and research window.
- `02-generated-stones`: retained filename for history; now checks shared stone defs and granite/vacstone as stuff.
- `03-contents-review`: content-dependent graphics with review captures.
- `04-save-reload`: persistence, including the stuffed chunk stack.
- `05-french-names`: French defs and review captures for granite, vacstone and third-party stuff.
- `06-third-party-stone`: `[K]Extra Stone` accepted through `ASFStoneChunks` without generated defs.
- `07-russian-names`: exact-case Russian injection and stuffed buildings.
- `08`–`10`: shared PickleTools research-tab coverage.
- `11-workshop-captures`: six self-navigating publication captures on Nelim's screenshot studio;
  the 2026-09-22 English Workshop pass completed 6/6 at maximum zoom. The six raw captures were
  cropped with `Art/Crop-WorkshopScreenshots.ps1` and still need the owner's visual approval.
- `12-performance-regression`: bounded tick-cost comparison for issue #3, from no module building to
  twenty-four filled large pots, with a post-warm-up control.

All visual checks use `@review`: the scenario loads or creates the required state, moves the camera, pauses
and emits a capture. A reviewer only accepts or rejects the image. There are no audio scenarios and no
purely manual checks.

## Build

```powershell
pwsh -NoProfile -File tests/Pickle/Source/Build.ps1
```

## Required passes

Use the shared WSL launcher and its dependency maps; do not start Windows RimWorld. Run Core English,
Odyssey English/French/Russian, and `[K]Extra Stone` English/French. Open every `@review` capture and record
the result directory, scenario totals, exit reason and log assessment in `STATUS.md`.

The current rewritten suite compiles but has not yet been played. Until it has, the project remains at
`stage: done`, not `tested`.
