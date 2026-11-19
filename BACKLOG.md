# Backlog

## Upstream proposals

Rule (PUBLISHING.md, "Départ depuis le projet d'origine"): pull request to source repository stays here until made. Leaves only with owner's word; English of this mod is upstream's, not changed here.

- Upstream: `bbradson/Adaptive-Storage-Neolithic-Module`, `main`. First pull request, #4, closed for inactivity 2026-11-11, refreshed (`f95e91d`) and reopened 2026-11-12 on owner's yes (1.6 update, translations, basket `drawSize`). 1.7 update opened 2026-11-12 on owner's go as separate PR #6 (branch `codex/rimworld-1.7` stacked on #4, one line `<li>1.7</li>`; green 1.7 run 2026-11-07 predates the Russian text fixes). Framework (`bbradson/Adaptive-Storage-Framework`): no change of this mod touches it, no PR.
- Wood pile, fabric bundle and chunk stack descriptions: filed 2026-11-13 on owner's go as separate PR #7 (branch `codex/description-wording` from upstream `main`, independent of #4 and #6). Wording more literary than the reviews' short forms: "A few rough-looking logs, tossed together into a loose pile."; "A few folded lengths of cloth, stacked into a neat pile."; "A stack of stone chunks, each one supporting the next. Easy to make and quite effective as cover."
- Leather bundle: filed 2026-11-12 in PR #4 ("A couple of pieces of leather stacked into a neat pile."). Fabric bundle wording below: not filed.
## Known defects and requests

- Open 2026-11-19, Workshop comment by tanyfilina (profile 76561198973208682): items in baskets look unlike the preview, drawn outside the basket; asks for modded items (crops of Vanilla Plants Expanded) to display. Cause read: `Mod/Defs/StorageBuildings/Basket/GraphicsDef.xml` places items at `drawOffset (0,0,0.45)` with `Circle` stack and `stackOffsetFactor 0.3`, so chunks sit on the front rim (visible in `Art/Gallery/2-baskets.jpg`). Not changed: a `Mod/` edit reopens code review and `playTests`, needs the owner's go. Modded items: the basket accepts category `Root` minus Chunks, Plants, Buildings, so crops are stored; their display is not tested (needs VPE in a Pickle map).
