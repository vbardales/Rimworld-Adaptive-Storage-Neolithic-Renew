---
localization: complete
translation_en: complete
translation_fr: complete
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
workflow_stage: followUp[1.1.3]
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
upstream_mod_remotes:
  - https://github.com/bbradson/Adaptive-Storage-Neolithic-Module
  - https://github.com/bbradson/Adaptive-Storage-Framework
dependencies: declared
showcase:     complete
tested_on:    2026-10-10 in the WSL, stones passes 438d and 0448 on 92fcfaa (Mod/ unchanged since 010cc34); map passes of 2026-10-08, see "Passes"
workshop:     3806101377
settings_audit: not_applicable
build_audit:  not_applicable (current upstream architecture has no assembly)
audit_revision: 2026-10-10, full re-audit against the current AUDIT.md at 92fcfaa (see "Audit 2026-10-10")
audit_evidence: STATUS.md, "Audit 2026-10-10"; journal of earlier sections in docs/runs/history.md
code_review_sha: 28968101cfc28dc3b8eac7561250a4108747f6c9
session:      local_ebf57a84-2e1f-4dfc-ad22-8a17d8cbac9f
updated:      2026-10-11
preview_audit: complete (header image published 2026-10-01 with 1.1.2; a newer Preview, 659,724 bytes, is in `Mod/` for 1.1.3 and goes out with `update_preview`)
modicon_audit: complete
echo_review_sha: eb6abc006743bd96796837740b5dc567ba375959
publication_changelog_review_sha: 110a0aeac5281c0ef89f4627d99d7011692d9290
social_preview_sha256: ff352f822e42fe1f829c06dfd06cfc01f345c9be32ef8e7d5886e9ef4460e065
remaining:
  - read 2026-10-10, `stones` passes of 1.1.3 on 92fcfaa: English `438d` exit 0, `exitReason: passed`, 49 discovered, 37 passed, 12 skipped (`@requires` galleries), no failure. French `ed73` ended `in-progress` (exit 5, run died after 44 of 45 on the last camp-gallery feature), so it counts for nothing; replay `0448` without the gallery features: exit 0, `exitReason: passed`, 37 discovered = 37 played = 37 passed, 0 skipped, no exception in `Player.log`. Evidence kept: `tests/Pickle/Evidence/p113-en-stones-92fcfaa` and `p113-fr-stones-replay-92fcfaa` (summary, junit, `Player.log`, the opened captures).
  - note: the basket `drawSize` `(2,2)` is seen in game on 1.1.3 (capture of the wooden basket full, `438d`: a basket of normal size, no error).
  - unverified: `@review` captures of the `stones` passes: three opened (English: wooden basket full, third-party andesite pot in French; French replay: research window on the Stockage tab, "Stockage néolithique" and "Présentoir néolithique" read correctly). The others were deleted unopened with the raw reports; their scenarios are green and the opened ones show no defect. Decide at `shootGallery` whether more are needed.
  - done 2026-10-11 by the owner's word (not checkable without a login): upload `7-` to `9-` (camp pictures) on the Steam page by hand, in order, after `0-` to `6-` (Steam answers "file upload fail: 29" for an image already on the page: not an error). Their raw frames are deleted.
  - done 2026-10-10, `prepareRelease` 12.e: owner rule, the dry-run starts with the date commit: `## [Unreleased]` became `## [1.1.3] - 2026-10-11` (day of the dry-run; corrected from 10-10 because the dry-run slipped to the next day) and the SHA of that commit goes to the dry-run. A slipped day means a corrected date, a new commit and a new dry-run. Change of AUDIT.md 12.e requested from the workflow-conventions session.
  - done 2026-10-11, `prepareRelease` 12.a to 12.f re-read: 12.a no `Mod/` commit since `code_review_sha` (`2896810`); 12.b `About.xml` has no dependency, `loadAfter`, `incompatibleWith` or `supportedVersions` change since `v1.1.2` (description text only); 12.c `Check-Status.ps1` 0 error, 0 warning; 12.d working tree clean, `main` equals `origin/main`, no assembly; 12.e dry-run run `38090129117` green on `e47cceb353b3d0427ebd3ca3f19f5b7e3878428e` (`update_preview`, `update_description`); 12.f every red test replayed green alone (`0448` for `ed73`, `6462` for `7cce`), gallery accepted by the owner, guardrails held by the dry-run. Rollback target chosen before publishing: `v1.1.2` (`cd28780`, regression green 2026-10-02).
  - done 2026-10-11, `publish` 13.a and 13.b: `publish[1.1.3]` committed (`655676b`), `dispatch-publish.sh --preview --description` on `e47cceb353b3d0427ebd3ca3f19f5b7e3878428e`, run `38092165205` approved by the owner on `steam-production`, jobs `publish` and `tag-and-release` success; tag `v1.1.3` at `e47cceb`, release published. Item `3806101377` unchanged, `About/PublishedFileId.txt` already committed. `USE_THIS_INSTEAD.md` row `drafted`, comment in `PUBLICATION.md` section 4.
  - done 2026-10-11, `publish` 13.b: the owner posted the Use This Instead comment on Mlie's page (3396308787); row `posted`.
  - open, `followUp` 14.a: non-regression Pickle passes on the published build (`e47cceb`), small tickets; 14.b comments.
  - done 2026-10-10, `writeDocs` 11.b and 11.h (protocol of 2026-10-10): `THANKS` now names `[K]Extra Stone` (Kuratheris) and the 15 mods that the `stones` and camp passes stage, all linked and none a dependency: Female Body and Apparel Variants Continued, WDI's Realistic Bodies, TailorMade and the Facial Animation Performance Patch (astryl), Facial Animation WIP and Experimentals (Nals), VTE Facial Animation, Akeron Extras Facial Animations, Vanilla Experimentals for Facial Animation, EyeGenes3, Mud's Tribal Apparel, ETRT Tribal Apparel (continued) (qux, Evil Tactician, Ogam), Vanilla Expanded Framework and VFE Props and Decor. The `About.xml` description was regenerated from the block (`sync-about-description.mjs`, in sync). Authors come from each installed About.xml; only the ETRT page was read (Chrome). Fifteen drafts in `PUBLICATION.md` section 4, fifteen `drafted` rows in `WORKSHOP_COMMENTS.md` (protocols repository, uncommitted there), Vanilla Expanded Framework's `Covers` extended. The Steam page keeps the old description until a CI `update_description`. Follow-ups after the owner's review (2026-10-10): `french-review-english.json` resolves the inherited English of baskets, pots, plinths and bundles, so `FRENCH_REVIEW.md` has no empty Original or English cell; the `PUBLICATION.md` opening and "Current state" say published 1.1.2 and 1.1.3 in preparation, and the gallery paragraph says nine pictures; Venus Touch Waistlines (the owner's own project, staged by the camp pass) is added to the camp credits with its GitHub link; the compatibility sentence is reworded; the wood pile wording is an upstream proposal in `BACKLOG.md`, not filed.
  - done 2026-10-10, `writeDocs` 11.j: the owner reviewed `PUBLICATION.md` and `CHANGELOG.md` (after the Steam description became the Markdown source on 2026-10-06) and confirmed in chat ("validé"); `publication_changelog_review_sha` is the reviewed commit `110a0ae`.
  - done 2026-10-11, `followUp` 14.b: the 15 comments posted by the owner (her word, 2026-10-11); rows `posted` in `WORKSHOP_COMMENTS.md`.
  - open, `publish` (AUDIT.md 13.b, 2026-10-10): public Renew mod, so a `drafted` row goes into `USE_THIS_INSTEAD.md` (old item Adaptive Storage Neolithic Module 3033901895, new item 3806101377, names, authors, packageIds, versions). Virginie posts one comment on Mlie's Workshop page (3396308787); the session writes it in BBCode in `PUBLICATION.md` and hands it to her as a numbered orange step with the clickable link. Row statuses: drafted, posted, not_applicable. The register has no row for this mod yet.
  - unverified: the Steam copy loaded in game. The file half is automated (tests/Test-SteamCopy.ps1) and compares against the newest tag `v1.1.2`; the game half is the owner's: `RimWorld/Mods` holds a development junction with the same packageId.
  - unverified: the adult-content boxes of the Workshop item. Owner declared, not checkable without a login.
  - open: GitHub issue #3 (performance). A Pickle benchmark passed 5/5 (again on 2026-10-09, fr perf replay) and did not reproduce the reported cost: 24 filled pots +0.061 ms/tick against about +0.347 reported. Not an ASF-only A/B. Open pending the reporter's versions, save and logs.
  - scope, decided 2026-09-21 by the owner: backward compatibility with the former per-stone buildings, the original mod's refusal (`incompatibleWith adaptive.storage.neolithic`) and the mod-list icon are checked statically, as are the architect menu, the dropdown groups, frames under construction and the inspect-pane card. No in-game pass for them, so no `incompat` map. A new game is not relevant: the mod adds content to an existing game.
  - note: Russian vacstone (six entries) was written by Claude from Odyssey's own term and not reviewed by a Russian speaker. Disclosed in the README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About description.
  - note: in French and Russian the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk"). It comes from the chunk def and upstream dropped the translation hook. Not a defect of this mod.
  - note: French validated by Virginie 2026-10-08 (corrections applied, `FRENCH_REVIEW.md` regenerated). English is upstream's and untouched.
protocols_read_sha: a5c7cf48b349ae00e7d28fd643e852dc860dfaf2
---

# Adaptive Storage Neolithic Renew: status

Read by a sweep across every mod. It lives at the root, never inside `Mod/`, so Steam never receives it. The journal of earlier work (audits, stage history, every run) moved verbatim to `docs/runs/history.md` on 2026-10-10; recover older text with `git log -p -- STATUS.md`.

## Where the mod stands

- **Published:** `v1.1.3` (2026-10-11, tag at `e47cceb`, run `38092165205`, Steam item `3806101377`, public). Previous `v1.1.2` (`cd28780`) is the rollback target; its regression was green (2026-10-02).
- **Target:** `1.1.3`, proposed (CHANGELOG `[Unreleased]`, `PUBLICATION.md` section 6). `Mod/` changes since `v1.1.2`: `About.xml` (description now generated from the Markdown source), `ModIcon.png`, `Preview.png`, `Basket/ThingDef.xml` (`drawSize` `(2,2)`), French `ThingDef.xml` (nine descriptions, Virginie's review). Nothing in `Mod/` changed since `010cc34`; later commits are documents.
- **Old vocabulary:** the previous `workflow_stage: preTest` was the old name (AUDIT.md, section 16: `preTest` maps to `writeTests`). Re-audit result: `playTests[1.1.3]`; left for `shootGallery[1.1.3]` on 2026-10-10 (stones passes green, code review done).

## Audit 2026-10-10

Audited at `92fcfaa` (`main`). Nothing launched by this session: no RimWorld, no CI dispatch; two Pickle tickets deposited through the Ticket Manager.

| Check | Result |
| --- | --- |
| `tests/Test-Mod.ps1` | Re-run under `pwsh`: 173 assertions pass (under Windows PowerShell 5.1 the script cannot run: `GetRelativePath`). |
| `tests/Test-InstalledTranslations.ps1` | Re-run: 123 pass. |
| `tests/Pickle/Source/Build.ps1` | Builds (CS1684 `Span` warnings only). The rebuilt DLL differs in bytes from the tracked one and was restored with `git checkout`; no source change. |
| Scenarios written (7.a, 7.d) | 11 feature files in `tests/Pickle/Mod/Pickle/Features/`, plan in `TESTING.md`; no `TEST_SCENARIOS.md` (the Gherkin features and `TESTING.md` play that role). `@requires` scenarios have their maps (`wsl-deps.stones.map`, `wsl-deps.sanctuary.map`, `wsl-deps.camp.map`). |
| Translations (7.g) | `complete` x3; French validated 2026-10-08 (`translation_fr`). `FRENCH_REVIEW.md` regenerated that day. |
| Settings | `not_applicable`: no C#, no `ModSettings`, no `MainButtonDef` in `Mod/` (revalidated 2026-09-28; `Mod/` has had no code since). |
| `About.xml` | `packageId`, framework dependency with Workshop id, `loadAfter`, `incompatibleWith`, author `Soul, Phaneron, bradson - 1.6 adapted by Nelim`: consistent. No em dash. |
| Steam description (11.a, 11.b) | Single Markdown source in `PUBLICATION.md`; sections in the required order; ends with `[Source code on GitHub]`. Not rechecked against the live page this session. |
| Lint | `Check-Status.ps1`: 0 error; the warnings (retired `stage`, `preTest` vocabulary, `protocols_read_sha`, 74 KB size) are cleared by this rewrite and `Mark-ProtocolsRead.ps1`. |
| Mod root | `.git`, `.github`, `.gitignore`, `.gitattributes`, plus the ignored `.claude/`, `node_modules/`, `package*.json`, `desktop.ini`. `PREVIEW.md` is a tracked document. |

**Retained state: `playTests[1.1.3]`.** Cumulative criteria through `writeTests` hold. `playTests` stays open on the points under `remaining`: the `stones` passes, the `@review` captures, the code review (8.m).

## Passes (1.1.3, Mod/ tree of `010cc34`)

| Pass | Result |
| --- | --- |
| English `map`, `751e` | exit 0, 49 scenarios, 34 passed, 15 skipped (`@requires`). |
| French `map`, `7cce` | exit 1: one timeout of a 1200-tick wait in `12-performance-regression` on a loaded host; replayed alone, `6462`, exit 0, 5/5. No French assertion failed. |
| Russian `map`, `c2a3` | exit 0, 49 scenarios, 34 passed, 15 skipped. |
| English `stones`, `438d` | exit 0, `passed`, 49 scenarios, 37 passed, 12 skipped. |
| French `stones`, `0448` | exit 0, `passed`, 37 of 37 passed (replay without the gallery features; `ed73` was `in-progress` and is superseded). |
| Camp and noon series (11, 12) | gallery captures, not regression; frames played 2026-10-06 to 08. |

Reads on `exitReason` and the scenario count were done in the 2026-10-08 and 2026-10-09 journal entries (`docs/runs/history.md`).

## Left `playTests[1.1.3]` and `shootGallery[1.1.3]` (2026-10-10), `mountPreview[1.1.3]` (2026-10-10), now: `writeDocs[1.1.3]`

1. Done 2026-10-10: `438d` and `0448` read, green. Nothing left to replay.
2. Code review `v1.1.2..HEAD`: done 2026-10-10, no defect, `code_review_sha` written.
3. `shootGallery[1.1.3]` (AUDIT.md step 9): the session directs the gallery (GALLERY.md, read 2026-10-10). Decided 2026-10-10: the three camp pictures the owner accepted on 2026-10-08 join the noon series as `7-` to `9-`, one story (the same noon, the tribe comes to the same storage), indexes contiguous.

## Preview (AUDIT.md step 10), 2026-10-10

- **Echo (10.a): kept.** `Art/echo.png` is a line-art basket full of wheat (drawn blue on the Preview). The gallery shows baskets that fill up, pots, stacks and plinths: the basket full of grain says the mod's promise (a container shows what is inside) and still matches. No real mismatch, and an accepted Preview is not reopened for taste. `echo_review_sha` = `eb6abc0` (the commit that fixed the accepted gallery).
- **Render (10.b to 10.d), read from the file, not from a renderer log:** `Mod/About/Preview.png` 896 x 504, 659,724 bytes (under 1 MiB); `Art/Gallery/0-preview.png` byte-identical (`cmp`). Contrast measured on the final PNG, ink `#F2ECE1` on the panel: title 6.25:1, summary 5.18:1 (floor 4.5). The suffix "Renew" (secondary ink, partly over the echo strokes) could not be measured cleanly by this crude sampling; it reads clearly at 896 px and at 268 px (thumbnail opened: title, rule and summary legible, nothing cut or overlapping, version badge `1.6` top right, icon bottom-left). Same Preview as published with 1.1.2 text and layout; only the icon and image were refreshed 2026-10-05.
- **Clean (10.e):** deleted `Art/Preview-original.png` (first generated version, a visual trace) and `Art/shelved-textures/` (nine upstream textures the mod never loaded); both recoverable in git (`eb6abc0`). `Art/` now holds the minimal set: `ModIcon-source.png`, `Preview-source.png`, `echo.png`, `Preview.config.json`, `ModIcon.ico`, `Preview.ico`, `Gallery/`, `.render/` (ignored). Mod root: only ignored extras.
- **Social preview (10.f): done 2026-10-10.** Uploaded by the session through Chrome on the owner's word ("fais le"); `og:image` re-read and downloaded: 659,724 bytes, sha256 equal to `Mod/About/Preview.png`, recorded in `social_preview_sha256`.

## Gallery (AUDIT.md 9.e), 2026-10-10

Folder 4.98 MB (4,975,714 bytes, ten files) of 8, largest image 0.66 MB of 2. Every image opened: `1-` to `6-` in the 2026-10-06 and 2026-10-08 reads, `7-` to `9-` re-opened on 2026-10-10 (known flaw, accepted by the owner: a thin strip of flowers along the left edge, the border of the place `bare-clearing`).

| # | File | Story and place | Why here |
| --- | --- | --- | --- |
| 0 | `0-preview.png` | header image | byte copy of `Mod/About/Preview.png` |
| 1 | `1-the-whole-set.png` | noon at the storehouse, `calm-zone-close` | most demonstrative: the whole set with its contents; Steam shows it large right after the header |
| 2 | `2-a-basket-fills-up.png` | same, 12:05, squirrel | the mod's central promise: a container shows what it holds |
| 3 | `3-chunk-stacks.png` | same, 12:10, hare | stone-as-stuff stacks at several levels, two materials |
| 4 | `4-large-pots.png` | same, 12:15, dog | pots with different foods |
| 5 | `5-plinths.png` | same, 12:20, peacock | plinths showing items |
| 6 | `6-a-stone-from-another-mod.png` | same, 12:25, cat | integration: a third-party stone beside granite |
| 7 | `7-three-baskets.png` | the camp, `bare-clearing` | the tribe at the same storage: baskets empty, one item, full |
| 8 | `8-fuel-and-stone.png` | the camp | wood and hay piles, granite and marble stacks |
| 9 | `9-the-tribes-treasures.png` | the camp | plinths with the chief: the display side of the mod |

Index and table aligned in `PUBLICATION.md` section 2.

## Code review, 2026-10-10 (AUDIT.md 8.m)

Range `v1.1.2..HEAD` (`949973b`): whole diff of `Mod/`; no `Source/` (the mod has no assembly). Earlier ranges: 2026-09-28 (`0.1.0..`, three findings fixed in 1.1.2) and 2026-10-05 (`1.0.0..134aecd`, the `drawSize` finding).

- `Basket/ThingDef.xml` `drawSize` `(2)` to `(2,2)`: correct. About 90 other `drawSize` in `Mod/Defs` and the basket's own `GraphicsDef.xml` use two components. The basket capture of `438d` shows a basket of normal size; no mod error in the `Player.log` of the pass.
- French `ThingDef.xml`, nine descriptions: validated by Virginie 2026-10-08; XML valid, keys unchanged, no pawn text; `Test-InstalledTranslations.ps1` 123 pass.
- `About.xml`: description is the plain-text form of the Markdown block (`sync-about-description.mjs --check`: already in sync); packageId, dependency and `incompatibleWith` unchanged.
- `ModIcon.png`, `Preview.png`: binary outputs of the owner's sources, not code.

No defect. A commit of `Mod/` after this sha reopens the review and `playTests`.

Addendum 2026-10-10, `0309c0d`: the only `Mod/` change since is `About.xml`, whose description was regenerated from `PUBLICATION.md` with the new `THANKS` paragraphs (4 added lines, plain text). Read: the `&` of "TailorMade: Unified Apparel & Body Refitting" is escaped (`&amp;`), the XML parses, `Test-Mod.ps1` 173 pass, description 6,193 characters (Steam limit 8,000). No defect; `code_review_sha` moved to that commit. Second addendum, `2896810`: `About.xml` again, description only (the compatibility sentence reworded as the owner asked, Venus Touch Waistlines added to the camp credits); XML parses, `Test-Mod.ps1` 173 pass. No defect; `code_review_sha` moved there.

## Settings audit, 2026-09-28

`not_applicable`. `Mod/` holds no assembly and no C#, and no `ModSettings`, `GetSettings`, `MainButtonDef` or `MainTabWindow`. Costs, capacities and research are authored balance data inherited from upstream, not options a player needs. The framework owns the display options. There is no empty options page and no shortcut. Revalidate if `Mod/` gains code or a settings class.

## Translation audit, 2026-09-28, French review 2026-10-08

- **Inventory:** labels and descriptions of `ThingDef`, `ResearchProjectDef`, `ResearchTabDef`. No Keyed folder, no C#, so no code-owned text. English comes from the Defs.
- **French and Russian** live in `Mod/Languages/<Language>/DefInjected/` (`ThingDef/ThingDef.xml`, `ResearchProjectDefs.xml`, `ResearchTabDef.xml` for French). Russian is outside the English and French gate; its vacstone entries are unreviewed by a Russian speaker.
- **Checks:** 173 and 123 assertions pass (2026-10-10); French pass (feature 05) and Russian pass (feature 07), language-aware, green in `7cce` and `c2a3` (2026-10-08).
- **Gender agreement:** all 21 French texts describe furniture; none refers to a pawn; no `{PAWN_gender ? ...}` switch applies (read in full, 2026-09-30, and again for the 2026-10-08 corrections).
- **French review, Virginie, 2026-10-08:** corrections applied (nine descriptions of `ThingDef.xml`), validated; `FRENCH_REVIEW.md` regenerated by `scripts/Make-FrenchReview.ps1` (protocols repository). A later change to a French file resets `translation_fr` to `unchecked`.
- **Not covered:** a third-party stone's own untranslated material name belongs to that mod.

## What makes this sheet stale

- A run in game: fill `tested_on`, strike from `remaining` what the run covered.
- A Workshop upload: add the run ids and SHA to `docs/runs/history.md`.
- A change to `Mod/`: the passes above no longer cover the delivered content; say which scenarios to replay.
- A change to Defs, patches or language files: reset `localization`, `translation_en` and `translation_fr` to `unchecked` until revalidated.
