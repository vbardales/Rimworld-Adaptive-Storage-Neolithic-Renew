# In-game scenarios, run by Pickle

The scenarios of [TESTING.md](../../TESTING.md) that a running game is needed for, and only those.
`Mod/` is a companion mod, **Adaptive Storage Neolithic Renew - Pickle tests**, never published.

**Status: run three times on 2026-09-21 in the WSL under Xvfb.** First run, 10:34: 19 played of 19 written, 16 passed, 1 failed, 2 skipped
(the two `@wip`) - a defect of the suite, an ambiguous defName that `is defined by mod` refuses, fixed by naming the def type
(20 scenarios now). Second run, English, 11:39: **20 of 20 played, 18 passed, 0 failed, 2 skipped, `exitReason: passed`.**
Third run, French with `-IncludeWip`, 11:46: **20 of 20 played, 20 passed, 0 skipped, `exitReason: passed`**, `05` included.
Results: [`../pickle-run-2026-09-21/`](../pickle-run-2026-09-21/), [`-second/`](../pickle-run-2026-09-21-second/) and
[`-french/`](../pickle-run-2026-09-21-french/).

**Widened the same day, after those passes: 48 scenarios in ten features, 24 `@review` captures** (42 in seven and 23 before the three `@wip @pickletools` features `08` to `10`, six scenarios and one capture, played only in the pass `avec-pickletools`) (41 and 22 until the research-tab scenario of `05` was added; that one and the rewritten one of `01` passed at 20:08 and 20:10, see "The research tab, opened by defName" below). The three passes showed the
generated buildings named right and left the rest of the mod's text unseen, so scenarios were added: the research
projects' tab, cost and tech level; the window that holds them, with a capture in each language; blueprints placed for
the generated and hand-written buildings; and in French their descriptions, their research text, the name a blueprint
carries, and a container naming itself through the inspect pane. Then, once the manual scenarios 4b and 8 were decided (9 and 10 are out
of scope), a third-party stone, Russian, and the research tab: opened by a click first (it failed, see "One step assembly"), then by defName with this suite's own steps. A default pass plays 22 scenarios; the "stones" pass plays 26;
the `@wip` features (`05`, `07`) are skipped by both and each has a pass of its own, below. The
wrapper refuses `-IncludeWip` without a filter (Pickle #26), so a `@wip` feature is aimed by file name:


Fifteen passes of the widened suite, all on 2026-09-21 (the first five stage the working tree, the next three commit `2be9d4f`, the ninth a tree I did not record, the next two commit `df12a10`, the last four commit `df12a10` plus the uncommitted features 08 to 10, their pass map and Keyed test data):

| Pass | Played | Result | Folder |
| --- | --- | --- | --- |
| English, 12:42, first version | 32 of 32 | 20 passed, **3 failed**, 9 skipped, `failed` | `../pickle-run-2026-09-21-widened-en/` |
| English, 14:32, blueprints rewritten | 31 of 31 | 22 passed, 0 failed, 9 skipped, `passed` | `../pickle-run-2026-09-21-widened-en2/` |
| French, 14:42, without `@wip` | 31 of 31 | 22 passed, 0 failed, 9 skipped, `passed` | `../pickle-run-2026-09-21-widened-fr/` |
| French, 14:46, `05` only, `-IncludeWip` | 9 of 9 | 6 passed, **3 failed**, 0 skipped, `failed` | `../pickle-run-2026-09-21-widened-fr-wip/` |
| French, 15:14, `05` only, after the rewrite | 8 of 8 | **8 passed**, 0 failed, 0 skipped, `passed` | `../pickle-run-2026-09-21-widened-fr-wip2/` |
| English, 17:40, "stones" pass | 34 reported of 43 | 22 passed, 1 failed (the removed tab click), 11 skipped, **`in-progress`: did not run to the end, `06` not played** | `../pickle-run-2026-09-21-stones-en/` |
| French, 17:42, `05`, "stones" pass | 11 of 11 | 10 passed, 1 failed (the removed tab click), `failed`; **the third-party stone's French names and blueprint passed** | `../pickle-run-2026-09-21-stones-fr/` |
| Russian, 17:44, `07` | 5 of 5 | **5 passed**, 0 failed, 0 skipped, `passed`: the case-sensitive filesystem test | `../pickle-run-2026-09-21-russian/` |
| English, 19:03, "stones" pass, whole | 41 of 41 | **26 passed**, 0 failed, 15 skipped, `passed`: `06`, the third-party stone in English, passed | `../pickle-run-2026-09-21-stones-en2/` |
| English, 20:06, `01` only, commit `df12a10` | 7 of 7 | **7 passed**, 0 failed, 0 skipped, `passed`: the research tab opened by defName, both projects listed at 400 | `../pickle-run-2026-09-21-research-tab-en/` |
| French, 20:08, `05` only, `-IncludeWip`, commit `df12a10` | 11 of 11 | **9 passed**, 0 failed, 2 skipped (the third-party stone, no stones pass), `passed`: the tab reads `Stockage` | `../pickle-run-2026-09-21-research-tab-fr/` |
| English, 22:52, pass `avec-pickletools`, `08` | 3 of 3 | **3 passed**, `passed`: a tab by def name in any case, Main, a tab by a translation key | `../pickle-run-2026-09-21-pickletools-en-08/` |
| English, 22:53, same pass, `09` | 1 of 1 | **1 passed**, `passed`: `Storage` and `Neolithic storage` by their labels | `../pickle-run-2026-09-21-pickletools-en-09/` |
| French, 22:56, same pass, `08` | 3 of 3 | **3 passed**, `passed`: the key now reads `Stockage` | `../pickle-run-2026-09-21-pickletools-fr-08/` |
| French, 22:59, same pass, `10` | 2 of 2 | **2 passed**, `passed`: `Stockage`, `Stockage néolithique`, and `Principal` reaching Main | `../pickle-run-2026-09-21-pickletools-fr-10/` |

Every failure was the suite's own, never the mod's: the first three looked up vanilla's implied blueprint defs
by name, which Pickle's lookup does not see; the last three, below, are two more ambiguous names and one blueprint label
I guessed. The `05` scenarios were rewritten (8 scenarios now, one of them dropped) and replayed: 8 of 8 passed.

## Scope: what stays in Gherkin, and what does not

Everything provable outside the game is proved outside it, by `tests/Test-Mod.ps1` (1,316 assertions:
XML, template expansion against five, six and seven stone fixtures, translation coverage, the icon and preview files, the original mod's incompatibility) and
`tests/Test-InstalledTranslations.ps1` (28 assertions against the shipped assembly and the installed
generator), in seconds. So the defNames' uniqueness, the generated counts, the stone templates, the
translation keys and the fallback logic appear in no scenario here as a claim of their own.

What is left is what those tests cannot reach, because they expand the templates with their own
helper and never draw a sprite:

| Feature | What only a running game shows | TESTING.md |
| --- | --- | --- |
| `01-loads-on-the-framework` | The parents resolve against the framework on a real load: a def that exists proves its parent did. Load order. The projects sit in the framework's tab, at the cost the file asks for, and the research window opens on that tab, opened by defName, and lists both (own steps, **passed in English**). No error raised by a loaded save. **1 capture, `@review`.** | 1, 2, 3 |
| `02-generated-stones` | The generated defs exist after the game's own patch pipeline, vacstone included with Odyssey; a blueprint can be placed for a generated and for a hand-written building, which is vanilla accepting the defs as buildable; and one of each kind can be placed without an error (a broken GraphicsDef binding shows there). | 4 |
| `03-contents-review` | Every container shows what is in it; the chunk stack swaps its sprite at one, two and six chunks and takes its colour from its stone. **16 captures, `@review`.** | 5, 6 |
| `04-save-reload` | State derived rather than stored rebuilds after a save and a reload. `the save round trips` fails on a scribe error. **2 captures, `@review`.** | 11 |
| `05-french-names` | In a French game: the generated and hand-written names, the descriptions, the research text, and the name a blueprint carries — which is where the mod's Harmony hook proves it ran between the language injection and the implied defs. A container names itself through the inspect pane. The framework's research tab reads `Stockage` and lists both projects (own steps, **passed in French**). **3 captures, `@review`.** `@wip`: skipped by a default run. | 7 |
| `06-third-party-stone` | A stone from a mod this one has never met (`[K]Extra Stone`, in the "stones" pass): the generators built its pot, plinth and chunk stack, in the stone's own English label, and they can be placed without an error. **1 capture, `@review`.** `@requires`: skipped without that mod. | 4b |
| `07-russian-names` | In a Russian game on a case-sensitive filesystem, which the WSL is: the labels, the descriptions and the research text are Russian, so the folder is found. **1 capture, `@review`.** `@wip`. | 8 |
| `11-workshop-captures` | **Not tests**: the six pictures of the Workshop page (PUBLICATION.md section 1), each a scene built for the purpose, at noon in clear weather, with the game's screenshot mode on and Pickle's panel out of it, by this suite's own steps (`Source/PublicationSteps.cs`, a copy of the mechanism Work Studio's suite carries). `@wip @workshop @review`, aimed by file name; the last needs the stones pass. **6 captures, not played yet.** | none (publication) |

A def whose name the framework also gives a `GraphicsDef` — the basket, the hay pile, the meal shelf, the
plinth, both bundles — cannot be read by `def ... field ...`, which refuses an ambiguous name and cost the
first run its only failure. Seven of the nine hand-written buildings are in that case, so their text is read
through the map instead, by the inspect pane, which looks at the thing rather than at the def.


Left out, or moved:

- **The architect menu's internal list/dropdown widget.** No installed Pickle step reads it. It is not a manual
  action: `02-generated-stones` places the generated and hand-written entries through the architect route and attaches
  review captures of the resulting blueprints, including vacstone. `Test-Mod.ps1` separately verifies research
  prerequisites and dropdown-group contracts. The only human verdict is on the attached image.
- **A stone from a third-party mod (TESTING.md 4b)**: written the same day, in `06` and the French half of `05`, run in the "stones" pass.
- **Russian on a case-sensitive filesystem (TESTING.md 8)**: written the same day, as `07`, run in a Russian game: the WSL is ext4.
- **The original mod refused (TESTING.md 9)**: out of scope. It is an `About.xml` declaration checked by `Test-Mod.ps1`, and
  backward compatibility with the original is not pursued (decided 2026-09-21). **The icon in the mod list (10)**: out of scope,
  the same reasoning: the game reads `About/ModIcon.png` from a fixed path and `Test-Mod.ps1` checks the file.
- **Settings, MainButtons shortcut**: the mod has none (`settings_audit: not_applicable`).

## One local step, plus the shared research tool

Every step is a Pickle vanilla step except the local no-overlap assertion in `Source/ResearchTabSteps.cs`, built by `Source/Build.ps1` into
`Mod/Pickle/Assemblies/AdaptiveStorageNeolithicRenew.PickleSteps.dll` (the test companion, never `Mod/`, which Steam receives).
`ArchitectStudio/Tests/Pickle/Source/` was the model; the build differs, it uses the Windows .NET Framework compiler as
`Source/Build.ps1` does for the mod, so the source is C# 5.

The research-window access and assertions now use `PickleTools/ResearchSteps`, staged in every applicable pass map as
`nelim.pickletools.research`; the consuming scenarios carry its `@requires` tag. The research window draws its tabs as `TabRecord`s through `TabDrawer.DrawTabsOverflow`, read off the
game's `MainTabWindow_Research`; that records no button tag, so `I click button "Storage"` could never find one (the failure of
2026-09-21, "no tags recorded this frame"). The guess in the first version of this file was right. The steps do not click:

