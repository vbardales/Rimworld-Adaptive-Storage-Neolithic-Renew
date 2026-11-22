---
localization: complete
translation_en: complete
translation_fr: complete
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
workflow_stage: code[1.2.1]
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
upstream_mod_remotes:
  - https://github.com/bbradson/Adaptive-Storage-Neolithic-Module
  - https://github.com/bbradson/Adaptive-Storage-Framework
upstream_synced: 2026-11-12 Adaptive-Storage-Neolithic-Module＠2bc3fe4
upstream_synced: 2026-11-12 Adaptive-Storage-Framework＠31ee88b
dependencies: declared
workshop_required_items: done, 2026-11-16 (read in Chrome on the live page of 3806101377: "Éléments requis" lists Adaptive Storage Framework)
showcase:     complete
tested_1_7:   yes
tested_on:    2026-11-16 pickle 093fc9f (1.7 en map 51fc green 23/23; 1.6 stones en 5406 green 30/30; Russian 6e7f green 2/2; BAM 37cc and cdda red 0/3 then dc4e GREEN 3/3 on 33ca61f 2026-11-17 after the patch defName fix); earlier 2026-11-07 pickle 3280d85 (1.7 en map cd58 green, 23 passed 2 skipped); 1.6 stones passes of 2026-10-10 on 92fcfaa, see "Passes"
workshop:     3806101377
settings_audit: not_applicable
build_audit:  not_applicable (current upstream architecture has no assembly)
audit_revision: 2026-10-10, full re-audit against the current AUDIT.md at 92fcfaa (see "Audit 2026-10-10")
audit_evidence: STATUS.md, "Audit 2026-10-10"; older journal in git history (Docs/runs/history.md, removed 2026-11-19)
code_review_sha: 2c18d05454e01f40d15302f8ba62b1ce5f627d9f
session:      local_4ed646b4-613c-4b9b-a049-cbfd6563a269
updated:      2026-11-19
thanks_drafted_line: 1.2
preview_audit: complete (header image published 2026-10-01 with 1.1.2; a newer Preview, 659,724 bytes, is in `Mod/` for 1.1.3 and goes out with `update_preview`)
modicon_audit: complete
echo_review_sha: f633ca10a59bb4af8f20a821ee7b717a3138bc1d
publication_changelog_review_sha: d209863bb67aeea4d0284d47aaf352373882a111
social_preview_sha256: cd8ca8a833058d1913eb92ec336a70524192dfdd9809016b5f7d9bf0758d55e6
remaining:
  - resume 2026-11-22: plinth ticket `20261122-161703-446-337a` GREEN (summary.json 1/1 passed, camp set, exitReason passed; capture read: gold chunk on the wood plinth, green item on the vacstone plinth, items on the tops). 3.a done (plinths fixed, large pots have no offsets to fix), 3.c done (CHANGELOG `[Unreleased]` Fixed entry). Next: replay-audit at the end of the state, then gallery food captures and the tanyfilina reply. Earlier replay 2026-11-22 (owner typed): stage stays code[1.2.1]. Ledger `.replays/AdaptiveStorageNeolithicRenew-20261122.tsv`.
  - open 2026-11-19, 1.2.1 basket fix: `Mod/Defs/StorageBuildings/Basket/GraphicsDef.xml` (b8cc557, offsets inline, z 0.4, estimated). Ticket `20261119-150206-112-2f45` GREEN 1/1 (summary.json passed, camp set, read 2026-11-22): capture shows the stones inside the basket opening (middle basket one stone, right basket two), z 0.4 holds. Plinths fixed a794414 (owner oui 2026-11-22, same inline offsets 0.42), FILED ticket `20261122-161703-446-337a` (label "plinth item offset a794414", filter `12-workshop-camp::plinths`, camp map, evidence `Tests/Pickle/Inbox/plinth-offset`). Large pots: no item offsets, showContainedItems false, nothing to fix. Next: read plinth capture; CHANGELOG [Unreleased] entry for basket and plinths. Open question for the owner: also fix the plinths (same defect, `Art/Gallery/6-plinths.jpg`)? Then gallery food captures (one type, several types), reply to tanyfilina (draft given 2026-11-19, owner posts), and `/mod-workflow:replay-audit` at the end of each state (stage never written by hand).
  - note 2026-11-19, new rules read: a `workflow_stage` change is written only by `/mod-workflow:replay-audit` run by the session at the end of a state (AGENTS.md, `stage-replay` check from 2026-11-20); `preview_source_decision` (keep|redo, date) due at `mountPreview` for 1.2.1 (AUDIT 10.a bis).
  - note 2026-11-19, Preview rules read for `mountPreview` of 1.2.1: reuse the `palette` already in `Art/Preview.config.json`, `panelBare` allowed from 4.5:1 contrast, never required (owner 2026-11-19), with a bare panel and no `icon.corner` the ModIcon is on the left, opposite vertical end to the panel (AUDIT 10.b, STYLE_RIMWORLD).
  - open 2026-11-19, target 1.2.1 (owner "go"): fix item offset in the basket (check other containers), then gallery captures of food, one type and several types (see BACKLOG.md). Chain reopened at `ecosystem` (owner: required for a new version), then `code[1.2.1]`.
  - read 2026-11-18, PiT answer (direct) on 1.7 ticket `be4a`: the 6 red scenarios are the PickleTools own suite on 1.7, no ASN refile owed, no PiT fix planned now (evidence gone from Inbox, PickleTools 1.7 diagnostic not run yet). On a future 1.7 refile, filter those 6 out with `!` terms. Celtic (issue #4): still no reply on 2026-11-18, owner checked; no log, nothing to change in `Mod/`. Only testable lead without the log: a scenario with the original `adaptive.storage.neolithic` 3033901895 enabled next to Renew (owner not asked yet, via TM if wanted).
  - done 2026-11-18, 14.c WSL cleanup through PiI (cross-mod check of all wsl-deps maps): only Kura.ExtraStone 852103845 unsubscribed (https://steamcommunity.com/sharedfiles/filedetails/?id=852103845), every other item of my maps is kept because other mods name it; my camp and stones maps still name Extra Stone, so a next non-regression fetches it again. Nothing touched in WSL by this session. Unsubscribe done by PiI (success:1), nothing for the owner. Docs cleaned (`eaf8d27`). Text-only diff review `f633ca1..HEAD` done (About.xml credits line and ATTRIBUTION.md, 5 camp mods removed, anchor exists, XML parses, both ATTRIBUTION copies equal, no defect), `code_review_sha` moved. Open: `dormant` or a new `code` loop.
  - open 2026-11-18, Workshop comment by Celtic (profile 76561197994297611, pasted by her): "Tried this - with my modlist it caused an infinite load situation launching the game". No version, modlist or log given. Reply POSTED by her 2026-11-18 (links issue #4), awaiting Celtic. Was drafted for her to post (asks RimWorld version, whether the original Adaptive Storage Neolithic Module 3033901895 is still enabled, Better Architect Menu, Player.log). Not reproduced; Pickle passes green on 1.6 and 1.7 with the framework alone and with BAM. Nothing to change in `Mod/` until a log arrives. GitHub issue #4 opened 2026-11-18 (https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew/issues/4).
  - open 2026-11-18, 14.i: stage `runNoRegression[1.2.0]` (owner "oui"), Mod/ frozen at `d54a9a0` (text-only diff to the published `2a726b8`). FILED 2026-11-18, six tickets on `9b6105d` (`-DepMap` takes the file name): `787f` 1.6 en map, `53f9` 1.6 en stones, `bfc5` 1.6 BAM, `30be` 1.6 French, `e4da` 1.6 Russian, `be4a` 1.7 en map; Mod/ frozen until `RUN_DONE`. RUN_DONE 2026-11-18: `53f9` stones GREEN (156, 149 passed, 7 skipped by design), `bfc5` BAM GREEN 3/3; `30be` French FAILED by wrong filter (`05-french` matched no scenario, feature is `05-french-names`), refiled as `29c3`, GREEN 5/5 (hetzner, summary.json passed, 0 failure in junit); `e4da` Russian FAILED same wrong filter (`07-russian`), refiled as `459c` (`-Filter '07-russian-names'`, stones map); `be4a` 1.7 RED 140/156, 6 failed, 10 skipped: all 6 in the PickleTools own suite (bill steps, surgery steps, ui steps x2, vanilla smoke, watch mode), none of ours (all our scenarios Passed, read in junit); TM forwards to PiT, nothing to fix here; `787f` 1.6 en map PARTIAL (66 scenarios, 63 passed, exit 5, exitReason in-progress, run cut, not a success), refiled as `ff40` (-DepMap wsl-deps.map); `459c` Russian GREEN 2/2 (stones, summary.json exitReason passed, read in Inbox `nr-ru-9b6105d` 2026-11-18); `ff40` 1.6 en map GREEN 2026-11-18 (azure, exit 0 "all passed", summary.json 34 passed 0 failed 15 skipped by design: 3 stone-set scenarios covered by green stones `53f9`, 12 gallery or camp scenarios outside the non-regression set; exitReason passed, Evidence `nr-map-en-9b6105d` (summary, junit kept, Inbox emptied 2026-11-18), same folder name as the replaced `be4a` evidence). All six non-regression tickets accounted: 1.6 and French and Russian and BAM and stones GREEN, 1.7 RED only in the PickleTools own suite (not ours). 14.a verdict green; next 14.j `cleanUp` or a new `code` loop. Six tickets of the non-regression pass: 1.6 en map, 1.6 en stones (without the camp gallery feature), 1.6 BAM (13), 1.6 French (05), 1.6 Russian (07), 1.7 en map. Labels carry the SHA. Verdict in this STATUS; then 14.j `cleanUp`, `dormant`.
  - open 2026-10-15, echo `echo-source.png` replaces `echo-preview.png` (rendered, `echo_review_sha` updated). Social preview upload done 2026-11-18; `Art/echo-preview.png` may still sit on disk, unused.
  - planned, after a green 1.7 run: a pull request to upstream `bbradson/Adaptive-Storage-Neolithic-Module` with the 1.7 declaration and the run result (owner's yes, 2026-10-13); not opened before.
  - note, 2026-10-11: `Mod/About/ModIcon.png` weighs 35.9 KB (AUDIT.md 2.b asks 20 to 30 KB); the owner validated it as is (override, chat 2026-10-11).
  - open, `publish` (AUDIT.md 13.b, 2026-10-10): public Renew mod, so a `drafted` row goes into `USE_THIS_INSTEAD.md` (old item Adaptive Storage Neolithic Module 3033901895, new item 3806101377, names, authors, packageIds, versions). Virginie posts one comment on Mlie's Workshop page (3396308787); the session writes it in BBCode in `PUBLICATION.md` and hands it to her as a numbered orange step with the clickable link. Row statuses: drafted, posted, not_applicable. The register has no row for this mod yet.
  - unverified: the Steam copy loaded in game. The file half is automated (Tests/Test-SteamCopy.ps1) and compares against the newest tag `v1.1.3`; the game half is the owner's: `RimWorld/Mods` holds a development junction with the same packageId.
  - unverified: the adult-content boxes of the Workshop item. Owner declared, not checkable without a login.
  - open: GitHub issue #3 (performance). A Pickle benchmark passed 5/5 (again on 2026-10-09, fr perf replay) and did not reproduce the reported cost: 24 filled pots +0.061 ms/tick against about +0.347 reported. Not an ASF-only A/B. Open pending the reporter's versions, save and logs.
  - scope, decided 2026-09-21 by the owner: backward compatibility with the former per-stone buildings, the original mod's refusal (`incompatibleWith adaptive.storage.neolithic`) and the mod-list icon are checked statically, as are the architect menu, the dropdown groups, frames under construction and the inspect-pane card. No in-game pass for them, so no `incompat` map. A new game is not relevant: the mod adds content to an existing game.
  - note: Russian vacstone (six entries) was written by Claude from Odyssey's own term and not reviewed by a Russian speaker. Disclosed in the README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About description.
  - note: in French and Russian the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk"). It comes from the chunk def and upstream dropped the translation hook. Not a defect of this mod.
  - note: French validated by Virginie 2026-10-08 (corrections applied, `FRENCH_REVIEW.md` regenerated). English is upstream's and untouched.
ecosystem_line: 1.2
protocols_read_sha: 64a7e811384d5be26042e5a29d048c0f02769630
---
# Adaptive Storage Neolithic Renew: status

Read by sweep across every mod. Lives at root, never inside `Mod/`, so Steam never gets it. Journal of earlier work (was `Docs/runs/history.md`, removed 2026-11-19 by the migration); recover older text with `git log -p -- STATUS.md`.

## Where the mod stands

- **Published:** `v1.1.3` (2026-10-11, tag at `e47cceb`, run `38092165205`, Steam item `3806101377`, public). Previous `v1.1.2` (`cd28780`) = rollback target; regression green (2026-10-02).
- **Target:** `1.1.3`, published 2026-10-11 (CHANGELOG `[1.1.3] - 2026-10-11`, `PUBLICATION.md` section 6). `Mod/` changes since `v1.1.2`: `About.xml` (description now generated from Markdown source), `ModIcon.png`, `Preview.png`, `Basket/ThingDef.xml` (`drawSize` `(2,2)`), French `ThingDef.xml` (nine descriptions, Virginie's review). Nothing in `Mod/` changed since `010cc34`; later commits = documents.
- **Old vocabulary:** previous `workflow_stage: preTest` = old name (AUDIT.md, section 16: `preTest` maps to `writeTests`). Re-audit result: `playTests[1.1.3]`; left for `shootGallery[1.1.3]` on 2026-10-10 (stones passes green, code review done).

## Dependencies (AUDIT 4.g, 2026-11-16, revision `11b6207`)

Read from `Mod/About/About.xml`, `Mod/About/OptionalCompat.xml`, `Mod/Patches/`, `Mod/Defs/` (no `LoadFolders.xml`, no assembly).

| Kind | Entry | Where declared | Check |
| --- | --- | --- | --- |
| Hard dependency | `adaptive.storage.framework`, Workshop 3033901359 | `modDependencies` (with `steamWorkshopUrl` and `downloadUrl`), `loadAfter` | Check-ModBasics PASS |
| Load order | `Ludeon.RimWorld`, `adaptive.storage.framework` | `loadAfter` | no cycle (one dependency) |
| Incompatible | `adaptive.storage.neolithic` (original module 3033901895) | `incompatibleWith` | read |
| Optional integration | `ferny.BetterArchitect` (Better Architect Menu 3563882422), kind `patch`, own gated patch `Mod/Patches/BetterArchitectMenu.xml` (`PatchOperationFindMod`), added 2026-11-16 | `OptionalCompat.xml` | Check-OptionalCompat OK, Check-PatchGuards PASS |
| Optional, no declaration needed | third-party stones (Extra Stone, kuratheris) join through the framework's `ASFStoneChunks` category; no patch of ours | none | scenario `06-third-party-stone` |
| DLC | Biotech: `MayRequire="Ludeon.RimWorld.Biotech"` on one `disallowedThingDefs` entry (`Wastepack`) in the basket and on two graphics entries of the large pot; no hard DLC dependency | element-level `MayRequire`, never on an `Operation` | Check-PatchGuards PASS |
| Game versions | `supportedVersions` 1.6 only; `<li>1.7</li>` only after the green 1.7 run replay | `About.xml` | `tested_1_7: yes` (2026-11-07 run) |

Workshop required items (4.g): framework 3033901359 is the only mandatory Workshop dependency; read in Chrome on 2026-11-16, the live Steam page of 3806101377 lists it under "Éléments requis" (only item). `workshop_required_items: done, 2026-11-16`.

## Audit 2026-10-10

Audited at `92fcfaa` (`main`). Nothing launched by this session: no RimWorld, no CI dispatch; two Pickle tickets deposited through Ticket Manager.

| Check | Result |
| --- | --- |
| `Tests/Test-Mod.ps1` | Re-run under `pwsh`: 173 assertions pass (under Windows PowerShell 5.1 script cannot run: `GetRelativePath`). |
| `Tests/Test-InstalledTranslations.ps1` | Re-run: 123 pass. |
| `Tests/Pickle/Source/Build.ps1` | Builds (CS1684 `Span` warnings only). Rebuilt DLL differs in bytes from tracked one, restored with `git checkout`; no source change. |
| Scenarios written (7.a, 7.d) | 11 feature files in `Tests/Pickle/Mod/Pickle/Features/`, plan in `TESTING.md`; no `TEST_SCENARIOS.md` (Gherkin features and `TESTING.md` play that role). `@requires` scenarios have maps (`wsl-deps.stones.map`, `wsl-deps.sanctuary.map`, `wsl-deps.camp.map`). |
| Translations (7.g) | `complete` x3; French validated 2026-10-08 (`translation_fr`). `FRENCH_REVIEW.md` regenerated that day. |
| Settings | `not_applicable`: no C#, no `ModSettings`, no `MainButtonDef` in `Mod/` (revalidated 2026-09-28; `Mod/` no code since). |
| `About.xml` | `packageId`, framework dependency with Workshop id, `loadAfter`, `incompatibleWith`, author `Soul, Phaneron, bradson - 1.6 adapted by Nelim`: consistent. No em dash. |
| Steam description (11.a, 11.b) | Single Markdown source in `PUBLICATION.md`; sections in required order; ends with `[Source code on GitHub]`. Not rechecked against live page this session. |
| Lint | `Check-Status.ps1`: 0 error; warnings (retired `stage`, `preTest` vocabulary, `protocols_read_sha`, 74 KB size) cleared by this rewrite and `Mark-ProtocolsRead.ps1`. |
| Mod root | `.git`, `.github`, `.gitignore`, `.gitattributes`, plus ignored `.claude/`, `node_modules/`, `package*.json`, `desktop.ini`. `PREVIEW.md` = tracked document. |

**Retained state: `playTests[1.1.3]`.** Cumulative criteria through `writeTests` hold. `playTests` stays open on points under `remaining`: `stones` passes, `@review` captures, code review (8.m).

## Preview (AUDIT.md step 10), 2026-10-10

- **Echo (10.a): kept.** `Art/echo-preview.png` (renamed from `echo.png` 2026-10-12, same bytes) = line-art basket full of wheat (drawn blue on Preview). Gallery shows baskets that fill up, pots, stacks, plinths: basket full of grain says mod's promise (container shows what is inside), still matches. No real mismatch; accepted Preview not reopened for taste. `echo_review_sha` = `eb6abc0` (commit that fixed accepted gallery).
- **Render (10.b to 10.d), read from file, not renderer log:** `Mod/About/Preview.png` 896 x 504, 659,724 bytes (under 1 MiB); `Art/Gallery/0-preview.png` byte-identical (`cmp`). Contrast measured on final PNG, ink `#F2ECE1` on panel: title 6.25:1, summary 5.18:1 (floor 4.5). Suffix "Renew" (secondary ink, partly over echo strokes) could not be measured cleanly by crude sampling; reads clearly at 896 px and 268 px (thumbnail opened: title, rule, summary legible, nothing cut or overlapping, version badge `1.6` top right, icon bottom-left). Same Preview as published with 1.1.2 text and layout; only icon and image refreshed 2026-10-05.
- **Clean (10.e):** deleted `Art/Preview-original.png` (first generated version, visual trace) and `Art/shelved-textures/` (nine upstream textures mod never loaded); both recoverable in git (`eb6abc0`). `Art/` now holds minimal set: `ModIcon-source.png`, `Preview-source.png`, `echo-preview.png`, `Preview.config.json`, `ModIcon.ico`, `Preview.ico`, `Gallery/`, `.render/` (ignored). Mod root: only ignored extras.
- **Social preview (10.f): done 2026-10-10.** Uploaded by session through Chrome on owner's word ("fais le"); `og:image` re-read and downloaded: 659,724 bytes, sha256 equal to `Mod/About/Preview.png`, recorded in `social_preview_sha256`.

## Gallery (AUDIT.md 9.e), 2026-11-17

Series "noon at the camp", rewritten 2026-11-09 to 2026-11-17 (the storehouse and camp series of 2026-10 were removed). Folder 3.75 MB (3,752,807 bytes, ten files, `.jpg` subtitled 1 to 8, clean originals in `Art/Gallery-clean/`), largest image 0.74 MB (`0-preview.png`) of 2, total under 8 MB. All nine images opened full size and at 268 px (contact sheet) in the 2026-11-17 reads and validated by Virginie ("je valide", 2026-11-17). Place `bare-clearing` of Sanctuary Backlot, save `Nelims-tribe`, played by `12-workshop-camp.feature`; Nelim and Soren, one picture every five game minutes from 12:00. Known: Nelim's face is the plain NSB base, no red cheeks (owner may ask them back); grey post above the hay in 3 is the mod sprite `HayPileStage1.png`.

| # | File | Story and place | Why here |
| --- | --- | --- | --- |
| 0 | `0-preview.png` | header image | byte copy of `Mod/About/Preview.png` (740,897 bytes, badge 1.7, `cmp` equal 2026-11-18) |
| 1 | `1-camp-noon.jpg` | camp at noon, `bare-clearing` | most demonstrative: five storage types waiting, loose chunks and logs; Steam shows it large right after the header |
| 2 | `2-baskets.jpg` | same camp | mod's central promise: three baskets, empty, one stone, full: a container shows what it holds |
| 3 | `3-piles.jpg` | same camp | wood pile and hay pile, Nelim empty-handed, hen beside loose hay |
| 4 | `4-pots.jpg` | same camp | large pots showing berries, milk and grain |
| 5 | `5-stacks.jpg` | same camp | stone as stuff: granite stacks at 1, 2 and 6 chunks, and a marble stack |
| 6 | `6-plinths.jpg` | same camp | wood and vacstone plinths showing gold and an item: display side of the mod |
| 7 | `7-another-mod.jpg` | same camp | integration: a stone from another mod (Extra Stone) with its own pot and stack beside granite |
| 8 | `8-tidied.jpg` | same camp, tidied | payoff: same camp, everything in its place, storage filled |
| 9 | `9-research-window.jpg` | interface crop | research window, Storage tab, both projects; no subtitle (interface window) |

Index and table aligned in `PUBLICATION.md` section 2 (file names and order; its byte sizes predate the 2026-11-17 recompression and are refreshed at `writeReleaseDocs`, 11.e).

## Code review, 2026-10-10 (AUDIT.md 8.m)

Range `v1.1.2..HEAD` (`949973b`): whole diff of `Mod/`; no `Source/` (mod has no assembly). Earlier ranges: 2026-09-28 (`0.1.0..`, three findings fixed in 1.1.2) and 2026-10-05 (`1.0.0..134aecd`, `drawSize` finding).

- `Basket/ThingDef.xml` `drawSize` `(2)` to `(2,2)`: correct. About 90 other `drawSize` in `Mod/Defs` and basket's own `GraphicsDef.xml` use two components. Basket capture of `438d` shows normal-size basket; no mod error in `Player.log` of pass.
- French `ThingDef.xml`, nine descriptions: validated by Virginie 2026-10-08; XML valid, keys unchanged, no pawn text; `Test-InstalledTranslations.ps1` 123 pass.
- `About.xml`: description = plain-text form of Markdown block (`sync-about-description.mjs --check`: already in sync); packageId, dependency, `incompatibleWith` unchanged.
- `ModIcon.png`, `Preview.png`: binary outputs of owner's sources, not code.

No defect. A commit of `Mod/` after this sha reopens review and `playTests`.

Addendum 2026-10-10, `0309c0d`: only `Mod/` change since is `About.xml`, description regenerated from `PUBLICATION.md` with new `THANKS` paragraphs (4 added lines, plain text). Read: `&` of "TailorMade: Unified Apparel & Body Refitting" escaped (`&amp;`), XML parses, `Test-Mod.ps1` 173 pass, description 6,193 characters (Steam limit 8,000). No defect; `code_review_sha` moved to that commit. Second addendum, `2896810`: `About.xml` again, description only (compatibility sentence reworded as owner asked, Venus Touch Waistlines added to camp credits); XML parses, `Test-Mod.ps1` 173 pass. No defect; `code_review_sha` moved there.

## Settings audit, 2026-09-28

`not_applicable`. `Mod/` holds no assembly, no C#, no `ModSettings`, `GetSettings`, `MainButtonDef` or `MainTabWindow`. Costs, capacities, research = authored balance data inherited from upstream, not options player needs. Framework owns display options. No empty options page, no shortcut. Revalidate if `Mod/` gains code or settings class.

## Translation audit, 2026-09-28, French review 2026-10-08

- **2026-11-16, review and validation:** `/review-translation` page 1 reached a clean round after ten rounds (refusals in `Docs/review-refusals.md`); Thai (SLOST 3341668276), German (Daedalus 3115381045) and Chinese Simplified and Traditional (Holarula 3821420014) integrated, licence silent, credited in `ATTRIBUTION.md`, six Thai and six German texts written with Claude; none of Thai, German, Chinese, Russian checked by a speaker (disclosed in `PUBLICATION.md`). Owner validated the translation 2026-11-16.

- **Inventory:** labels and descriptions of `ThingDef`, `ResearchProjectDef`, `ResearchTabDef`. No Keyed folder, no C#, so no code-owned text. English comes from Defs.
- **French and Russian** live in `Mod/Languages/<Language>/DefInjected/` (`ThingDef/ThingDef.xml`, `ResearchProjectDefs.xml`, `ResearchTabDef.xml` for French). Russian outside English and French gate; vacstone entries unreviewed by Russian speaker.
- **Checks:** 173 and 123 assertions pass (2026-10-10); French pass (feature 05) and Russian pass (feature 07), language-aware, green in `7cce` and `c2a3` (2026-10-08).
- **Gender agreement:** all 21 French texts describe furniture; none refers to pawn; no `{PAWN_gender ? ...}` switch applies (read in full 2026-09-30, again for 2026-10-08 corrections).
- **French review, Virginie, 2026-10-08:** corrections applied (nine descriptions of `ThingDef.xml`), validated; `FRENCH_REVIEW.md` regenerated by `scripts/Make-FrenchReview.ps1` (protocols repository). Later change to French file resets `translation_fr` to `unchecked`.
- **Not covered:** third-party stone's own untranslated material name belongs to that mod.

## Ecosystem (PiI, 2026-11-13)

Source: PiI `docs/inventory/ecosystem-steam/AdaptiveStorageNeolithicRenew.md` (pushed `ee12d50`).

- Only the original 3033901895 holds our 25 defNames (fork-or-rewrite, expected; held, needs_npt).
- 10 weak hits, none shares defNames. No other fork.
- Closest function: Adaptive Primitive Storage 3400037215 (owner keep). Owner 2026-11-13: same family, similar but not the same; not a duplicate. We may read its code for improvements, nothing more (no reuse of content, no dependency). PR #4 keeps 1.6 (owner confirmed).
- Item 24 (PiI addendum, checked on content sheets): Better Architect Menu 3563882422: no shared defNames; patches our `ASNeolithicHayPile` only (menu category patch among 5255 targets); no conflict; action none (optional compat note). Cyanobot's Leather Overhaul 3419552924: no shared defNames; patches none of our defs (170 targets, animal leather drops); no conflict; action none.
  - done 2026-11-16, review-translation page 1 (third run, after the leather one): 1 applied (Russian wooden and cloth basket descriptions now carry the full English list wood, fabric, dried leather, `Mod/` Russian only), 2 French wordings refused (`taillé` kept, `bûches grossières` kept, logged in `Docs/review-refusals.md`), no proper noun, no source-column change so no upstream PR. `Check-Translations` PASS, `TRANSLATION_REVIEW.md` regenerated. Russian replay of the 1.7 run still owed (Russian unreviewed by a speaker). Nothing for Virginie.
  - done 2026-11-16, owner "1 oui" on the item 24 options: own gated patch for Better Architect Menu written, `Mod/Patches/BetterArchitectMenu.xml` (one `PatchOperationFindMod` on "Better Architect Menu", same seven `PatchOperationAdd` as its patch for the original) and `Mod/About/OptionalCompat.xml` (ferny.BetterArchitect, 3563882422, patch); `Check-OptionalCompat` OK. `Mod/` changed: `code_review_sha` stays reopened, 1.7 run to replay. NOT played: no Pickle scenario proves the categories (needs BAM staged in a map; to decide before release). Risk: the chunk stone variants come from `GeneratorOperationV2`, whether BAM's categories reach them depends on patch order, check in game. Cyanobot's Leather Overhaul: owner "2 oui ou RTI (a voir apres la sortie)": decision deferred to after the release, nothing written. Meaning of "RTI" not stated, to confirm with her at that point.
  - read 2026-11-16, item 24 patches read in the Workshop folders by id (owner yes): BOTH DO NOT FIRE on this mod. Better Architect Menu 3563882422 (`Mods and Shit/Adaptive Storage Neolithic/Patches/Adaptive Storage Neolithic Patch.xml`, 7 `PatchOperationAdd` of `designationCategory` Ferny_GeneralStorage / ResourcesStorage / FoodStorage on our defNames and parents `ASNeolithicBasketThingBase`, `ChunkStorageBase`, `LargePotThingBase`, `PlinthBase`, `TextileBundleBase`, `HayPile`, `MealShelf`, `WoodPile`) is loaded by `LoadFolders.xml` `IfModActive="Adaptive.Storage.Neolithic"`: packageId of the original, not `nelim.adaptivestorageneolithic`, and we are `incompatibleWith` the original. Cyanobot's Leather Overhaul 3419552924 (`Mods/AdaptiveStorageNeolithic/Patches/astorageneolithic_hidebundle.xml`, adds a `CYB_ASNeolithicTextileBundle_Hide` bundle with stuffCategory `CYB_Hide` and its `GraphicsDef`, textures `ASNeolithic/TextileBundle/TextileBundleLeather*`) is gated `MayRequire="adaptive.storage.neolithic"` and `LoadFolders IfModActive`: same, does not fire. Result: with our Renew mod, BAM does not file our storages in its categories and CLO adds no hide bundle. Options per row (choice is the session's, no change made yet): BAM = own gated patch in `OptionalCompat.xml` (same 7 operations, `MayRequire` on BAM's packageId and the Ferny categories), cheap; CLO = ask the author to add our packageId, or own gated patch (needs the hide-bundle textures, larger); or declare no compat.

### Ecosystem refresh 2026-11-16 (PiI, report `docs/inventory/ecosystem-steam/AdaptiveStorageNeolithicRenew.md`, 3b06fcd, own ids, no subscription)

- Verdict: no living fork, duplicate or replacement; no patch or retexture of our defs (Better Architect Menu 3563882422 is the only patch, handled by our own gated patch).
- Translations of the original 3033901895 (dead for 1.6): Russian 3201903546 (1.4 1.5), Thai 3341668276 (1.5), German 3115381045 (1.4 1.5 1.6). Our Russian already exists and stays ours; Thai and German are candidates for `localize` (AUDIT 6.c, licence or author accord and ATTRIBUTION.md needed first), not decided.
- Translation of our Renew: Simplified Chinese 3821420014 (2026-10-17, 1.6 1.7), third party, nothing to do.
- Licence check 2026-11-16 (Steam pages read in Chrome, files not downloaded): Thai 3341668276 (SLOST, 2024-10-02) and Chinese 3821420014 (WhyBlyat, 2026-10-17) state NO licence; German 3115381045 (Daedalus, updated 2025-08-15) names the original authors and the translator, no licence either. None is open, so none is integrated: AUDIT 8.0 asks an open licence or the author's accord. Options for the owner: ask each author (Steam comment, outward, needs her yes), or write our own Thai, German and Chinese texts declared in the AI sentence. Decision pending.
- Owner rule 2026-11-16: a translation is treated like any source: licence `open` or `silent` (none declared) means we integrate it (ATTRIBUTION.md, AI sentence, `/review-translation`); only `forbidden` or `alive` with a ban stops it. So the three are candidates unless their files carry a forbidding licence: PiI is subscribing to read the files (asked 2026-11-16).
- Framework-wide packs (not read): zh 3050506223, ru 3416530713 and 3531849494, Adaptive Primitive Storage zh 3403607869.
- Ecosystem refresh 2026-11-19 (PiI, for 1.2.1, report `docs/inventory/ecosystem-steam/AdaptiveStorageNeolithicRenew.md`): nothing new since 2026-11-16 aimed at our defs, no fork, duplicate, patch, retexture or new translation; Chinese 3821420014 unchanged; verdict unchanged. One optional framework addon added to the links: Adaptive Storage - Global Settings 3530785055 (1.6 1.7). Sibling modules of the framework are not ours. Nothing to do.
## What makes this sheet stale

- Run in game: fill `tested_on`, strike from `remaining` what run covered.
- Workshop upload: add the run line to `Docs/runs/pickle.md`.
- Change to `Mod/`: passes above no longer cover delivered content; say which scenarios to replay.
- Change to Defs, patches or language files: reset `localization`, `translation_en`, `translation_fr` to `unchecked` until revalidated.
