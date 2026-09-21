# Pickle run — 2026-09-21, Russian, feature `07`

`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -Language Russian -Filter "07-russian-names.feature" -IncludeWip
-MaxWaitMinutes 720`: `07` alone, in a Russian game, in the WSL. Staged from commit `2be9d4f`, clean. Machine queue, lock held from
staging to the `finally`, nothing launched or closed on Windows. Report written 17:44.

- **`exitReason: passed`**, Pickle exit code 0. **5 scenarios played, 5 written in `07`**: 5 passed, 0 failed, 0 skipped.
- **TESTING.md 8, seen working.** The labels of the generated granite and vacstone buildings, the wood pile, the framework's research
  tab (*Хранилища*) and the two research projects read as Russian in the running game, and the Russian description of the vacstone
  chunk stack was found and read. The WSL game runs on ext4, which is case-sensitive, like the Steam Deck: had the folder been
  `Definjected` again the game would have read none of it and every assertion would have failed on the English source text.
  A language other than English, a filesystem where case matters, and a translation found: the bug this test exists for is not there.
- The six vacstone entries written by Claude were found and read; that they are good Russian is for a Russian speaker to say.
- **The capture was looked at in full**: the whole interface is Russian, the chunk stack is named *Куча гранитных обломков*, and it
  shows *Хранит: Обломок гранита*. Developer mode shows accented gibberish in two places, *(1 / 6 ṣṭạçkṣ, 25 kg)* in the contents panel and *(1 / 6 ṣṭạcks)*
  on the inspect line: that is the word "stacks", a key the game's own Russian lacks (the French capture shows "piles" there). Neither
  string belongs to this mod, which owns no key for it.
- `Player.log` was not kept: it had already been overwritten by another mod's run when I copied it.

Files: `summary.md`, `summary.json`, `junit.xml`. The frame was copied to `.build/pickle-run-russian/` (ignored by git).
