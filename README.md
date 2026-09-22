# Adaptive Storage Neolithic Renew

A RimWorld 1.6 continuation of Soul, Phaneron and bradson's
[Adaptive Storage Neolithic Module](https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895),
for the [Adaptive Storage Framework](https://github.com/bbradson/Adaptive-Storage-Framework).

This repository now follows the original authors'
[current GitHub source](https://github.com/bbradson/Adaptive-Storage-Neolithic-Module), rather than the
older files still distributed by the original Workshop item.

## Requirements

- RimWorld 1.6
- Adaptive Storage Framework

Harmony is not a direct dependency of this module. There is no continuation assembly.

## Current architecture

The current upstream implementation defines one chunk stack, one stone pot and one stone plinth. Each
uses the framework's `ASFStoneChunks` stuff category, so Core, Odyssey and compatible third-party stone
chunks work as construction materials without generating a separate building def for every stone.

`Patches/ChunkBackCompatibility.xml` maps saves containing the older generated building names to the
shared buildings and preserves their original stone chunk as stuff.

The continuation-specific differences are deliberately small:

- packageId `nelim.adaptivestorageneolithic` and incompatibility with the original package;
- RimWorld 1.6 declaration;
- exact `DefInjected` casing for Russian on Linux and Steam Deck;
- continuation icon, preview, Workshop id and publication documentation.

The definitions, balance values, graphics definitions and integrated textures otherwise follow upstream
`main` at commit `2bc3fe4` plus the small 1.6/localization corrections proposed in
[upstream PR #4](https://github.com/bbradson/Adaptive-Storage-Neolithic-Module/pull/4).

## Verification

```powershell
pwsh -NoProfile -File tests/Test-Mod.ps1
pwsh -NoProfile -File tests/Test-InstalledTranslations.ps1
pwsh -NoProfile -File tests/Pickle/Source/Build.ps1
```

The static checks cover XML, metadata, the stone-as-stuff contract, save migration, translations and
texture references. The Pickle suite contains runtime scenarios for Core granite, Odyssey vacstone,
third-party stone, localization, save/reload, research UI and review captures.

The upstream integration has not yet completed a new in-game Pickle pass. See `STATUS.md` for the exact
current evidence; results from the former Workshop-based implementation do not validate this revision.

## Licence and attribution

MIT, copyright 2023 Soul, Phaneron and bradson. See [LICENSE](LICENSE) and
[ATTRIBUTION.md](ATTRIBUTION.md).
