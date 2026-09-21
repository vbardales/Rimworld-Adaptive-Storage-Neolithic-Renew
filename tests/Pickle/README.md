# In-game scenarios, run by Pickle

The scenarios of [TESTING.md](../../TESTING.md) that a running game is needed for, and only those.
`Mod/` is a companion mod, **Adaptive Storage Neolithic Renew - Pickle tests**, never published.

**Status: run once, 2026-09-21 10:34 to 10:40, in the WSL under Xvfb: 19 scenarios played of 19 written, 16 passed,
1 failed, 2 skipped (the two `@wip`), `exitReason: failed`.** The failure was the suite's own: a hand-written
building shares its defName with the framework GraphicsDef that draws it, so `is defined by mod` refused the
ambiguous name. The scenario was rewritten by type and split in two (20 scenarios now); the rewritten
version has been checked for syntax and step vocabulary only and has not been played. Results and the
run's summary are in [`../pickle-run-2026-09-21/`](../pickle-run-2026-09-21/).

## Scope: what stays in Gherkin, and what does not

Everything provable outside the game is proved outside it, by `tests/Test-Mod.ps1` (1,310 assertions:
XML, template expansion against five, six and seven stone fixtures, translation coverage) and
`tests/Test-InstalledTranslations.ps1` (28 assertions against the shipped assembly and the installed
generator), in seconds. So the defNames' uniqueness, the generated counts, the stone templates, the
translation keys and the fallback logic appear in no scenario here as a claim of their own.

What is left is what those tests cannot reach, because they expand the templates with their own
helper and never draw a sprite:

| Feature | What only a running game shows | TESTING.md |
| --- | --- | --- |
| `01-loads-on-the-framework` | The parents resolve against the framework on a real load: a def that exists proves its parent did. Load order. No error raised by a loaded save. | 1, 2, 3 |
| `02-generated-stones` | The generated defs exist after the game's own patch pipeline, vacstone included with Odyssey, and one of each kind can be placed without an error (a broken GraphicsDef binding shows there). | 4 |
| `03-contents-review` | Every container shows what is in it; the chunk stack swaps its sprite at one, two and six chunks and takes its colour from its stone. **16 captures, `@review`.** | 5, 6 |
| `04-save-reload` | State derived rather than stored rebuilds after a save and a reload. `the save round trips` fails on a scribe error. **2 captures, `@review`.** | 11 |
| `05-french-names` | French names on generated buildings in a French game. `@wip`: skipped by a default run. | 7 |

Deliberately **not** here:

- **The architect menu and its dropdown groups.** No vanilla Pickle step reads them, and a step
  assembly would be maintained for one question. `02` counts the generated defs instead; the dropdown
  itself stays a manual check.
- **A stone from a third-party mod (TESTING.md 4b)** and the Harmony fallback that translates its
  buildings. It needs a stone mod staged beside the suite, and no such mod has been chosen. Manual.
- **Russian (TESTING.md 8).** The point of that test is a case-sensitive filesystem; the WSL game
  has one, so `-Language Russian` with a copy of `05` would serve, but the six vacstone entries were
  only added on 2026-09-21 and no such scenario was written.
- **The mod list refusing the original mod (TESTING.md 9)** and **the icon in the mod list (10)**: the
  mod list is not something a scenario drives.
- **Settings, MainButtons shortcut**: the mod has none (`settings_audit: not_applicable`).

## No step assembly

Every step is a Pickle vanilla step. If a scenario ever needs one, `ArchitectStudio/Tests/Pickle/Source/`
is the model, and the step text must carry this mod's name: Pickle loads every active suite's steps
into one namespace, and two suites declaring the same text produce "Ambiguous step" on healthy
scenarios.

## What the captures are for, and what they are not

`03` and `04` are tagged `@review`. That is this project's convention from AUDIT.md, not a Pickle tag:
it changes no behaviour. The images come from the explicit screenshot step. They assert nothing about
the picture, and green means the route ran, never that the basket fills up. A person has to open them
at `done -> tested`, and a run's captures are overwritten by the next run: copy what you need first.

They are review captures, not the Workshop page's. Those need a scene of their own, without the test
colony around, and belong to `tested -> prepublished`.

## Running it

Never by launching RimWorld on Windows, and never a second instance. From the monorepo root, in
PowerShell 5.1 (`powershell.exe`; PowerShell 7 is not installed):

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts/Pickle-Status.ps1
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew
```

The status line first: a session that cannot take the machine lock launches nothing. The run stages the
mod, the companion, Pickle, Harmony and the framework (`wsl-deps.map`) into the WSL game under Xvfb.

The staging script looks for `Tests/Pickle`; this repository tracks the folder as `tests/Pickle`. Windows
and the WSL mount are case-insensitive, so it resolves; a case-sensitive checkout would not.

Then the French pass, which is also the only one that plays `05`:

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French -IncludeWip
```

An include-wip pass has once selected almost nothing while reporting success. Read `exitReason` first,
then compare the scenarios played with the 20 written (5 features; the first run played 19) before trusting the result.

## What the first run settled

Read off the captures and the report of 2026-09-21, not assumed:

1. **A thing spawned on a storage building's cell is held by it.** The mouse-over line of the basket capture
   reads "Cloth / Wooden basket", and the basket draws the cloth inside it. Hauling is not needed.
2. **Several chunks spawned at one cell stay there.** The chunk stack's mouse-over lists three granite chunks
   in one cell, and the stack draws its stages.
3. **The cells (140..150, 155) are open ground** and the containers stand alone in the frame.
4. **`is built at` skips research**: the buildings were placed with neither project finished.
5. **Odyssey is active in the WSL game**: the vacstone scenarios passed rather than skipped; the only
   skipped ones are the two `@wip`.
6. **`no errors were logged` holds** on a loaded test colony.

Still open: the rewritten scenarios of `01` have not been played, and `05` has never been played (it needs
the French pass). Every vanilla defName used as contents or as a stone chunk exists in the installed Core or
Odyssey data, and the French labels in `05` are the ones in `Languages/French/DefInjected`.

## What the captures showed, and their limits

Sixteen captures were taken and fifteen looked at. Opened at full size: the wooden basket with one item, the granite chunk stack
with six. Cropped on their centre and opened: the wooden basket (empty, one item, full), the granite stack
(one, two, six chunks), the marble stack, the large pot (empty, berries), the fabric basket full, both
plinths, the pile/shelf capture, and the two after a reload. Not looked at: the fabric basket empty; and partly
the textile bundle in the pile/shelf capture, which falls outside the crop.

- The basket draws empty, then with the cloth inside it, then with two items arranged in it.
- The chunk stack swaps its sprite at one, two and six chunks; the marble stack is lighter than the granite one.
- The pot shows purple berries, both plinths show the gold, and both containers redraw after a reload.
- **Framing is wide.** The whole colony is in frame and the container is about 45 px a cell in the middle of
  it. Judgeable, not good enough for the Workshop page, which needs its own scene. The game's interface is
  drawn in every capture. Not a defect of the mod.
