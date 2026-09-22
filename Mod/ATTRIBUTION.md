# Attribution and provenance

## Original work

Adaptive Storage Neolithic Module is by **Soul, Phaneron and bradson** and is distributed under the
MIT licence. The copyright notice is preserved verbatim in `LICENSE`:

> Copyright (c) 2023 Soul, Phaneron, bradson

- Workshop: https://steamcommunity.com/sharedfiles/filedetails/?id=3033901895
- Source: https://github.com/bbradson/Adaptive-Storage-Neolithic-Module
- Framework: https://github.com/bbradson/Adaptive-Storage-Framework

The French translation is credited upstream to **Elzetia**. The Russian translation entered upstream
through **MrBlack-JB**'s contribution.

## Upstream source used here

The current delivered `Mod/` content follows upstream `main` at commit `2bc3fe4` (2025-02-10), plus
the 1.6 declaration, exact Russian `DefInjected` casing and French grammar correction proposed in
https://github.com/bbradson/Adaptive-Storage-Neolithic-Module/pull/4.

This includes the authors' current:

- XML definitions and balance values;
- stone-as-stuff architecture using `ASFStoneChunks`;
- save migration from the older per-stone generated defNames;
- graphics definitions, shadows and stack counts;
- integrated PNG and DDS textures;
- French and Russian translations.

The upstream `Misc/` artwork is not distributed because it is not referenced by the current defs and
was described by the authors as unfinished integration work.

## Continuation work

The continuation keeps its own:

- packageId, incompatibility declaration and RimWorld 1.6 metadata;
- generated icon and preview;
- Workshop id and publication material;
- static checks, Pickle scenarios and documentation.

The former continuation-only Harmony assembly and the old Workshop-based generator patches were
removed when the current upstream implementation was integrated. Stone material names now use
RimWorld's normal stuff-label system.

## AI disclosure

Claude Code (Anthropic) and ChatGPT (OpenAI) assisted with the adaptation audit, tests and documentation
under human direction and review. DALL-E (OpenAI) generated the continuation icon and preview. The
buildings, their artwork, textures, definitions, balance and stone-as-stuff implementation are the
original authors' work.
