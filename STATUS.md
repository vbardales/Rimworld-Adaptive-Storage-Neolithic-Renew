---
localization: complete
translation_en: complete
translation_fr: complete
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
workflow_stage: shootGallery[1.1.3]
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
code_review_sha: 949973b00882b03a1f02e60cef075aa58f144e1a
session:      local_ebf57a84-2e1f-4dfc-ad22-8a17d8cbac9f
updated:      2026-10-10
preview_audit: complete (header image published 2026-10-01 with 1.1.2; a newer Preview, 659,724 bytes, is in `Mod/` for 1.1.3 and goes out with `update_preview`)
modicon_audit: complete
remaining:
  - read 2026-10-10, `stones` passes of 1.1.3 on 92fcfaa: English `438d` exit 0, `exitReason: passed`, 49 discovered, 37 passed, 12 skipped (`@requires` galleries), no failure. French `ed73` ended `in-progress` (exit 5, run died after 44 of 45 on the last camp-gallery feature), so it counts for nothing; replay `0448` without the gallery features: exit 0, `exitReason: passed`, 37 discovered = 37 played = 37 passed, 0 skipped, no exception in `Player.log`. Evidence kept: `tests/Pickle/Evidence/p113-en-stones-92fcfaa` and `p113-fr-stones-replay-92fcfaa` (summary, junit, `Player.log`, the opened captures).
  - note: the basket `drawSize` `(2,2)` is seen in game on 1.1.3 (capture of the wooden basket full, `438d`: a basket of normal size, no error).
  - unverified: `@review` captures of the `stones` passes: three opened (English: wooden basket full, third-party andesite pot in French; French replay: research window on the Stockage tab, "Stockage néolithique" and "Présentoir néolithique" read correctly). The others were deleted unopened with the raw reports; their scenarios are green and the opened ones show no defect. Decide at `shootGallery` whether more are needed.
  - open, decision for the owner: gallery. `Art/Gallery/` holds `0-`, `1-` to `6-` (uploaded noon series) and the accepted camp pictures `8-`, `9-`, `11-` (not uploaded). Indexes have gaps (7, 10): PUBLISHING.md wants contiguous indexes, to settle at `shootGallery`.
  - open, decision for the owner: `Art/` holds `Preview-original.png` and `shelved-textures/`, outside the minimal set of PUBLISHING.md "Images". AGENTS.md closing pass 1 deletes them; not deleted without her word (check what cites them first).
  - open, `prepareRelease` (AUDIT.md 12.e, 2026-10-10): `## [Unreleased]` stays on top of CHANGELOG.md until the dry-run; just before it, it becomes `## [1.1.3] - <planned send date>` in the commit whose SHA goes to the dry-run. A slipped date means a corrected date, a new commit and a new dry-run.
  - open, `writeDocs`: `publication_changelog_review_sha` absent, and the Steam description became the Markdown source on 2026-10-06 (reopens the review of PUBLICATION.md and CHANGELOG.md, AUDIT.md 11.j). `echo_review_sha` absent (10.a).
  - defect, `writeDocs` (protocol of 2026-10-10, PUBLISHING.md "Remerciements", AUDIT.md 11.b and 11.h): `[K]Extra Stone` (Kura.ExtraStone, Workshop 852103845) is exercised by the `stones` pass, so its author belongs in `THANKS` and its recipient in the `WORKSHOP_COMMENTS.md` register. `PUBLICATION.md` section 4 still calls it "only a test fixture". The mods staged for the camp pictures (8, 9, 11) join the same rule if those pictures are published. A `THANKS` change reopens the review of 11.j.
  - open, `publish` (AUDIT.md 13.b, 2026-10-10): public Renew mod, so a `drafted` row goes into `USE_THIS_INSTEAD.md` (old item Adaptive Storage Neolithic Module 3033901895, new item 3806101377, names, authors, packageIds, versions). Virginie posts one comment on Mlie's Workshop page (3396308787); the session writes it in BBCode in `PUBLICATION.md` and hands it to her as a numbered orange step with the clickable link. Row statuses: drafted, posted, not_applicable. The register has no row for this mod yet.
  - unverified: the Steam copy loaded in game. The file half is automated (tests/Test-SteamCopy.ps1) and compares against the newest tag `v1.1.2`; the game half is the owner's: `RimWorld/Mods` holds a development junction with the same packageId.
  - unverified: the adult-content boxes of the Workshop item. Owner declared, not checkable without a login.
  - open: GitHub issue #3 (performance). A Pickle benchmark passed 5/5 (again on 2026-10-09, fr perf replay) and did not reproduce the reported cost: 24 filled pots +0.061 ms/tick against about +0.347 reported. Not an ASF-only A/B. Open pending the reporter's versions, save and logs.
  - scope, decided 2026-09-21 by the owner: backward compatibility with the former per-stone buildings, the original mod's refusal (`incompatibleWith adaptive.storage.neolithic`) and the mod-list icon are checked statically, as are the architect menu, the dropdown groups, frames under construction and the inspect-pane card. No in-game pass for them, so no `incompat` map. A new game is not relevant: the mod adds content to an existing game.
  - note: Russian vacstone (six entries) was written by Claude from Odyssey's own term and not reviewed by a Russian speaker. Disclosed in the README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About description.
  - note: in French and Russian the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk"). It comes from the chunk def and upstream dropped the translation hook. Not a defect of this mod.
  - note: French validated by Virginie 2026-10-08 (corrections applied, `FRENCH_REVIEW.md` regenerated). English is upstream's and untouched.
