---
localization: complete
translation_en: complete
translation_fr: complete
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
workflow_stage: playTests[1.1.3]
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
upstream_mod_remotes:
  - https://github.com/bbradson/Adaptive-Storage-Neolithic-Module
  - https://github.com/bbradson/Adaptive-Storage-Framework
dependencies: declared
showcase:     complete
tested_on:    2026-10-09 in the WSL, regression passes on 010cc34 (Mod/ unchanged since); the two `stones` passes are not played on this revision, see "Passes"
workshop:     3806101377
settings_audit: not_applicable
build_audit:  not_applicable (current upstream architecture has no assembly)
audit_revision: 2026-10-10, full re-audit against the current AUDIT.md at 92fcfaa (see "Audit 2026-10-10")
audit_evidence: STATUS.md, "Audit 2026-10-10"; journal of earlier sections in docs/runs/history.md
session:      local_ebf57a84-2e1f-4dfc-ad22-8a17d8cbac9f
updated:      2026-10-10
preview_audit: complete (header image published 2026-10-01 with 1.1.2; a newer Preview, 659,724 bytes, is in `Mod/` for 1.1.3 and goes out with `update_preview`)
modicon_audit: complete
remaining:
  - pending, 1.1.3: two `stones` passes, English `20261010-125911-194-438d` and French `20261010-125912-323-ed73` (first on this revision: the language-aware features 05 and 07 and the `[K]Extra Stone` and Odyssey `@requires` scenarios never ran on it; earlier tickets `3912` exit 139 and `3632` staging error produced no report). Evidence `tests/Pickle/Evidence/p113-<lang>-stones-92fcfaa`.
  - pending, 1.1.3: code review (AUDIT.md 8.m). `code_review_sha` is absent; the last reviews are by prose in `docs/runs/history.md` (2026-09-28 `0.1.0..` and 2026-10-05 `1.0.0..134aecd`). Review `v1.1.2..HEAD` (Mod/: Basket `drawSize`, French `ThingDef.xml`, `About.xml`, icon, Preview), then write the sha. Not done yet: it is the last step of `playTests`.
  - unverified: Basket `drawSize` `(2,2)` in game. No capture of a basket on 1.1.3 has been opened; a basket capture of the `stones` passes (feature 03 `@review`) shows it.
  - unverified: `@review` captures of the two `stones` passes, to open when they return.
  - open, decision for the owner: gallery. `Art/Gallery/` holds `0-`, `1-` to `6-` (uploaded noon series) and the accepted camp pictures `8-`, `9-`, `11-` (not uploaded). Indexes have gaps (7, 10): PUBLISHING.md wants contiguous indexes, to settle at `shootGallery`.
  - open, decision for the owner: `Art/` holds `Preview-original.png` and `shelved-textures/`, outside the minimal set of PUBLISHING.md "Images". AGENTS.md closing pass 1 deletes them; not deleted without her word (check what cites them first).
  - open, `writeDocs`: `publication_changelog_review_sha` absent, and the Steam description became the Markdown source on 2026-10-06 (reopens the review of PUBLICATION.md and CHANGELOG.md, AUDIT.md 11.j). `echo_review_sha` absent (10.a).
  - unverified: the Steam copy loaded in game. The file half is automated (tests/Test-SteamCopy.ps1) and compares against the newest tag `v1.1.2`; the game half is the owner's: `RimWorld/Mods` holds a development junction with the same packageId.
  - unverified: the adult-content boxes of the Workshop item. Owner declared, not checkable without a login.
  - open: GitHub issue #3 (performance). A Pickle benchmark passed 5/5 (again on 2026-10-09, fr perf replay) and did not reproduce the reported cost: 24 filled pots +0.061 ms/tick against about +0.347 reported. Not an ASF-only A/B. Open pending the reporter's versions, save and logs.
  - scope, decided 2026-09-21 by the owner: backward compatibility with the former per-stone buildings, the original mod's refusal (`incompatibleWith adaptive.storage.neolithic`) and the mod-list icon are checked statically, as are the architect menu, the dropdown groups, frames under construction and the inspect-pane card. No in-game pass for them, so no `incompat` map. A new game is not relevant: the mod adds content to an existing game.
  - note: Russian vacstone (six entries) was written by Claude from Odyssey's own term and not reviewed by a Russian speaker. Disclosed in the README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About description.
  - note: in French and Russian the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk"). It comes from the chunk def and upstream dropped the translation hook. Not a defect of this mod.
  - note: French validated by Virginie 2026-10-08 (corrections applied, `FRENCH_REVIEW.md` regenerated). English is upstream's and untouched.
