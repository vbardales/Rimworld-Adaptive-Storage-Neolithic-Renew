---
localization: complete
translation_en: complete
translation_fr: partial
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
stage:        showcase
workflow_stage: l10n
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
upstream_mod_remotes:
  - https://github.com/bbradson/Adaptive-Storage-Neolithic-Module
  - https://github.com/bbradson/Adaptive-Storage-Framework
dependencies: declared
showcase:     complete
tested_on:    2026-09-23 in the WSL; does not cover the 1.1.2 fix below, see "Stage history" and docs/runs/2026-09-23-tested-milestone.md
workshop:     3806101377
settings_audit: not_applicable
build_audit:  not_applicable (current upstream architecture has no assembly)
audit_revision: c19ce6f (2026-09-30), plus the gallery rename and docs of this audit; `Art/*.ico` untracked (owner's local folder icons)
audit_evidence: STATUS.md, "Audit under AUDIT.md — 2026-09-30"
remaining:
  - unverified: the 1.1.2 fix in game. Static checks pass (173 assertions, 2026-09-28), but no Pickle or manual run has exercised the corrected ChunkBackCompatibility.xml links or the basket filter since. Needed before `tested`.
  - unverified: the Steam copy loaded in game. The file half is automated and passes (tests/Test-SteamCopy.ps1, 2026-09-28) but is now stale against 1.1.2, not yet published. The game half is the owner's: RimWorld/Mods holds a development junction with the same packageId, so which copy loads is unchecked.
  - unverified: the adult-content boxes of the Workshop item. Owner declared, not checkable without a login.
  - open: GitHub issue #3 (performance). A Pickle benchmark passed 5/5 and did not reproduce the reported cost: 24 filled pots +0.061 ms/tick against about +0.347 reported. Not an ASF-only A/B, so it does not disprove the report. Open pending the reporter's versions, save and logs.
  - resolved 2026-09-28: dry-run of 1.1.2, run 36480335062 at 5692a96dc63bf966a3db6c29d8facda6df2a6b23. Green. Staged 205 files, 2.62 MB; change note read correctly from PUBLICATION.md section 1.1.2; no option on, nothing sent. Ready for dispatch-publish.sh with this SHA, once the game half below is done.
  - open, optional: the six gallery images on the page were cut from the run of 2026-09-22; the run of 2026-09-23 captured new frames of the same scenes. Page and Art/WorkshopScreenshots still agree byte for byte.
  - unverified, not yet uploaded: Preview.png recomposed 2026-09-29 to carry the detoured ModIcon bottom-left, `+15deg` (owner's rule, PUBLISHING.md), and Art/WorkshopScreenshots/0-preview.png added as its gallery copy (same rule). Art/render-preview.cjs passed (contrast, fonts, 686,368 bytes). Neither is live: update_preview is off by default and the gallery upload is manual. Fixed in the same pass: Art/preview.html referenced the Art/Preview.png deleted in the 2026-09-28 cleanup (STATUS.md, "Findings") and would no longer render; it now points at Preview-source.png, the file that was always the real scene.
  - scope, decided 2026-09-21 by the owner: backward compatibility with the former per-stone buildings, the original mod's refusal and the mod-list icon are checked statically, as are the architect menu, the dropdown groups, frames under construction and the inspect-pane card. A new game is not relevant: the mod adds content to an existing game. None of this is a blocker.
  - note: Russian vacstone (six entries) was written by Claude from Odyssey's own term and not reviewed by a Russian speaker. It is disclosed in the README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About description.
  - note: in French and Russian the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk"). It comes from the chunk def and upstream dropped the translation hook. Not a defect of this mod.
  - unverified: French review by Virginie. TRANSLATIONS.md's gender-agreement rule (2026-09-30) reset
    `translation_fr` to `unchecked`; this session read all 3 French DefInjected files in full (no pattern
    search), found no pawn-agreeing text and so no `{PAWN_gender ? ...}` switch needed anywhere, and
    generated `FRENCH_REVIEW.md` at the mod root by script (`_tools/Generate-FrenchReview.ps1`). Set
    `translation_fr` to `partial`: only Virginie's own reading of `FRENCH_REVIEW.md` can set it `complete`.
session:      local_db1227c9-d5d1-40e9-991f-1efee093b86b
updated:      2026-09-30
preview_audit: complete for text (recomposed 2026-09-29 with the detoured ModIcon overlay, bottom-left; contrast, fonts and size re-checked by Art/render-preview.cjs, still passes); not yet uploaded to Steam
modicon_audit: complete
---

# Adaptive Storage Neolithic Renew — status

Read by a sweep across every mod. It lives at the root, never inside `Mod/`, so Steam never receives it, and the mod's own repository tracks it.

Sections from before 2026-09-22 described the superseded Workshop-based implementation (Harmony hook, compiled DLL, per-stone generators). They were removed on 2026-09-28. Recover them with `git log -p -- STATUS.md`; the last commit that holds them is `3f4c7aa`.

## Audit under AUDIT.md — 2026-09-30

**Corrected the same day: `stage` is `showcase`, `workflow_stage` is `l10n`, not `done`.** `translation_fr` is `partial` (French review by Virginie pending), and TRANSLATIONS.md lets only `complete` translation fields enter `preTest`, so `options → l10n` fails; AUDIT.md step 12 sends the mod back to `showcase`. The first draft of this audit kept `done` by mistake. `workflow_stage` was missing and is added. Audited at `c19ce6f` (`main` = `origin/main`); the gallery rename below is uncommitted at time of writing. Nothing launched: no RimWorld, no Pickle run, no CI dispatch.

| Check | Result |
| --- | --- |
| `tests/Test-Mod.ps1`, `tests/Test-InstalledTranslations.ps1` | Re-run: 173 and 123 assertions pass. |
| `PublishedFileId.txt` / `0.1.0` | File present (`3806101377`), `## [0.1.0]` in CHANGELOG. Nothing to initialise. |
| `.dds` | 0 tracked, `*.dds` ignored. |
| Evidence | None tracked; `tests/Pickle/Evidence/` ignored, 3.5 MB, 8 folders, each the latest of its pass. Rule: `TESTING.md`, "Evidence to keep". |
| Upstream git | `bbradson/Adaptive-Storage-Neolithic-Module`, PR #4 already filed (`731e20e`). No `BACKLOG.md`: nothing pending to add. |
| Gallery naming (PUBLISHING.md: `0-`, `1-`, `2-`… one digit) | **Defect, fixed:** `00-preview.png` and `workshop-N-*.png` renamed `0-preview.png`, `1-…` to `6-…` (content unchanged, `0-` still byte-identical to `Preview.png`). `PUBLICATION.md`, `Art/PREVIEW.md` and `Art/Crop-WorkshopScreenshots.ps1` follow. The live page keeps its images; the next manual upload uses the new names. |
| Translations | Unchanged since 2026-09-30 (`FRENCH_REVIEW.md`); `translation_fr` stays `partial` until Virginie reads it. |

**To return to `done`:** Virginie reviews `FRENCH_REVIEW.md` (`translation_fr: complete`). **For `done` to `tested` (all still open):** replay in the WSL the scenarios the 1.1.2 fix touches (migration links, basket filter); no `@wip` (none today); every `@requires` scenario played on the 1.1.2 tree (all ran on 2026-09-23, on the pre-fix tree only); no manual test left (none today); `@review` captures reopened.

## Audit under AUDIT.md — 2026-09-28

**Stage stayed `published`** through this section's checks, audited at `165acb9d0f3f5353fde5338bee7ab9b1b85d54de` (`main`, identical to `origin/main`). Nothing was launched: no RimWorld, no Pickle run, no CI dispatch. The session's edits are committed as `0b1b9af`, `5009c51` and `3f4c7aa`.

**Rolled back to `done` after this audit, by a code review of the diff since `a008025` (0.1.0).** Three real findings in `Mod/`, fixed in `50b6c29` and filed upstream at PR #4 (`731e20e`): a save-migration gap for minified-and-reinstalled plinths and stacked chunks, missing the `Blueprint_Install_` link large pots already had; an inert `MayRequire` on the basket's `disallowedThingDefs` wrapper instead of its `li`; a leftover `designatorDropdown` comment. None of this was exercised by the 2026-09-23 runs, which predate the fix. Per AUDIT.md, "a relevant modification invalidates the concerned checks, not automatically every independent validation": only `stage` regresses here, not `settings_audit`, `localization` or the translation fields, which the fix does not touch. See "Stage history" for the `1.1.2` row.

Session title, per AUDIT.md: `adaptivestorageneolithic / published`, the `packageId` without its `nelim.` prefix, then the stage. Naming rule settled 2026-09-27: a `packageId` never carries `renew` (protocols repository, `PUBLISHING.md`, `95c6dfd`). This mod is the one recent port that follows it by accident: its `packageId` was fixed on 2026-09-05, before the suffix existed, and it is frozen since publication.

| Check | Result |
| --- | --- |
| `@wip` in the suite | **None.** No `.feature` file carries it. One stale sentence in the test companion's `About.xml` still said a feature did; corrected. |
| Conditional scenarios | **All ran.** 43 scenarios in 10 features, every `@requires` one played. Feature 08 and 11 in the English and Workshop passes, 05 and 06 in the `stones` pass. The `[K]Extra Stone` scenario is skipped by requirement on `wsl-deps.map` and played in the `stones` pass, `docs/runs/2026-09-23-tested-milestone.md`. |
| Manual tests left | **None.** No audio, no purely manual runtime scenario. The architect menu, frames under construction and the inspect-pane card are checked statically. |
| Russian case-sensitivity | **Closed.** The WSL is ext4, so the Russian pass of 2026-09-23 already proves the `DefInjected` folder is found on a case-sensitive filesystem. The Steam Deck is not needed. |
| `.dds` in git | **None tracked**, and `*.dds` is in `.gitignore`. The CI stages 205 files; a local staging counts 376 because the ignored `.dds` are on this disk. |
| `0.1.0` in CHANGELOG | Present (`## [0.1.0] — 2026-09-22`). `Mod/About/PublishedFileId.txt` (`3806101377`) committed at `a008025`. |
| Upstream repository | `bbradson/Adaptive-Storage-Neolithic-Module`, default branch `main`, not archived, last push 2025-02-10. The delivered tree follows its `main` at `2bc3fe4`. No pull request is proposed; nothing goes there without the owner's word. |
| Public page, read 2026-09-28 | HTTP 200, title "Adaptive Storage Neolithic Renew", API `visibility 0`. |
| Thank-you comments | **Posted.** Read live on both recipient pages under account `nelim17`, 22 Sep on the module page (3033901895) and the framework page (3033901359). The register said `drafted`; corrected and pushed in the protocols repository (`dea856b`, `5dcb0c7`). Whether the item was already public when they were posted is not established. |
| Steam copy | **The file half passes.** The owner's library holds it (`steamapps/workshop/content/294100/3806101377`, downloaded 2026-09-24, 205 files, 2,622,395 bytes, the size Steam recorded). `tests/Test-SteamCopy.ps1` finds it byte-identical to `Mod/` at tag `v1.1.1` (`037da4b`). The script was also tried on a tampered copy (4 failures), a line-endings-only copy (warning) and a missing path (skipped). |
| Evidence on disk | `tests/Pickle/Evidence/` (3.5 MB, gitignored) already held only the latest report per pass. `.build/` lost 874 MB of raw runs of the superseded implementation (2026-09-21) and an old static audit folder; nothing pointed at them. Rules are in TESTING.md, "Evidence to keep". |

**Findings, none a blocker for `published`:**

- TESTING.md listed an in-game migration pass that the decision of 2026-09-21 excludes. It now says so.
- The game half of the subscription test is not verified: `RimWorld/Mods/AdaptiveStorageNeolithicRenew` is a junction to the development tree with the same `packageId`, so the game sees two mods under one identifier. Only the owner can run it.

**Local, outside the audit chain:** `Art/ModIcon.ico` (seven sizes, cut from the 1254-pixel source) was made on the owner's request. `Art/Preview.ico` is not this session's. Neither is tracked. `docs/PROTOCOLS-READ.md` logs which protocol documents were read and which were not.

## Note from the CI/CD session — 2026-09-24

Read before the next publish. No stage change.

- **`--gallery-dir Art/WorkshopScreenshots`**: `.github/` regenerated with `--replace`, pushed as `8eeb267` (template stamp `eba6b3fdf670`, Rimworld-Release-Admin `31fe605`). The dry-run and publish logs list the six `workshop-*.png` as a reminder of the manual gallery upload; SteamCMD has one image field, so nothing is sent. Upload order stays the table of `PUBLICATION.md` section 2.
- **`docs/RELEASE_TEMPLATE.md`** (`8bf0011`): the regeneration command carries `--gallery-dir`; a `--replace` without it drops `galleryDir`.
- **Read-only check of the public page, 2026-09-24** (local dry-run of 1.1.1, all four options on): image, description (4297 bytes), title and tags (`Mod`, `1.6`) equal what the repository would send.
- **No GitHub dry-run of the regenerated workflow yet**: the first real one is the next version's, with its `## [x.y.z]` and `### x.y.z` sections.

## Stage history

| Date | Event |
| --- | --- |
| 2026-09-05 | First port of the Workshop package (Harmony hook, compiled DLL). |
| 2026-09-13 | Stage `done` after the owner accepted the icon as an exception to the object-count and 32 px guidance ("moi, j'override, je valide"). |
| 2026-09-21 | Pickle suite written (41 scenarios) and played eight times in the WSL on that implementation. Every failure was a defect of the suite. Raw reports deleted 2026-09-23; summary folded into the trim note of 2026-09-29 below (recoverable via `git log -p -- docs/runs/`). |
| 2026-09-22 | **Rolled back to `done`.** The delivered tree was replaced by the authors' current GitHub source (`bbradson/Adaptive-Storage-Neolithic-Module` `main` at `2bc3fe4`, stone-as-stuff, no assembly). The Harmony DLL and per-stone generator patches were removed, and no earlier gameplay evidence applies. |
| 2026-09-22 | Owner's decision to sprint to 1.0.0 without a retest, later superseded by the runs below. The owner created the private Workshop item by hand (`PublishedFileId.txt`, `a008025`, the `0.1.0` prepublication). Tag and release `1.0.0` stay on `8fb1177` as history of the earlier implementation and were never uploaded to Steam. |
| 2026-09-23 | **`done` to `tested`.** Suite rewritten (43 scenarios), played in the WSL, all `exitReason: passed` (below). |
| 2026-09-24 | **`tested` to `prepublished`, then `published`.** `1.1.0` uploaded by the CI: dry-run 35966977983 and publish 35967550073 at `0ab6a586cf7c0182821ad3da2f23aa71f6d8d2ab`, tag `v1.1.0`. |
| 2026-09-24 | `1.1.1`, header image only (`Mod/` identical to `1.1.0`): dry-run 35971407130 at `037da4ba3946b89a3556fbfec74bb2ad4f97bee4`, publish 35971816069, tag `v1.1.1`. The page was then read from the public page and API: item public, title, tags `Mod` and `1.6`, 2,622,395 bytes, description and header image identical to the repository, six gallery images byte-identical to `Art/WorkshopScreenshots/` in order. |
| 2026-09-28 | **Rolled back to `done`.** A code review of the diff since `0.1.0` found three real findings in `Mod/`, fixed in `50b6c29`: a save-migration gap (plinths and stacked chunks lacked the `Blueprint_Install_` compat link large pots had), an inert `MayRequire` on the basket's `disallowedThingDefs` wrapper, a leftover `designatorDropdown` comment. Also filed upstream, `bbradson/Adaptive-Storage-Neolithic-Module` PR #4 at `731e20e`. `CHANGELOG.md` and the `### 1.1.2` change note in `PUBLICATION.md` are ready; not tested in game, not built, not dry-run, not published. |
| 2026-09-29 | `docs/runs/` trimmed from 14 files to one, `2026-09-23-tested-milestone.md`: everything that still proves the published `1.1.0`/`1.1.1` tree, consolidated; superseded dev-era and pre-integration runs dropped (recoverable in `git log -p -- docs/runs/`). None of it covers the `1.1.2` fix. |
| 2026-09-29 | `Preview.png` recomposed with the detoured ModIcon bottom-left (owner's rule, `PUBLISHING.md`); `Art/WorkshopScreenshots/0-preview.png` added as its gallery copy (same rule). Fixed a break from the 2026-09-28 cleanup: `Art/preview.html` still referenced the deleted `Art/Preview.png`. Neither the new header image nor `00-` is uploaded yet; no stage change. |
| 2026-09-30 | **Rolled back to `showcase` (`l10n`)** by AUDIT.md re-run: `translation_fr` is `partial`, pending Virginie's review. `workflow_stage` added, gallery files renamed to the `0-`…`6-` scheme. |
| 2026-09-30 | French gender-agreement rule added to TRANSLATIONS.md reset `translation_fr` to `unchecked`. Read the 3 French `DefInjected` files in full; no pawn-agreeing text, no switch needed. Generated `FRENCH_REVIEW.md` by script (`_tools/Generate-FrenchReview.ps1`). `translation_fr` set to `partial`; `complete` needs Virginie's own review. No stage change. |

**The runs of 2026-09-23**, consolidated in `docs/runs/2026-09-23-tested-milestone.md` (`exitReason: passed` each):

| Pass | Scenarios | Summary |
| --- | --- | --- |
| English, `wsl-deps.map` | 01 7/7, 02 4/4, 03 8/8, 04 1/1, 08 3/3, 12 5/5 | features 01 then 02–04/08/12 |
| French, `wsl-deps.map` | 05: 4 passed, 1 skipped by requirement | third attempt, suite-side fix |
| Russian, `wsl-deps.map` | 07 2/2 | third attempt, same fix |
| Stones, English and French, Odyssey and `[K]Extra Stone` | 06 2/2; 05 and 06 7/7 | third-party andesite stone |
| Workshop captures | 11 6/6 | same six scenes as `Art/WorkshopScreenshots/` |

Every `@review` capture was opened and accepted: the two research-window captures, the pot and chunk-stack hover labels in French, English and Russian, the third-party andesite scenes and the six Workshop frames. The two defects found on the way belonged to the suite, not the mod: an ambiguous ThingDef/GraphicsDef name (`ASNeolithicPlinthStone`) and a back-compat alias in the "does not exist" check; both replayed green. The Core-only pass is not playable, since the fixture save needs the DLCs. No mod error in any kept `Player.log`.

The delivered `Mod/` tree was last changed on 2026-09-23 at 18:41, before the first run at 22:53, so these runs cover the content that was published.

## Settings audit — 2026-09-28

`not_applicable`. `Mod/` holds no assembly and no C#, and no `ModSettings`, `GetSettings`, `MainButtonDef` or `MainTabWindow` (search of `Mod/` finds none). Costs, capacities and research are authored balance data inherited from the upstream source, not options a player needs. The framework owns the display options, and a duplicate page would add nothing. There is therefore no empty options page and no shortcut. Revalidate if `Mod/` ever gains code or a settings class.

## Translation audit — 2026-09-28, French re-read 2026-09-30

`localization` and `translation_en` are `complete` for the current tree. `translation_fr` is `partial`: the
session's own checks below pass, but per TRANSLATIONS.md's "Systematic French review by Virginie"
(2026-09-30), `translation_fr` cannot be `complete` until Virginie has read the French herself. A session
never marks its own French reviewed.

- **Inventory:** labels and descriptions of `ThingDef`, `ResearchProjectDef` and `ResearchTabDef`. There is no Keyed folder and no C#, so no code-owned text.
- **English** comes from the Defs themselves, so no English language folder duplicates it.
- **French and Russian** are `DefInjected` folders under `Mod/Languages/`, spelled `DefInjected` on disk and in git. French is the gate; Russian is outside the English/French gate and its vacstone entries are unreviewed by a Russian speaker (note in `remaining`).
- **Checks:** `tests/Test-Mod.ps1` 173 assertions and `tests/Test-InstalledTranslations.ps1` 123 assertions, both re-run 2026-09-28 and passing. `Check-DefInjected.ps1` gave 118 keys and 0 errors on 2026-09-22 and was not re-run today. The French pass (feature 05) and Russian pass (feature 07) passed in game on 2026-09-23.
- **Not covered:** a third-party stone's own untranslated material name belongs to that mod.
- **French gender agreement (2026-09-30 rule):** read all 3 shipped French `DefInjected` files
  (`ResearchProjectDefs.xml`, `ResearchTabDef.xml`, `ThingDef.xml`) in full, no pattern search. None of
  the 21 texts refers to a pawn (all describe furniture); no `{PAWN_gender ? ...}` switch applies anywhere
  in this mod, and none is missing one. Confirmed by reading, not by grep, per the rule.
- **Review 2026-09-30, Virginie, revision `bc4f940`, before the fixes below:** corrections requested (not yet accepted as reviewed). Applied the same day: `HayPile` "tas de foin", `WoodPile` "tas de bûches", both plinth descriptions gain the second sentence on colonists' attention and beauty, `MealShelf` "servant à entreposer des repas", `ChunkStorage` "Un tas de rochers, constitué de rochers et soutenant d'autres rochers. Facile à réaliser et assez efficace comme abri." (her final wording) Coverage defect also fixed: `FRENCH_REVIEW.md` showed `not found` for the 5 research rows because the generator only looked in `ThingDef`; it now resolves `ResearchProjectDef` and `ResearchTabDef` (0 `not found` left). The changed French needs her re-review before `translation_fr: complete`.
- **Review file:** `FRENCH_REVIEW.md` generated at the mod root by `_tools/Generate-FrenchReview.ps1`
  (reads the shipped XML; not hand-written). Covers all 21 French texts across the 3 DefInjected files,
  Original/English columns equal throughout (mod authored in English, no separate source language).

Re-audit after any change to Defs, patches or language resources.

## Field notes

- **`stage`** uses the literal states of the AUDIT.md chain: `dansMonoRepo`, `horsMonoRepo`, `ModIcon générée`, `Preview générée`, `preOptions`, `options`, `l10n`, `preTest`, `done`, `tested`, `prepublished`, `published`.
- **`tested_on`** is the date of the last run in game. Empty means never.
- **`dependencies`**: `declared` when every mod this one needs is named in the About's `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests one that is not, `none` when it needs nothing.
- **`licence`**: `open` explicit licence, `silent` no licence and a dead source, `alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing to anyone.
- **`remaining`** kinds: `feature`, `defect`, `unverified`, plus `open`, `scope` and `note` here for undecided items, decided limits and observations.

## What makes this sheet stale

- **A run in game:** fill `tested_on`, strike from `remaining` what the run covered.
- **A Workshop upload:** add the run IDs and SHA to "Stage history".
- **A change to `Mod/`:** the runs above no longer cover the delivered content. Say which scenarios to replay.
- **A change to Defs, patches or language files:** reset `localization`, `translation_en` and `translation_fr` to `unchecked` until revalidated.
