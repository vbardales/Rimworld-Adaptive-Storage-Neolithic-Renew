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
- `08`: shared PickleTools research-tab coverage (`@requires:nelim.pickletools.research`). The former `09` (English labels)
  and `10` (French labels) were removed on 2026-09-23: they re-tested the shared tool's label matching, not this mod, and each
  failed in the other language's pass. The translated labels are asserted by `05` and `07`.
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

`wsl-deps.core.map` disables all five DLCs for the Core-only pass while retaining the framework and
shared research steps. Use `wsl-deps.map` for the full-DLC pass and `wsl-deps.stones.map` for the
third-party-stone pass.

Run Core English with `Run-CoreEnglish.ps1`. It selects the exact feature filenames for 01–04 and
08; `-Filter Neolithic` is invalid because Pickle does not match that word in the scenario text.
The wrapper preserves each launch's report before the shared report directory can be overwritten.

## Evidence and untracked files

- `tests/Pickle/Evidence/<run>/` is the durable handoff of `Run-PickleWsl.ps1 -EvidenceDir` and **is tracked**. Keep only what
  a verdict needs: `summary.json`, `junit.xml`, `Player.log` and the reviewed captures as JPEGs. Do not commit the raw
  multi-hundred-MB screenshot folders; the launcher's rolling archive keeps five runs and is not evidence.
- `tests/Pickle/core-en-*.log` are scratch output of the wrapper launches and are ignored.
- `*.dds` is ignored repository-wide: every texture has a tracked `.png` twin, and RimWorld loads either. Local `.dds` files
  left on disk are harmless and are never staged.

## Criteria for `done -> tested` (AUDIT.md, 2026-09-23)

- **No `@wip`.** None remains in the suite (08 and 11 now carry `@requires`, 09 and 10 were removed above). A run needs no
  `-IncludeWip`.
- **Every conditional scenario has run, in a pass that stages its condition, and its report was read** (`setName`, suite and
  scenario names, `exitReason`, counts) before it is cited:

  | Condition (`@requires`) | Scenarios | Pass that plays them |
  | --- | --- | --- |
  | `nelim.pickletools.research` | 01 research tab, 05 tab, all of 08 | every pass (all maps stage it) |
  | `Odyssey` | 02, 03, 05, 07 vacstone; 11 plinths | `wsl-deps.map` in English, French, Russian; `wsl-deps.workshop.map` for 11 |
  | `Kura.ExtraStone` | 05, all of 06; 11 third-party stone | `wsl-deps.stones.map` in English and French; `wsl-deps.workshop.map` for 11 |
  | `nelim.pickletools.screenshotstudio` | all of 11 | `wsl-deps.workshop.map`, English |

  A skipped scenario is not a passed one: the Core-only pass legitimately skips the Odyssey ones, which is why it is not enough.
- **No manual test left to validate.** Every behavior above is an automated scenario; the architect menu, blueprint frames
  and inspect-pane card are checked statically (`tests/Test-Mod.ps1`) and listed as not covered by a scenario in `STATUS.md`.
  The `@review` captures are still to be looked at, which is reading an image a scenario has already put in the intended state.

The current rewritten suite compiles but has not yet been played. Until it has, the project remains at
`stage: done`, not `tested`.
