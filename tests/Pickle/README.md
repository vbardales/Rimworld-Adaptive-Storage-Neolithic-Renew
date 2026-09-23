# Adaptive Storage Neolithic Renew Pickle suite

The suite targets the current upstream stone-as-stuff architecture. The runs of 2026-09-21 played the superseded
Workshop-based version; their raw reports were deleted and one line per run remains in `docs/runs/2026-09-21.md`. They do
not validate the current `Mod/` tree.

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

Use the shared WSL launcher and its dependency maps; do not start Windows RimWorld. Run the English pass with every DLC,
Odyssey English/French/Russian, and `[K]Extra Stone` English/French. Open every `@review` capture and record
the result directory, scenario totals, exit reason and log assessment in `STATUS.md`.

A Core-only pass (all five DLCs off; its map and wrapper were deleted) is **not playable**: the `test-colony` fixture references Royalty, Biotech and Odyssey
defs and its load hangs until the watchdog kills the game (`docs/runs/2026-09-23-core-en.md`). Use `wsl-deps.map` (all DLCs)
for the English, French and Russian passes, `wsl-deps.stones.map` for the third-party-stone pass and `wsl-deps.workshop.map` for the
Workshop captures. Select features by their
exact filenames: `-Filter Neolithic` is invalid because Pickle does not match that word in the scenario text. On `wsl-deps.map`,
English plays 01-04, 08 and 12, French plays 05 and Russian plays 07; 06 and the Kura scenario of 05 need `wsl-deps.stones.map` and are
skipped on `wsl-deps.map`.

## Evidence and untracked files

- `tests/Pickle/Evidence/<run>/` is where `Run-PickleWsl.ps1 -EvidenceDir` copies a run's raw report before the lock is released.
  It stays **on disk and is ignored by git** (a report is tens of thousands of log lines plus screenshots). What is committed is
  one short text summary per run in `docs/runs/<date>-<pass>.md`: pass, filter, `exitReason`, scenario counts, cause of any
  failure and the path of the local raw report. Read `exitReason` before the counts. The launcher's rolling archive keeps only
  five runs and is not evidence, so do not delete `Evidence/` folders that a summary still points to.
- **What to keep** (`AGENTS.md`, "Test evidence"): per scenario, only the latest report for the revision now in the repository,
  plus an older one only if it is the sole proof of a check the latest run did not repeat. Delete a report as soon as a newer
  one replaces it. Before deleting, list what goes and what stays. `STATUS.md` never points at a raw folder: it points at
  `docs/runs/`. Minify what stays: keep `summary.json`, `summary.md`, `junit.xml` and `evidence-complete.txt`; reduce
  `Player.log` to its first 100 lines plus every WARN and ERROR line; delete `messages.ndjson`, `report.html` and every
  screenshot except the `@review` captures a person opened, saved as JPEG (about 1280 px wide, quality 70).
- Old-style `tests/pickle-run-*`, `tests/audit-*`, `tests/workflow-*audit*` and `tests/translation-validation-*` folders are
  ignored too, and must not come back.
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

  A skipped scenario is not a passed one: a pass without Odyssey or without the stone mod skips their scenarios, so it is never enough alone.
- **No manual test left to validate.** Every behavior above is an automated scenario; the architect menu, blueprint frames
  and inspect-pane card are checked statically (`tests/Test-Mod.ps1`) and listed as not covered by a scenario in `STATUS.md`.
  The `@review` captures are still to be looked at, which is reading an image a scenario has already put in the intended state.

The current rewritten suite compiles but has not yet been played. Until it has, the project remains at
`stage: done`, not `tested`.
