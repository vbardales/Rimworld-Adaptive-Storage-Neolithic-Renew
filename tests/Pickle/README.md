# In-game scenarios, run by Pickle

The scenarios of [TESTING.md](../../TESTING.md) that a running game is needed for, and only those.
`Mod/` is a companion mod, **Adaptive Storage Neolithic Renew - Pickle tests**, never published.

**Status: run three times on 2026-09-21 in the WSL under Xvfb.** First run, 10:34: 19 played of 19 written, 16 passed, 1 failed, 2 skipped
(the two `@wip`) - a defect of the suite, an ambiguous defName that `is defined by mod` refuses, fixed by naming the def type
(20 scenarios now). Second run, English, 11:39: **20 of 20 played, 18 passed, 0 failed, 2 skipped, `exitReason: passed`.**
Third run, French with `-IncludeWip`, 11:46: **20 of 20 played, 20 passed, 0 skipped, `exitReason: passed`**, `05` included.
Results: [`../pickle-run-2026-09-21/`](../pickle-run-2026-09-21/), [`-second/`](../pickle-run-2026-09-21-second/) and
[`-french/`](../pickle-run-2026-09-21-french/).

**Widened the same day, after those passes: 30 scenarios, 19 `@review` captures.** The three passes showed the
generated buildings named right and left the rest of the mod's text unseen, so scenarios were added: the research
projects' tab, cost and tech level; the window that holds them, with a capture in each language; blueprints placed for
the generated and hand-written buildings; and in French their descriptions, their research text, the name a blueprint
carries, and a container naming itself through the inspect pane. A default pass plays 22 scenarios and skips the 8
`@wip` ones. The French feature is aimed by filter: `-Language French -Filter '05-french-names.feature' -IncludeWip`,
because the wrapper refuses `-IncludeWip` without one (Pickle #26).

Four passes of the widened suite, all on 2026-09-21 (each pass stages the working tree):

| Pass | Played | Result | Folder |
| --- | --- | --- | --- |
| English, 12:42, first version | 32 of 32 | 20 passed, **3 failed**, 9 skipped, `failed` | `../pickle-run-2026-09-21-widened-en/` |
| English, 14:32, blueprints rewritten | 31 of 31 | 22 passed, 0 failed, 9 skipped, `passed` | `../pickle-run-2026-09-21-widened-en2/` |
| French, 14:42, without `@wip` | 31 of 31 | 22 passed, 0 failed, 9 skipped, `passed` | `../pickle-run-2026-09-21-widened-fr/` |
| French, 14:46, `05` only, `-IncludeWip` | 9 of 9 | 6 passed, **3 failed**, 0 skipped, `failed` | `../pickle-run-2026-09-21-widened-fr-wip/` |

Every failure so far was the suite's own, never the mod's: the first three looked up vanilla's implied blueprint defs
by name, which Pickle's lookup does not see; the last three, below, are two more ambiguous names and one blueprint label
I guessed. The `05` scenarios were rewritten again (8 scenarios now, one of them dropped) and have not been replayed.

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
| `01-loads-on-the-framework` | The parents resolve against the framework on a real load: a def that exists proves its parent did. Load order. The projects sit in the framework's tab, at the cost the file asks for, and the research window opens with that tab in it. No error raised by a loaded save. **1 capture, `@review`.** | 1, 2, 3 |
| `02-generated-stones` | The generated defs exist after the game's own patch pipeline, vacstone included with Odyssey; a blueprint can be placed for a generated and for a hand-written building, which is vanilla accepting the defs as buildable; and one of each kind can be placed without an error (a broken GraphicsDef binding shows there). | 4 |
| `03-contents-review` | Every container shows what is in it; the chunk stack swaps its sprite at one, two and six chunks and takes its colour from its stone. **16 captures, `@review`.** | 5, 6 |
| `04-save-reload` | State derived rather than stored rebuilds after a save and a reload. `the save round trips` fails on a scribe error. **2 captures, `@review`.** | 11 |
| `05-french-names` | In a French game: the generated and hand-written names, the descriptions, the research text, and the name a blueprint carries — which is where the mod's Harmony hook proves it ran between the language injection and the implied defs. A container names itself through the inspect pane. **2 captures, `@review`.** `@wip`: skipped by a default run. | 7 |

A def whose name the framework also gives a `GraphicsDef` — the basket, the hay pile, the meal shelf, the
plinth, both bundles — cannot be read by `def ... field ...`, which refuses an ambiguous name and cost the
first run its only failure. Seven of the nine hand-written buildings are in that case, so their text is read
through the map instead, by the inspect pane, which looks at the thing rather than at the def.

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

Then the French passes, two of them, because the wrapper refuses `-IncludeWip` without a filter (Pickle #26): one that plays the 22 non-`@wip` scenarios in French, and one aimed at `05`, the only `@wip` feature:

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French -Filter "05-french-names.feature" -IncludeWip
```

An include-wip pass has once selected almost nothing while reporting success. Read `exitReason` first,
then compare the scenarios played with the number written (22 default, 9 in `05`; 31 in all) before trusting the result.

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

Every vanilla defName used as contents or as a stone chunk exists in the installed Core or Odyssey data, and the
French labels and descriptions in `05` are the ones in `Languages/French/DefInjected`.

## What the widened scenarios assumed, and what the passes said

Written on 2026-09-21 after the three passes, each assumption read off the game's files rather than seen working.
The passes above settled the first, second, third, fifth and sixth;
the fourth was wrong, and two more turned up.

1. **`field "tab.defName"` walks a dotted path onto a Def reference.** Confirmed: the scenario passed.
2. **`baseCost` stringifies as `400`.** Confirmed.
3. **`techLevel` stringifies as `Neolithic`.** Confirmed.
4. **Pickle's def lookup finds vanilla's `<defName>_Blueprint` and `_Frame` defs. Wrong.** The three scenarios that
   looked them up by name failed with "no ThingDef named ...", and the closest matches listed were the buildings,
   not blueprints. Pickle's lookup does not see these implied defs, whether or not the game made them. The
   scenarios now place a blueprint on the map (`I designate a ...`, `a blueprint for ... is at ...`), which is
   also what a player does; the frames, which appear only when a builder starts work, are no longer covered.
5. **`I select` matches a thing by the label it displays, and finds a blueprint.** Confirmed by the French pass of `05`: the
   blueprint of the generated granite pot was selected as `Grand pot en granite (plan)`, as was the vacstone one, and the
   stacked chunks as `Amas de granite`. The match is on the capitalised label the game displays.
6. **`I open the "Research" tab` and window `MainTabWindow_Research`.** Confirmed: the window opened and closed.
7. **A defName is unambiguous for `def ... field ...` unless another def of any type shares it.** Wrong twice: the
   framework's GraphicsDef shares seven hand-written names (found on the first run), and `ASNeolithicLargePot` is also a
   `DesignatorDropdownGroupDef` (found in the French pass of `05`, which failed two scenarios on it). The large pot is now
   read through the map, as the others are.
8. **A hand-written building's blueprint label is its label plus ` (plan)`. Wrong, and not replayed.** Every hand-written
   building takes wood as stuff, so it is displayed with the stuff in its name (`Grand pot en bois`); the scenario that
   selected `grand pot (plan)` found nothing. It was dropped: the same names are already read off the containers'
   mouse-over lines in the captures, in French.

The research capture shows the window on its Main tab, with the framework's tab, `Storage`, beside Main and
Anomaly. It does not show the two projects, which sit inside that tab; opening it takes a click on a button
named by its label, which changes with the language, and is left to a person.

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

**What the two French captures of `05` showed** (looked at, full frame). The blueprint of the generated granite pot reads
*Grand pot en granite (plan)* in the inspect pane: the label the mod's Harmony hook wrote, copied by vanilla onto the blueprint,
so the hook ran between the language injection and the implied defs, which is the thing the mod's assembly exists to do. The
same frame shows the storage tab named *Stockage*, the filter rows *Aliments crus*, *Croquettes* and *Pemmican*, and *Priorité:
Importante*, all French. The stacked chunks read *Amas de granite* with *Magasins: Gravats en granite. (1 / 6 piles)* and a
filter entry *Gravats en granite*. No accented fallback text is visible in either. The English `Fallen monolith` at the edge of
every capture is the test colony's, not this mod's.
