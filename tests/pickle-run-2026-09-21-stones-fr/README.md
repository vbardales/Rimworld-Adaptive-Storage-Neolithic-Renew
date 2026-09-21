# Pickle run — 2026-09-21, "stones" pass, French, feature `05`

`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language French -DepMap wsl-deps.stones.map -Filter
"05-french-names.feature" -IncludeWip -MaxWaitMinutes 720`: `05` alone, in French, beside [K]Extra Stone. Language
`French (Français)`, developer mode on. Staged from commit `2be9d4f`, clean. Machine queue, lock held from staging to the `finally`,
nothing launched or closed on Windows. Report written 17:42, the run having begun at 17:40.

- **`exitReason: failed`**, Pickle exit code 1. **11 scenarios played, 11 written in `05` at that commit**: 10 passed, 1 failed, 0 skipped.
- **The failure is the removed tab-click scenario**: `tag 'btn:Stockage' not found; known tags: no tags recorded this frame`, the twin of
  the English failure of the pass before. The scenario no longer exists (`05` has 10 scenarios now), so nothing else in this report
  is affected.
- **TESTING.md 4b, seen working in a running game with a stone from another mod.** *the fallback translates the buildings of a stone the mod
  never met* passed: `ASNeolithicLargePotChunkKura_Andesite` reads `grand pot (andesite chunk)`, its plinth `socle (andesite chunk)`
  and its chunk stack `amas de blocs (andesite chunk)`, with the French descriptions of the generic resources. The stone mod ships no
  French, so its own label stays English inside the French sentence, which is what the mod documents.
- **The blueprint of that pot passed too** (`Grand pot (andesite chunk) (plan)`): the fallback runs in the same postfix as the
  DefInjected pass, so it landed before vanilla copied the label. The capture was looked at in full: French interface, the
  blueprint named *Grand pot (andesite chunk) (plan)* in the inspect pane, *Travail restant: 10*, and the cost line reading
  *Andesite chunk: 0 / 1*, English because that is the other mod's label. No accented fallback text.
- The rest of `05` passed as in the earlier French pass: vacstone and granite names, descriptions, research text, blueprints of the
  granite and vacstone pots, a chunk stack naming itself, and the framework's tab reading *Stockage*.

Files: `summary.md`, `summary.json`, `junit.xml`. Frames and `Player.log` copied to `.build/pickle-run-stones-fr/` (ignored by git).
