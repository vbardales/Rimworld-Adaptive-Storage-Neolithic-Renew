# Adaptive Storage Neolithic Renew Pickle suite

Suite target current upstream stone-as-stuff architecture. 2026-09-21 runs played superseded Workshop-based version, not validate current `Mod/` tree; raw reports gone, summary folded into 2026-09-29 trim note of `docs/runs/2026-09-23-tested-milestone.md` (originals in `git log -p -- docs/runs/`).

## Companion mod

`Mod/` = Pickle companion mod. Shared `scripts/Build-PickleSteps.ps1 -ModRoot` compile three focused step providers:

- research-tab navigation + assertions;
- publication screenshot setup;
- building + blueprint placement with explicit stuff `ThingDef`.

Stuff-aware steps required: current upstream has one stone pot, one stone plinth, one chunk stack, each made from `ASFStoneChunks`; per-stone generated building defs gone.

## Feature coverage

- `01-loads-on-the-framework`: load, research defs, research window.
- `02-generated-stones`: filename kept for history; now check shared stone defs + granite/vacstone as stuff.
- `03-contents-review`: content-dependent graphics, review captures.
- `04-save-reload`: persistence, incl. stuffed chunk stack.
- `05-french-names`: French defs + review captures for granite, vacstone, third-party stuff.
- `06-third-party-stone`: `[K]Extra Stone` accepted via `ASFStoneChunks`, no generated defs.
- `07-russian-names`: exact-case Russian injection + stuffed buildings.
- `08`: shared PickleTools research-tab coverage (`@requires:nelim.pickletools.research`). Former `09` (English labels)
  and `10` (French labels) removed 2026-09-23: re-tested shared tool label matching, not this mod, each
  failed in other language pass. Translated labels asserted by `05` and `07`.
- `11-workshop-captures`: six self-navigating publication captures on Nelim's screenshot studio;
  2026-09-22 English Workshop pass done 6/6 at max zoom. Six raw captures cropped with `scripts/Crop-WorkshopScreenshots.ps1`, still need owner visual approval.
- `12-performance-regression`: bounded tick-cost comparison for issue #3, from no module building to
  twenty-four filled large pots, with post-warm-up control.

All visual checks use `@review`: scenario load/create required state, move camera, pause, emit capture. Reviewer only accept/reject image. No audio scenarios, no purely manual checks.

## Build

```powershell
pwsh -NoProfile -File ../scripts/Build-PickleSteps.ps1 -ModRoot .
```

## Required passes

Use shared WSL launcher + its dependency maps; no Windows RimWorld. Run English pass with every DLC,
Odyssey English/French/Russian, `[K]Extra Stone` English/French. Open every `@review` capture, record
result dir, scenario totals, exit reason, log assessment in `STATUS.md`.

Core-only pass (all five DLCs off; map + wrapper deleted) **not playable**: `test-colony` fixture reference Royalty, Biotech, Odyssey
defs, load hang until watchdog kill game. Use `wsl-deps.map` (all DLCs)
for English, French, Russian passes, `wsl-deps.stones.map` for third-party-stone pass, `wsl-deps.workshop.map` for
Workshop captures. Select features by exact filenames: `-Filter Neolithic` invalid, Pickle not match that word in scenario text. On `wsl-deps.map`,
English play 01-04, 08, 12; French play 05; Russian play 07; 06 and Kura scenario of 05 need `wsl-deps.stones.map`,
skipped on `wsl-deps.map`.

## Evidence and untracked files

- `tests/Pickle/Evidence/<run>/` = where `Run-PickleWsl.ps1 -EvidenceDir` copy run raw report before lock release.
  Stay **on disk, ignored by git** (report = tens of thousands log lines + screenshots). Committed:
  one short text summary per run in `docs/runs/<date>-<pass>.md`: pass, filter, `exitReason`, scenario counts, failure cause, path of local raw report. Read `exitReason` before counts. Launcher rolling archive keep only
  five runs, not evidence; no delete `Evidence/` folders a summary still point to.
- **What to keep** (`AGENTS.md`, "Test evidence"): per scenario, only latest report for current repo revision,
  plus older one only if sole proof of check latest run not repeat. Delete report once newer
  replace it. Before delete, list what go + what stay. `STATUS.md` never point at raw folder: point at
  `docs/runs/`. Minify what stay: keep `summary.json`, `summary.md`, `junit.xml`, `evidence-complete.txt`; cut
  `Player.log` to first 100 lines + every WARN and ERROR line; delete `messages.ndjson`, `report.html`, every
  screenshot except `@review` captures a person opened, saved as JPEG (~1280 px wide, quality 70).
- Old-style `tests/pickle-run-*`, `tests/audit-*`, `tests/workflow-*audit*`, `tests/translation-validation-*` folders
  also ignored, must not return.
- `tests/Pickle/core-en-*.log` = scratch output of wrapper launches, ignored.
- `*.dds` ignored repo-wide: every texture has tracked `.png` twin, RimWorld load either. Local `.dds` files
  on disk harmless, never staged.

## Criteria for `done -> tested` (AUDIT.md, 2026-09-23)

- **No `@wip`.** None left in suite (08 and 11 now carry `@requires`, 09 and 10 removed above). Run need no
  `-IncludeWip`.
- **Every conditional scenario ran, in pass staging its condition, report read** (`setName`, suite +
  scenario names, `exitReason`, counts) before cited:

  | Condition (`@requires`) | Scenarios | Pass that plays them |
  | --- | --- | --- |
  | `nelim.pickletools.research` | 01 research tab, 05 tab, all of 08 | every pass (all maps stage it) |
  | `Odyssey` | 02, 03, 05, 07 vacstone; 11 plinths | `wsl-deps.map` in English, French, Russian; `wsl-deps.workshop.map` for 11 |
  | `Kura.ExtraStone` | 05, all of 06; 11 third-party stone | `wsl-deps.stones.map` in English and French; `wsl-deps.workshop.map` for 11 |
  | `nelim.pickletools.screenshotstudio` | all of 11 | `wsl-deps.sanctuary.map`, English |

  Skipped scenario ≠ passed: pass without Odyssey or stone mod skip their scenarios, never enough alone.
- **No manual test left to validate.** Every behavior above = automated scenario; architect menu, blueprint frames,
  inspect-pane card checked statically (`tests/Test-Mod.ps1`), listed as not covered by scenario in `STATUS.md`.
  `@review` captures still need look = read image scenario already put in intended state.

Rewritten suite played 2026-09-23 (see `docs/runs/2026-09-23-tested-milestone.md` and `STATUS.md`): every `@requires` condition ran, all green.
`docs/runs/` trimmed to that one file 2026-09-29; cover published `1.1.0`/`1.1.1` tree, not `1.1.2` fix.