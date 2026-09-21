# Pickle run — 2026-09-21, "stones" pass, English, whole

`scripts/Run-PickleWsl.ps1 -Mod AdaptiveStorageNeolithicRenew -DepMap wsl-deps.stones.map -MaxWaitMinutes 720`: the whole suite
beside [K]Extra Stone, English, developer mode, no `-IncludeWip`. It replays the pass that stopped before `06`. Report written 19:03.
The tree was staged at a moment I did not record, minutes before the selectors of the three patches were changed (see below), so
this run says nothing about that change.

- **`exitReason: passed`**, Pickle exit code 0. **41 scenarios played, 41 written**: 26 passed, 0 failed, 15 skipped (the ten of `05`
  and the five of `07`, both `@wip`), 0 flaky.
- **`06`, TESTING.md 4b in English, passed**: the generators built a pot, a plinth and a chunk stack for the stone `Kura_Andesite`
  of [K]Extra Stone; their labels are the stone's own, `andesite chunk large pot` and `andesite chunk plinth`; the three can be built and
  placed with no error logged; and the capture of the pot and the chunk stack was taken and looked at: the pot (with berries) and the
  chunk stack are tinted the stone's cool blue-grey, visibly not the granite of `03`.
- The 22 scenarios of `01` to `04` passed again with the second stone mod loaded, so having [K]Extra Stone active beside this mod
  raises no error. The report is the first complete one of the "stones" pass.

Files: `summary.md`, `summary.json`, `junit.xml`. The frames were copied to `.build/pickle-run-stones-en2/` (ignored by git).
