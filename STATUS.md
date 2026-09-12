---
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
stage:        done
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
dependencies: declared
showcase:     complete
tested_on:
workshop:
remaining:
  - unverified: never seen running; the eleven scenarios are written out in TESTING.md
  - unverified: the Russian translation only proves itself on a case-sensitive filesystem, so on the Steam Deck
  - defect: the icon carries four containers where its sheet called for one, and they merge into one mass at 32 px
session:      local_db1227c9-d5d1-40e9-991f-1efee093b86b
updated:      2026-09-12, confirmed by the session that holds this mod
---

# Adaptive Storage Neolithic Renew — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it. It is tracked by the mod's own repository,
as Anima Song's is.

The fields above were read off the disk on 2026-09-12, and the three that cannot be read off it
were confirmed the same day.

- **`stage` stays `done`.** The port, the showcase, the icon and the test scenarios are finished
  and pushed. Never having been run is not what this field carries: `tested` is a stage of its
  own, and the run itself is recorded by `tested_on` and by the first `remaining` line.
- **`tested_on` stays empty**, meaning never. That is true of nearly the whole repository, not
  only here.
- **`remaining` carries three lines.** The first two are checks that were impossible rather than
  skipped: the mod has never run, and the case of the Russian `DefInjected` folder only fails on
  a case-sensitive filesystem, which is the Steam Deck and not this machine. The third is a real
  known fault, small and cosmetic.

One field was repaired rather than confirmed: `workshop` held the stray text `reste:`, left by
the sweep that wrote this file. It is empty, which means the mod has never been uploaded.

`stage` vocabulary: `port`, `showcase`, `preTest`, `done`, `tested`, `published`.

`licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` nothing reused.

## What makes this sheet stale

Three events, and none of them corrects it on its own.

- **A run in game.** Fill `tested_on`, move `stage` to `tested`, and strike from `remaining` what
  the run covered. The first four scenarios of `TESTING.md` fall on the first successful load.
- **A Workshop upload.** Fill `workshop` with the item id and move `stage` to `published`.
- **A new icon.** Drop the `defect` line. The regeneration prompt is kept in the mod's showcase
  sheet, which lives in the monorepo and is ignored there.

- **`dependencies`** — `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.