protocols_read_sha: 0a26b474351c17123636905372a620598b216884
---

# Adaptive Storage Neolithic Renew: status

Read by a sweep across every mod. It lives at the root, never inside `Mod/`, so Steam never receives it. The journal of earlier work (audits, stage history, every run) moved verbatim to `docs/runs/history.md` on 2026-10-10; recover older text with `git log -p -- STATUS.md`.

## Where the mod stands

- **Published:** `v1.1.2` (tag at `cd28780`, Steam item `3806101377`, public). Regression of the published build was green (2026-10-02).
- **Target:** `1.1.3`, proposed (CHANGELOG `[Unreleased]`, `PUBLICATION.md` section 6). `Mod/` changes since `v1.1.2`: `About.xml` (description now generated from the Markdown source), `ModIcon.png`, `Preview.png`, `Basket/ThingDef.xml` (`drawSize` `(2,2)`), French `ThingDef.xml` (nine descriptions, Virginie's review). Nothing in `Mod/` changed since `010cc34`; later commits are documents.
- **Old vocabulary:** the previous `workflow_stage: preTest` was the old name (AUDIT.md, section 16: `preTest` maps to `writeTests`). Re-audit result: `playTests[1.1.3]`.

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
| English `stones` | `acf5` abandoned (worker died), `3912` exit 139 (no report). **Pending `438d`.** |
| French `stones` | `3632` exit 1, staging `rm: cannot remove .../3527486510/Textures: Directory not empty` (no report). **Pending `ed73`.** |
| Camp and noon series (11, 12) | gallery captures, not regression; frames played 2026-10-06 to 08. |

Reads on `exitReason` and the scenario count were done in the 2026-10-08 and 2026-10-09 journal entries (`docs/runs/history.md`).

## To leave `playTests[1.1.3]`

1. Read `438d` and `ed73` (`exitReason`, discovered against played, `@review` captures opened, basket `drawSize`); replay any red alone.
2. Code review `v1.1.2..HEAD`, write `code_review_sha`.
3. Then `shootGallery[1.1.3]`: the gallery decision of the owner (reindex, camp pictures 8, 9, 11).

## Settings audit, 2026-09-28

`not_applicable`. `Mod/` holds no assembly and no C#, and no `ModSettings`, `GetSettings`, `MainButtonDef` or `MainTabWindow`. Costs, capacities and research are authored balance data inherited from upstream, not options a player needs. The framework owns the display options. There is no empty options page and no shortcut. Revalidate if `Mod/` gains code or a settings class.

## Translation audit, 2026-09-28, French review 2026-10-08

- **Inventory:** labels and descriptions of `ThingDef`, `ResearchProjectDef`, `ResearchTabDef`. No Keyed folder, no C#, so no code-owned text. English comes from the Defs.
- **French and Russian** live in `Mod/Languages/<Language>/DefInjected/` (`ThingDef/ThingDef.xml`, `ResearchProjectDefs.xml`, `ResearchTabDef.xml` for French). Russian is outside the English and French gate; its vacstone entries are unreviewed by a Russian speaker.
- **Checks:** 173 and 123 assertions pass (2026-10-10); French pass (feature 05) and Russian pass (feature 07), language-aware, green in `7cce` and `c2a3` (2026-10-08).
- **Gender agreement:** all 21 French texts describe furniture; none refers to a pawn; no `{PAWN_gender ? ...}` switch applies (read in full, 2026-09-30, and again for the 2026-10-08 corrections).
- **French review, Virginie, 2026-10-08:** corrections applied (nine descriptions of `ThingDef.xml`), validated; `FRENCH_REVIEW.md` regenerated by `scripts/Generate-FrenchReview.ps1`. A later change to a French file resets `translation_fr` to `unchecked`.
- **Not covered:** a third-party stone's own untranslated material name belongs to that mod.

## What makes this sheet stale

- A run in game: fill `tested_on`, strike from `remaining` what the run covered.
- A Workshop upload: add the run ids and SHA to `docs/runs/history.md`.
- A change to `Mod/`: the passes above no longer cover the delivered content; say which scenarios to replay.
- A change to Defs, patches or language files: reset `localization`, `translation_en` and `translation_fr` to `unchecked` until revalidated.
