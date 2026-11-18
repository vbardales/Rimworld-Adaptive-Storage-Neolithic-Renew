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

Further translations found on the Workshop are integrated with their authors named. None of them declares
a licence, in its files or on its Workshop page, so each is treated as `silent` and credited:

- Thai: **SLOST**, Workshop 3341668276 (a translation of the original module).
- German: **Daedalus**, Workshop 3115381045 (a translation of the original module).
- Simplified and Traditional Chinese: **WhyBlyat**, Workshop 3821420014 (a translation of this mod).

Only the texts of this mod are taken from them. The Thai and German translations lack two texts of the current
upstream content (the stone stack and the stone plinth description); those were written with Claude (Anthropic).
The large stone pot and the stone plinth names reuse the names of the large pot and of the wooden plinth.

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

## Mods used to stage the gallery

The camp pictures of the gallery were staged with the mods below, none of them a dependency of this mod. Authors are named in the Steam description.

- Female Body Variants Continued: https://steamcommunity.com/sharedfiles/filedetails/?id=3798082132
- Female Apparel Variants Continued: https://steamcommunity.com/sharedfiles/filedetails/?id=3799726535
- WDI's Realistic Bodies: https://steamcommunity.com/sharedfiles/filedetails/?id=3527486510
- Facial Animation Performance Patch: https://steamcommunity.com/sharedfiles/filedetails/?id=3790129900
- Facial Animation - WIP: https://steamcommunity.com/sharedfiles/filedetails/?id=1635901197
- Facial Animation - Experimentals: https://steamcommunity.com/sharedfiles/filedetails/?id=2581693737
- Vanilla Textures Expanded - Facial Animation: https://steamcommunity.com/sharedfiles/filedetails/?id=2816938779
- Akeron Extras - Facial Animations: https://steamcommunity.com/sharedfiles/filedetails/?id=2889716301
- Vanilla Experimentals for Facial Animation: https://steamcommunity.com/sharedfiles/filedetails/?id=3753978140
- EyeGenes3: https://steamcommunity.com/sharedfiles/filedetails/?id=3745223213
- Vanilla Expanded Framework: https://steamcommunity.com/sharedfiles/filedetails/?id=2023507013
- Vanilla Furniture Expanded - Props and Decor: https://steamcommunity.com/sharedfiles/filedetails/?id=2102143149
- Roo's HD Hairstyles (continued): https://steamcommunity.com/sharedfiles/filedetails/?id=3559870636
- Vanilla Hair Expanded: https://steamcommunity.com/sharedfiles/filedetails/?id=1888705256
- Hat Hair Control: https://steamcommunity.com/sharedfiles/filedetails/?id=3760821540
- Vanilla Apparel Expanded: https://steamcommunity.com/sharedfiles/filedetails/?id=1814987817
- FashionRIMsta (Continued): https://steamcommunity.com/sharedfiles/filedetails/?id=3592569869
- Fairycore - Apparel 2: https://steamcommunity.com/sharedfiles/filedetails/?id=3812924898
- AB's Visible Pants: https://steamcommunity.com/sharedfiles/filedetails/?id=2986402536
- Let's Have a Cat! Continued: https://steamcommunity.com/sharedfiles/filedetails/?id=3682940618
- FacialAnimation add closed eyes: https://steamcommunity.com/sharedfiles/filedetails/?id=3694711465
- Visual beauty for Facial Animation: https://steamcommunity.com/sharedfiles/filedetails/?id=3685072616
- NL Facial Animation - Init Fix: https://steamcommunity.com/sharedfiles/filedetails/?id=3609895011
- NL Facial Animation - Load Fix: https://steamcommunity.com/sharedfiles/filedetails/?id=3721489042
- Cuter Kids for Facial Animation: https://steamcommunity.com/sharedfiles/filedetails/?id=3807706870

## AI disclosure

Claude Code (Anthropic) and ChatGPT (OpenAI) assisted with the adaptation audit, tests and documentation
under human direction and review. DALL-E (OpenAI) generated the continuation icon and preview. The
buildings, their artwork, textures, definitions, balance and stone-as-stuff implementation are the
original authors' work.