protocols_read_sha: b4a73cf0998fa5914b1d5e52b0817a8fe77abab3
---

# Adaptive Storage Neolithic Renew: status

Read by a sweep across every mod. It lives at the root, never inside `Mod/`, so Steam never receives it. The journal of earlier work (audits, stage history, every run) moved verbatim to `docs/runs/history.md` on 2026-10-10; recover older text with `git log -p -- STATUS.md`.

## Where the mod stands

- **Published:** `v1.1.2` (tag at `cd28780`, Steam item `3806101377`, public). Regression of the published build was green (2026-10-02).
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

## Left `playTests[1.1.3]` (2026-10-10), next: `shootGallery[1.1.3]`

1. Done 2026-10-10: `438d` and `0448` read, green. Nothing left to replay.
2. Code review `v1.1.2..HEAD`: done 2026-10-10, no defect, `code_review_sha` written.
3. Then `shootGallery[1.1.3]`: the gallery decision of the owner (reindex, camp pictures 8, 9, 11).

## Code review, 2026-10-10 (AUDIT.md 8.m)

Range `v1.1.2..HEAD` (`949973b`): whole diff of `Mod/`; no `Source/` (the mod has no assembly). Earlier ranges: 2026-09-28 (`0.1.0..`, three findings fixed in 1.1.2) and 2026-10-05 (`1.0.0..134aecd`, the `drawSize` finding).

- `Basket/ThingDef.xml` `drawSize` `(2)` to `(2,2)`: correct. About 90 other `drawSize` in `Mod/Defs` and the basket's own `GraphicsDef.xml` use two components. The basket capture of `438d` shows a basket of normal size; no mod error in the `Player.log` of the pass.
- French `ThingDef.xml`, nine descriptions: validated by Virginie 2026-10-08; XML valid, keys unchanged, no pawn text; `Test-InstalledTranslations.ps1` 123 pass.
- `About.xml`: description is the plain-text form of the Markdown block (`sync-about-description.mjs --check`: already in sync); packageId, dependency and `incompatibleWith` unchanged.
- `ModIcon.png`, `Preview.png`: binary outputs of the owner's sources, not code.

No defect. A commit of `Mod/` after this sha reopens the review and `playTests`.

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