- `I open the Adaptive Storage Neolithic Renew research tab {string}` opens the window (`MainTabsRoot.SetCurrentTab`) and runs
  the `clickedAction` of the tab record the window built for that `ResearchTabDef`, which is all a click on the tab runs. By defName,
  so no language is involved.
- `... research window is on the tab {string}`: `CurTab` is that def, the window drew a selected record for it, and
  `ResearchManager.TabInfoVisible` is true (otherwise the window draws "not discovered" in place of the projects).
- `... research window lists the project {string} costing {int}`: the project is among `VisibleResearchProjects` whose `tab` is `CurTab`,
  the very list `ListProjects` draws from, is not hidden, and has that cost. Game state, not pixels.
- `... research window draws no two of its projects on the same spot`: no two listed projects share a `researchViewX`/`Y`.
- `... research window labels the tab {string} as {string}`: the label of the tab record, which the window built from
  `LabelCap` when it opened. Used in `05`, in French.

The step text carries the mod's name: Pickle loads every active suite's steps into one namespace, and two suites declaring the same
text produce "Ambiguous step" on healthy scenarios.

**Two more versions exist, kept on purpose until [RimWorks/Rimworld-Pickle#33](https://github.com/RimWorks/Rimworld-Pickle/pull/33) is
merged.** The PR proposes three steps by def name only (`I open the research tab {string}`, ...). `PickleTools/ResearchSteps` (a separate
repository at the root of the workspace, the shared steps of every suite) carries six texts under the prefix `Nelim's Pickle Tools: ` (the convention of its other shared steps), which also choose a
tab or a project **by the label a player reads** and a tab **by a translation key**. This suite plays it in its own pass, `avec-pickletools`
(`wsl-deps.avec-pickletools.map`), with the features `08` (def name and key, any language), `09` (English labels) and `10` (French labels),
all `@wip @pickletools`, and Keyed test strings in the companion (`Mod/Languages/*/Keyed/PickleTests.xml`) so the key resolves to a tab.
Played on 2026-09-21: 3 + 1 in English, 3 + 2 in French, all passed (rows above), **with the texts as they were before the prefix
`Nelim's Pickle Tools: ` was put in front of them** (`I open the PickleTools research tab ...`). The prefix changed the same night, the
features and the assembly with it, and the same two passes are queued again on the new texts: until they are read, the rows above prove
the logic and not these exact lines. The key reaches only a tab whose label comes from a Keyed
string; Main, Anomaly and the framework's tab are Def labels, for which the def name is the language-independent way. The five steps
above stay as they are: three versions to keep in step until the merge, after which the features move to the official texts.
Playing a pass: `-DepMap wsl-deps.avec-pickletools.map -Filter 08-pickletools-research.feature -Then <09 or 10>... -IncludeWip`, with
`-Language French` and `10` for French. What none of it can say is whether the tab looks right: the two `@review`
captures are for that.

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

Then the other passes. Each is a run of its own, and a `@wip` feature is aimed by file name because the wrapper refuses
`-IncludeWip` alone (Pickle #26):

```powershell
# English, without optional mods: 22 scenarios; `06` is skipped for want of its stone mod.
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew
# English beside [K]Extra Stone (the "stones" pass): 26 scenarios, `06` included.
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -DepMap wsl-deps.stones.map
# French, `05` only, with the stone mod so that its two third-party scenarios play (10 scenarios; 8 without it).
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French -DepMap wsl-deps.stones.map -Filter "05-french-names.feature" -IncludeWip
# Russian, `07` only (5 scenarios): the case-sensitive filesystem test.
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language Russian -Filter "07-russian-names.feature" -IncludeWip
```

An include-wip pass has once selected almost nothing while reporting success. Read `exitReason` first,
then compare the scenarios played with the number written before trusting the result: 22 by default, 26 in the "stones" pass, 10 or 8 in `05`, 5 in `07`.

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
8. **A hand-written building's blueprint label is its label plus ` (plan)`. Wrong.** Every hand-written
   building takes wood as stuff, so it is displayed with the stuff in its name (`Grand pot en bois`); the scenario that
   selected `grand pot (plan)` found nothing. It was dropped: the same names are already read off the containers'
   mouse-over lines in the captures, in French.

**The research tab, opened by defName (written 2026-09-21 after the passes above, played the same evening: English 7 of 7 and French 9 passed
of 11, 2 skipped, `exitReason: passed` both).** The old capture showed the window on its Main tab, with the framework's tab beside Main and
Anomaly, and not the two projects. The click that was meant to open the tab failed (see "One step assembly" above). Its replacement is the
scenario of `01` (any language) and the one of `05` (French). Each assumption below was read off the game's decompiled code, and the two runs
([English](../pickle-run-2026-09-21-research-tab-en/), [French](../pickle-run-2026-09-21-research-tab-fr/)) settled them:

1. **`SetCurrentTab(MainButtonDefOf.Research, false)` adds the window and `PostOpen` fills its `tabs` list at once.** Confirmed: the step found
   the records (`Main`, `Anomaly`, `ASFAdaptiveStorage`), attached to the report.
2. **The record's `clickedAction` sets `CurTab`.** Confirmed: `selected: ASFAdaptiveStorage`, and the capture shows that tab drawn selected.
3. **`ASFAdaptiveStorage` is visible.** Confirmed: the tab draws its projects, not the not-discovered text. `visibleByDefault` defaults to `true`
   and the mod's tab def (`Mod/Defs/ResearchProjects/ResearchTabDef.xml`) does not set it.
4. **Both projects are listed unless `hideWhen` hides them.** Confirmed: both are in the window's list at the default difficulty, at (0, 1)
   and (0, 2), and both boxes are drawn. No project of this mod sets `hideWhen`.
5. **`Cost` is 400.** Confirmed: the listing reads `cost 400` for both, and the boxes read 400.

Both `@review` captures were opened and looked at (English: `Neolithic storage` and `Neolithic item display`, one above the other, each 400;
French: `Stockage néolithique` and `Présentoir néolithique`, tab `Stockage`). What the steps cannot say is that the tab looks right: the two
boxes sit at the left of a large empty tab, and whether that reads well is a person's to judge.

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
