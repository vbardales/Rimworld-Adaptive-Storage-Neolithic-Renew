# Adaptive Storage Neolithic Renew — automated checks and in-game scenarios

## Automated checks

From the repository root, with PowerShell 7 installed:

```powershell
pwsh -NoProfile -File tests/Test-Mod.ps1
```

The suite needs neither RimWorld nor a Workshop installation. It exits with a nonzero code
on failure. GitHub Actions runs it on pushes and pull requests. It checks XML syntax,
duplicate defNames within each Def type, the GitHub link in the published description,
dependency metadata, texture paths with exact casing, directional textures, language-folder
casing and duplicate translation keys.

It expands the actual three stone templates against synthetic Core (five stones), Odyssey
(six), and third-party (seven) fixtures. Expected totals are 15, 18 and 21 buildings. Checks
cover generated identities, parents, labels, colours, material costs, chunk filters,
collisions, graphics patch XPath matches and final graphics bindings. An unrelated resource
must not be selected.

These are static contract tests using .NET XPath and a small template-expansion helper,
not execution of GeneratorOperation.dll. Framework loading, inherited game behaviour,
hauling and rendering still require the manual scenarios below, which remain unexecuted.
The external `../scripts/Check-XmlFields.ps1` and `Check-DefRefs.ps1` additionally validate
against installed game/framework data; they are not included in this standalone suite.

Latest local run: 747 assertions passed on 2026-09-12.

## Manual scenarios

Nothing in this mod has ever been seen running. The XML checkers are clean, every element maps to
a field that still exists in 1.6, every C# type it names is still present in the framework's 1.6
assemblies, and none of that draws a single sprite. This file is the list of what has to be
watched, and what counts as a pass.

It is not shipped: it lives beside `Mod/`, never inside it, so Steam never receives it.

The mod is almost entirely declarative — 46 of its 71 defs are `AdaptiveStorage.GraphicsDef`, and
it ships no C# at all. That shifts where the risk is. Nothing here can throw at tick time; what it
can do is fail to draw, fail to generate, or fail to resolve a name, and two of those three fail
in complete silence.

## Before starting

- RimWorld 1.6. **Adaptive Storage Framework active and loading BEFORE this mod** — it was
  installed but inactive in the modlist as of 2026-09-05, which is the single likeliest reason for
  a failed run. Odyssey active, for scenario 4.
- Development mode on, so that silent failures become red text.
- The log to read afterwards, and to attach to any report:
  `C:\Users\nelim\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`
- A tribal start is the natural test bed: both research projects carry the `TribalStart` tag and
  cost 400 each.
- Debug actions that save time: **Research → finish all**, **Spawn thing** for the stone chunks,
  and **God mode** to place buildings without materials or work.

## 1. The framework is there, and this mod found it

Every building in this mod inherits from `AdaptiveStorageBase`, which belongs to the framework,
and both research projects sit in the framework's `ASFAdaptiveStorage` research tab. Without the
framework the parents do not resolve and there is nothing left to test.

1. Open the mod list and confirm the load order: framework above, this mod below.
2. Start or load a game.

**Pass:** no red line naming `ASNeolithic`, and in particular no `Could not find parent node` and
no `Could not resolve cross-reference`.
**Fail:** a wall of cross-reference errors. Then the load order is wrong, or the framework is
inactive, and everything below is moot.

## 2. The two research projects

1. Open the research tab.

**Pass:** a tab named for Adaptive Storage holds **neolithic storage** and **neolithic item
display**, one above the other, each costing 400 and marked neolithic. On a tribal start both are
reachable from the beginning.
**Fail:** the projects are missing, or sit in the wrong tab, or appear in the main tree — the tab
def belongs to the framework and a missing tab is the framework's absence showing again.

## 3. The nine hand-written buildings

Finish **neolithic storage**, then open the architect's furniture menu.

**Pass:** eight entries appear — basket (wood), basket (fabric), hay pile, wood pile, large pot,
meal shelf, textile bundle (fabric), textile bundle (leather). Finish **neolithic item display**
and the woody plinth joins them.

**Watch for:** each should carry an icon rather than the pink placeholder. All 91 `texPath` and
`uiIconPath` values resolve to a file on disk, so a pink square means a case mismatch, not a
missing file, and it will only show on a case-sensitive filesystem.

## 4. The generated stone variants, vacstone included

This is the scenario the paper checks cannot reach. Three patches run in the patch phase and build
one large pot, one plinth and one chunk stack **per stone chunk in the game**, interpolating the
chunk's own defName, label and colour. They generate the defs and then patch the framework's
`GraphicsDef` to point at them.

1. Open the architect menu and find the large pot, the plinth and the stacked chunks.
2. Click each one's dropdown arrow.

**Pass:** each dropdown holds **six** stone variants with Odyssey active — granite, limestone,
slate, marble, sandstone and **vacstone** — each labelled in the stone's own name and tinted the
stone's own colour. Without Odyssey it is five, and that is correct rather than a bug.

**Why it matters:** vacstone did not exist when the mod was written. It is picked up only because
the xpath targets every child of `ChunkRockBase` rather than a list of names. If exactly five
appear with Odyssey active, the generation is matching on something narrower than it should.

**Also confirm:** the stone variants collapse into ONE architect entry with a dropdown, not six
loose buttons. That is the `DesignatorDropdownGroupDef` doing its job.

### 4b. A stone this mod has never met

This is the only test in the file that can catch a regression rather than an installation mistake,
and it is the case players will actually hit. Vacstone proves the generation picks up what Odyssey
adds, but Odyssey is official content that keeps the game's own conventions. A stone from a third
party is the real edge.

1. Activate any mod that adds a stone type — Alpha Biomes and Vanilla Factions Expanded each add
   several, and anything whose chunk derives from `ChunkRockBase` will do.
2. Open the same three dropdowns.

**Pass:** that stone's pot, plinth and chunk stack are there too, carrying the stone's own label
and colour, exactly as the official five do.

**Fail, and read it carefully.** A stone that is absent means its chunk does not derive from
`ChunkRockBase`, which is the other mod's choice and not a defect here. A stone that is present
but untinted, or labelled with its raw defName, means the interpolation found the node and not the
field — that one IS this mod's bug, and it would hit every third-party stone alike.

## 5. The one thing this mod exists for

Every container shows what is inside it. If this fails, nothing else being right matters.

1. Build a wooden basket. Leave it empty and look at it.
2. Haul in one item. Look again.
3. Fill it to its limit — a basket takes 2 items per cell.

**Pass:** the empty basket draws as a basket. The first item appears sitting IN it, drawn above
the basket's base, offset upward. The second joins it, arranged in a circle rather than stacked in
the same pixel.
**Fail:** the basket never changes, or the items draw under it, or they pile up on one point. The
first means the framework never bound the `GraphicsDef` to the def; the last two are the
`itemGraphics` block not being read.

Repeat with the fabric basket, which is a separate `GraphicsDef` on a separate texture.

## 6. The stacked chunks change with their load

The chunk stack does the opposite of the basket: it hides its contents and swaps its own sprite
instead, at thresholds written into the `GraphicsDef`.

1. Build a granite chunk stack.
2. Haul in one chunk. Then a second. Then up to six.

**Pass:** three distinct sprites — one chunk shows stage 1, two chunks switch to stage 2, six
chunks switch to stage 3. The stack takes its colour from what is in it, so a granite stack and a
marble stack must not be the same grey.
**Fail:** one sprite throughout, or individual chunk items drawn on top. This def sets
`showContainedItems` to false on purpose.

The stack holds 3 per cell across 2 cells, so six is its full load.

## 7. French

The mod ships 66 French keys, six of them added for vacstone.

1. Set the game language to French. Restart, as RimWorld requires.
2. Look at the three vacstone buildings from scenario 4.

**Pass:** they read **grand pot en vaccolithe**, **socle en vaccolithe** and **amas de
vaccolithe**. *Vaccolithe* is the game's own official French for vacstone, taken from Odyssey's
language files, not invented here.
**Fail:** English labels among French ones. The keys name defs that no file on disk declares —
they are the generated ones — so if the generation in scenario 4 half-worked, this is where it
shows.

Russian still covers five stones rather than six, deliberately: nobody here writes Russian and an
invented translation is worse than an English label.

## 8. Russian, and this one needs the Steam Deck

**This test cannot run on Windows.** The Russian translation lived in a folder spelled
`Definjected`, with a lowercase i. RimWorld matches the literal string `DefInjected`, so on NTFS
the misspelling worked by accident and on a case-sensitive filesystem the entire Russian
translation was dropped with **nothing written to the log**. The folder has been renamed; only a
case-sensitive filesystem proves it.

1. On the Steam Deck, set the language to Russian.
2. Look at any of the mod's buildings.

**Pass:** Russian labels. **Fail:** English labels, and silence in the log — which is exactly what
the bug looked like before.

## 9. The original mod is refused

`adaptive.storage.neolithic` is declared in `<incompatibleWith>`. Both mods use the same
`defName`s, so running them together would duplicate all 71 defs.

**Pass:** with both active, RimWorld says so in the mod list before the game starts.

Separately, and this is the reason the defNames were kept: a save made with the original should
load with this mod in its place, containers and contents intact.

## 10. The icon and the showcase

Both images are the port's own, generated rather than cropped, and neither has been seen in place.

1. Open the mod list and look at this mod's row.

**Pass:** the mascot icon shows at 32 px, from `About/ModIcon.png`. **Watch for:** the authors'
old icon appearing instead. That would mean `<modIconPath>` came back, which would point at
`Textures/ASNeolithic/ModIcon` and undo the whole reason the field was removed.

The 896x504 showcase can only be judged on the Workshop page after the first upload, where it is
drawn about 268 px wide.

## 11. A save survives a reload

Build one of each, fill them, save, quit to the menu, reload.

**Pass:** every container is still there, still holding what it held, still drawing its contents at
the right stage. Sprite state that is derived rather than stored should rebuild on load.

This is a content mod: removing it mid-save destroys every container already built and drops what
was inside. That is expected and is stated in the description, but it means the reload test is
worth doing before a long game rather than after.
