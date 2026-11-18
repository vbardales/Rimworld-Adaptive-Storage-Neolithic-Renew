---
localization: complete
translation_en: complete
translation_fr: complete
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
workflow_stage: writeReleaseDocs[1.2.0]
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
tested_on:    2026-11-16 pickle 093fc9f (1.7 en map 51fc green 23/23; 1.6 stones en 5406 green 30/30; Russian 6e7f green 2/2; BAM 37cc red 0/3, patch never fired); earlier 2026-11-07 pickle 3280d85 (1.7 en map cd58 green, 23 passed 2 skipped); 1.6 stones passes of 2026-10-10 on 92fcfaa, see "Passes"
workshop:     3806101377
settings_audit: not_applicable
build_audit:  not_applicable (current upstream architecture has no assembly)
audit_revision: 2026-10-10, full re-audit against the current AUDIT.md at 92fcfaa (see "Audit 2026-10-10")
audit_evidence: STATUS.md, "Audit 2026-10-10"; journal of earlier sections in Docs/runs/history.md
code_review_sha: afdec0270443038abae7c38bf613136359db66e2
session:      local_73e7e49e-129a-4737-8603-ae05c7dafecf
updated:      2026-11-17
thanks_drafted_line: 1.2
preview_audit: complete (header image published 2026-10-01 with 1.1.2; a newer Preview, 659,724 bytes, is in `Mod/` for 1.1.3 and goes out with `update_preview`)
modicon_audit: complete
echo_review_sha: e6ffabcf077ff792c1b91bd2266f94ccae18c939
publication_changelog_review_sha: d209863bb67aeea4d0284d47aaf352373882a111
social_preview_sha256: 00e908d974d71662e1bd0a2cbf4345628902f4aa3f9ffd77efea1128d0663271
remaining:
  - done 2026-11-18, compress-docs (AUDIT 12.c bis): compressed `Tests/Pickle/README.md` (7,252 to 6,413 bytes, diff read: inline code, paths and URLs intact, no em dash; backup kept out of the repository, in the scratchpad, because the default backup folder `caveman-compress/backups/Pickle/` already held another mod's README backup, left untouched). Skipped: `BACKLOG.md`, `TESTING.md`, `Docs/PROTOCOLS-READ.md` (already in caveman style), `STATUS.md` (already terse, journal folded), `Docs/PROMPT_*.md` (image-generation prompt), `Docs/review-refusals.md` (sent to ChatGPT with every review page), `Docs/RELEASE_TEMPLATE.md` (template), `Docs/runs/` (journal). Restored after diff review: none.
  - done 2026-11-18, closing pass (prepare-release): 1 `Art/` holds only ModIcon-source, ModIcon.ico, Preview-source, Preview.config.json, Preview.ico, echo-source, Gallery, Gallery-clean, .render; 3 mod root only the closed list plus ignored extras; 2 `supportedVersions` unchanged (1.6), no Preview redo; 4 gallery validated 2026-11-17; 5 PUBLICATION.md sizes and thanks current; 6 `/review-translation` page 1 clean after three rounds; 7 docs corrected; 8 `code_review_sha` at afdec02; 9 lint: STATUS.md journal folded to `Docs/runs/history.md` (81 KB, ERROR over 80, now 46 KB, WARN over 40 remains), no other ERROR. Next: compress-docs, commit, push.
  - done 2026-11-18, 8.m on the text diff `fe9f283..afdec02` (4 files of `Mod/`: `ATTRIBUTION.md`, `About.xml`, two Chinese `ThingDef.xml` descriptions; read by the session, as on 2026-11-17 for a text-only diff): About XML closed, no em dash, no version number in the description, 7,178 characters, Chinese tags balanced, `Check-ModBasics` PASS (its WARN about the GitHub link at the end of the description is older than this diff). No defect, `code_review_sha` moved to `afdec0270443038abae7c38bf613136359db66e2`. Next: 12.c lint, compress-docs, prepare-release, STATUS.md journal move.
  - done 2026-11-18, 11.j: owner validated the reread of the description, update note and CHANGELOG ("je valide la relecture") at `d209863bb67aeea4d0284d47aaf352373882a111` (description with the 13 gallery mods in THANKS, Chinese credit WhyBlyat); `publication_changelog_review_sha` moved there. Next: 8.m diff review of `Mod/`, 12.c lint, compress-docs, prepare-release, STATUS.md journal move.
  - done 2026-11-18, `/review-translation` round 3 of page 1: nothing to apply (no missing key, no proper noun, no upstream PR), `record-round -Applied 0` answered "1/1 pages clean": translation review finished. Notes kept: Russian, Thai and Chinese still unchecked by a speaker (disclosed in the description and CHANGELOG).
  - done 2026-11-18, owner "go": camp gallery mods credited. Drafts for 13 mods of `wsl-deps.camp.map` that no posted comment covered (8 second messages on pages already thanked, 5 first messages: Fashion RIMsta, Fairycore Apparel 2, Cuter Kids, Vanilla Hair Expanded, Vanilla Apparel Expanded; authors from About.xml via PiI, page creators to check before posting) in `PUBLICATION.md` section 4, rows in `WORKSHOP_COMMENTS.md` (`drafted`). Description THANKS names all of them; the 28 Workshop links moved to a new `ATTRIBUTION.md` section "Mods used to stage the gallery" (root and `Mod/`) because the About description hit 9,223 characters, over the 8,000 limit (now 7,345). About.xml synced with `sync-about-description.mjs --write`. Mud's Tribal Apparel, ETRT and TailorMade removed from THANKS and from the ATTRIBUTION gallery list (owner, 2026-11-18, "if not used, no point": absent from `wsl-deps.camp.map` and from feature 12, which dresses both with vanilla `Apparel_TribalA`); their comments posted 2026-10-11 stay, register rows unchanged. About description now 7,178 characters. `code_review_sha` stays reopened, `publication_changelog_review_sha` stale (her 11.j reread).
  - done 2026-11-18, owner decided the Chinese credit: WhyBlyat (page 3821420014 read in Chrome: creator WhyBlyat, no other name on it). "Holarula" replaced by WhyBlyat in `ATTRIBUTION.md` (root and `Mod/`, the "listed under the Steam account" half-sentence dropped), `Mod/About/About.xml` (description, two lines), `PUBLICATION.md` (description, THANKS, comment header, 1.2.0 note) and CHANGELOG `[Unreleased]`; register row 3821420014 updated. `Mod/About/About.xml` changed (text only): `code_review_sha` stays reopened (text-only diff review at HEAD), `publication_changelog_review_sha` stays stale (11.j reread by her). Chinese thanks draft already named WhyBlyat.
  - done 2026-11-18, `/review-translation` round 2 of page 1 (4 points: 1 applied, 3 checks with nothing to change, no proper noun, no upstream PR owed): `PUBLICATION.md` "Current state" gallery paragraph rewritten (old 3.43 and 4.98 MB figures replaced by the 3,752,807 bytes of section 2, new series not yet uploaded). Round recorded (`-Applied 1`): run `/review-translation 1` once more, a round with nothing applied turns the page green. Chinese credit (WhyBlyat or Holarula) still open for her, Chrome extension was not connected for the page check.
  - done 2026-11-18, `/review-translation` round 1 of page 1 (4 recommendations: 3 applied, 1 held, 0 proper nouns to decide, `french_review_pending` already absent): Chinese Simplified and Traditional `ASNeolithicChunkStorage.description` restored to the "stack of chunks that supports other chunks" image (as in German, French, Russian, Thai); CHANGELOG `[Unreleased]` and `PUBLICATION.md` section 6 now say the 1.7 Pickle run is green (23 of 23, 2026-11-16) and that `<li>1.7</li>` goes in at publication. HELD for her: Chinese credit, WhyBlyat (page creator) or Holarula (our files), changes `PUBLICATION.md` LANGUAGES, thanks draft, `ATTRIBUTION.md`, CHANGELOG. `Mod/` changed (two label files, text only): `code_review_sha` reopened, text-only diff review at HEAD before `writeReleaseDocs` closes; no run owed. Round recorded (`-Applied 3`): run `/review-translation 1` again until a round applies nothing. `Check-Translations` PASS, `TRANSLATION_REVIEW.md` regenerated.
  - done 2026-11-18, resume after sleep (protocols read ab75519b, TM registered, no archived session of this mod, no Preview redo owed: `Preview.png` committed 2026-11-17): `PUBLICATION.md` section 2 byte sizes refreshed from `Art/Gallery/` (folder 3,752,807 bytes, `0-preview.png` and `Mod/About/Preview.png` 741,056, `ModIcon.png` 37,307; 11.e). Check-Status: 0 error, WARN `gallery-subtitles` on `9-research-window.jpg` is by design (no subtitle on the interface crop), WARN STATUS.md 76 KB (journal to `Docs/runs/` at the closing pass). Next at writeReleaseDocs: 11.j reread (her, `publication_changelog_review_sha` stale), 12.c lint, compress-docs, prepare-release, STATUS.md journal move.
  - moved 2026-11-18: the dated entries of 2026-11-13 to 2026-11-17 (replays, tickets, gallery rating and acceptance, Preview redo, reviews, resumes) are in `Docs/runs/history.md`, section "STATUS remaining, entries of 2026-11-13 to 2026-11-17", verbatim (45 entries).
  - open 2026-10-16, gallery subtitles (burned in `Art/Gallery/1-` to `9-`, `.jpg`, clean `.png` in `Art/Gallery-clean/`): the Steam page still holds the old unsubtitled images, owner re-uploads `1-` to `9-`; French hay pile and leather bundle wording changed (validated 2026-10-16), the new description goes out with a CI `update_description`; `code_review_sha`, `echo_review_sha` and the `PUBLICATION.md` + `CHANGELOG.md` review are stale (`Mod/` and description changed); the French `map`/`stones` passes replay with the 1.7 run; English leather-bundle wording still to propose upstream.
  - open 2026-10-15, echo `echo-source.png` (owner's, from the accepted gallery) replaces `echo-preview.png`; Preview rendered again (`Render-Preview.cjs`, badge still `1.6`: the badge becomes `1.7` in the same commit as `<li>1.7</li>`), `echo_review_sha` and `social_preview_sha256` updated. Not done: upload of the new `About/Preview.png` as the GitHub social preview (web settings, owner login); `Art/echo-preview.png` still on disk, unused.
  - open, 1.7 migration, target `v1.2.0` (owner's choice 2026-10-12; AUDIT.md "Passe 1.7", 881278f, provisional): (a) green 1.6 `playTests` 8.n first; (b) green Pickle run on 1.7 (`Run-PickleWsl.ps1 -Mod <dir> -Game <absolute WSL path of rimworld17> -PickleSrc <Rimworld-Pickle#63 build>`, with `XDG_CONFIG_HOME`/`CONFIG` isolated, else staging refuses); not before the pilot RetroJoyRenew is green; (c) only after that green run: `<li>1.7</li>` in `supportedVersions` (About.xml and the Pickle companion), then the `[Unreleased]` CHANGELOG entry becomes `## [1.2.0] - <dry-run day>` in the date commit; (d) set `tested_1_7: yes` and add a `Docs/runs/` line. `<li>1.7</li>` without a green run is forbidden. No DLL: no `1.7/` folder, no LoadFolders. Tag `v1.2.0` is created by the CI after the dry-run and the owner's approval; the session does not tag. `About.xml` is still 1.6 only; the CHANGELOG draft sits in `[Unreleased]`.
  - superseded (was waiting) 2026-10-13, 1.7 run (session marker blue): the Ticket Manager (Rôle TM) refuses to file the ticket because `Submit-PickleRun.ps1` has no `-Game` and no isolated config (`SUBMIT.md`, "Ce que la demande ne transmet pas"); the owner assigned the worker/launcher change to the "RimWorld 1.7 Waylith Engine update" session. When it reports ready, send the Ticket Manager the request: `map` without `-Filter` (English, French, Russian) and `stones` (English, French) without the gallery features, one request per language, `-EvidenceDir `p17-<pass>-<lang>-<sha>` (folder deleted 2026-10-19, Inbox sort; text trace in this STATUS and Docs/runs/), `-Label` with the mod SHA. Priority is the Ticket Manager's. Pilot RetroJoyRenew not green yet at the last report.
  - planned, after a green 1.7 run: a pull request to upstream `bbradson/Adaptive-Storage-Neolithic-Module` with the 1.7 declaration and the run result (owner's yes, 2026-10-13); not opened before.
  - note: the basket `drawSize` `(2,2)` is seen in game on 1.1.3 (capture of the wooden basket full, `438d`: a basket of normal size, no error).
  - unverified: `@review` captures of the `stones` passes: three opened (English: wooden basket full, third-party andesite pot in French; French replay: research window on the Stockage tab, "Stockage néolithique" and "Présentoir néolithique" read correctly). The others were deleted unopened with the raw reports; their scenarios are green and the opened ones show no defect. Decide at `shootGallery` whether more are needed.
  - note, 2026-10-11: `Mod/About/ModIcon.png` weighs 35.9 KB (AUDIT.md 2.b asks 20 to 30 KB); the owner validated it as is (override, chat 2026-10-11).
  - open, `publish` (AUDIT.md 13.b, 2026-10-10): public Renew mod, so a `drafted` row goes into `USE_THIS_INSTEAD.md` (old item Adaptive Storage Neolithic Module 3033901895, new item 3806101377, names, authors, packageIds, versions). Virginie posts one comment on Mlie's Workshop page (3396308787); the session writes it in BBCode in `PUBLICATION.md` and hands it to her as a numbered orange step with the clickable link. Row statuses: drafted, posted, not_applicable. The register has no row for this mod yet.
  - unverified: the Steam copy loaded in game. The file half is automated (Tests/Test-SteamCopy.ps1) and compares against the newest tag `v1.1.3`; the game half is the owner's: `RimWorld/Mods` holds a development junction with the same packageId.
  - unverified: the adult-content boxes of the Workshop item. Owner declared, not checkable without a login.
  - open: GitHub issue #3 (performance). A Pickle benchmark passed 5/5 (again on 2026-10-09, fr perf replay) and did not reproduce the reported cost: 24 filled pots +0.061 ms/tick against about +0.347 reported. Not an ASF-only A/B. Open pending the reporter's versions, save and logs.
  - scope, decided 2026-09-21 by the owner: backward compatibility with the former per-stone buildings, the original mod's refusal (`incompatibleWith adaptive.storage.neolithic`) and the mod-list icon are checked statically, as are the architect menu, the dropdown groups, frames under construction and the inspect-pane card. No in-game pass for them, so no `incompat` map. A new game is not relevant: the mod adds content to an existing game.
  - note: Russian vacstone (six entries) was written by Claude from Odyssey's own term and not reviewed by a Russian speaker. Disclosed in the README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About description.
  - note: in French and Russian the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk"). It comes from the chunk def and upstream dropped the translation hook. Not a defect of this mod.
  - note: French validated by Virginie 2026-10-08 (corrections applied, `FRENCH_REVIEW.md` regenerated). English is upstream's and untouched.
protocols_read_sha: ab75519b2f95c66a9db0c2e85c005cc9c5bf57de
---
# Adaptive Storage Neolithic Renew: status

Read by sweep across every mod. Lives at root, never inside `Mod/`, so Steam never gets it. Journal of earlier work (audits, stage history, every run) moved verbatim to `Docs/runs/history.md` on 2026-10-10; recover older text with `git log -p -- STATUS.md`.

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

## Passes (1.1.3, Mod/ tree of `010cc34`)

| Pass | Result |
| --- | --- |
| English `map`, `751e` | exit 0, 49 scenarios, 34 passed, 15 skipped (`@requires`). |
| French `map`, `7cce` | exit 1: one timeout of 1200-tick wait in `12-performance-regression` on loaded host; replayed alone, `6462`, exit 0, 5/5. No French assertion failed. |
| Russian `map`, `c2a3` | exit 0, 49 scenarios, 34 passed, 15 skipped. |
| English `stones`, `438d` | exit 0, `passed`, 49 scenarios, 37 passed, 12 skipped. |
| French `stones`, `0448` | exit 0, `passed`, 37 of 37 passed (replay without gallery features; `ed73` was `in-progress`, superseded). |
| Camp and noon series (11, 12) | gallery captures, not regression; frames played 2026-10-06 to 08. |

Reads on `exitReason` and scenario count done in 2026-10-08 and 2026-10-09 journal entries (`Docs/runs/history.md`).

## Left `playTests[1.1.3]` and `shootGallery[1.1.3]` (2026-10-10), `mountPreview[1.1.3]` (2026-10-10), now: `writeDocs[1.1.3]`

1. Done 2026-10-10: `438d` and `0448` read, green. Nothing left to replay.
2. Code review `v1.1.2..HEAD`: done 2026-10-10, no defect, `code_review_sha` written.
3. `shootGallery[1.1.3]` (AUDIT.md step 9): session directs gallery (GALLERY.md, read 2026-10-10). Decided 2026-10-10: three camp pictures owner accepted on 2026-10-08 join noon series as `7-` to `9-`, one story (same noon, tribe comes to same storage), indexes contiguous.

## Preview (AUDIT.md step 10), 2026-10-10

- **Echo (10.a): kept.** `Art/echo-preview.png` (renamed from `echo.png` 2026-10-12, same bytes) = line-art basket full of wheat (drawn blue on Preview). Gallery shows baskets that fill up, pots, stacks, plinths: basket full of grain says mod's promise (container shows what is inside), still matches. No real mismatch; accepted Preview not reopened for taste. `echo_review_sha` = `eb6abc0` (commit that fixed accepted gallery).
- **Render (10.b to 10.d), read from file, not renderer log:** `Mod/About/Preview.png` 896 x 504, 659,724 bytes (under 1 MiB); `Art/Gallery/0-preview.png` byte-identical (`cmp`). Contrast measured on final PNG, ink `#F2ECE1` on panel: title 6.25:1, summary 5.18:1 (floor 4.5). Suffix "Renew" (secondary ink, partly over echo strokes) could not be measured cleanly by crude sampling; reads clearly at 896 px and 268 px (thumbnail opened: title, rule, summary legible, nothing cut or overlapping, version badge `1.6` top right, icon bottom-left). Same Preview as published with 1.1.2 text and layout; only icon and image refreshed 2026-10-05.
- **Clean (10.e):** deleted `Art/Preview-original.png` (first generated version, visual trace) and `Art/shelved-textures/` (nine upstream textures mod never loaded); both recoverable in git (`eb6abc0`). `Art/` now holds minimal set: `ModIcon-source.png`, `Preview-source.png`, `echo-preview.png`, `Preview.config.json`, `ModIcon.ico`, `Preview.ico`, `Gallery/`, `.render/` (ignored). Mod root: only ignored extras.
- **Social preview (10.f): done 2026-10-10.** Uploaded by session through Chrome on owner's word ("fais le"); `og:image` re-read and downloaded: 659,724 bytes, sha256 equal to `Mod/About/Preview.png`, recorded in `social_preview_sha256`.

## Gallery (AUDIT.md 9.e), 2026-11-17

Series "noon at the camp", rewritten 2026-11-09 to 2026-11-17 (the storehouse and camp series of 2026-10 were removed). Folder 3.75 MB (3,752,807 bytes, ten files, `.jpg` subtitled 1 to 8, clean originals in `Art/Gallery-clean/`), largest image 0.74 MB (`0-preview.png`) of 2, total under 8 MB. All nine images opened full size and at 268 px (contact sheet) in the 2026-11-17 reads and validated by Virginie ("je valide", 2026-11-17). Place `bare-clearing` of Sanctuary Backlot, save `Nelims-tribe`, played by `12-workshop-camp.feature`; Nelim and Soren, one picture every five game minutes from 12:00. Known: Nelim's face is the plain NSB base, no red cheeks (owner may ask them back); grey post above the hay in 3 is the mod sprite `HayPileStage1.png`.

| # | File | Story and place | Why here |
| --- | --- | --- | --- |
| 0 | `0-preview.png` | header image | byte copy of `Mod/About/Preview.png` (741,056 bytes, `cmp` equal 2026-11-17) |
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

## Shotlist (written 2026-11-09, `shootGallery[1.2.0]`, plan only, no capture, no scenario yet)

Story: "Noon at the camp". Nelim (protagonist, the owner's colonist) and Soren (NSB male alter ego, created by the scenario) tidy the neolithic camp of Nelim's tribe on `bare-clearing` (centre (195, 152), plain earth, no roof), 21 C, clear sky. Start 12:00, each picture waits 5 more game minutes (about 208 ticks per 5 min, +60 settle). Same outfit all day: Nelim in the fixture pants and corset plus `Apparel_TribalA` dyed ochre #B8742A, long loose hair (`Roo_Royal_LongHD`, no hat), `face kit is "smile"`; Soren in `Apparel_TribalA` dyed #3B3A36, `face kit is "smile"`. Temperature held at 20 (no sweat). Common decor around the fire: `Campfire` (195,152) lit, two `TorchLamp`, two `Stool`, `VFEPD_TanningRack`, `VFEPD_BrewingBarrel`, `VFEPD_HayBaleLarge`, `Plant_Daylily` fully grown, ash and straw on the ground; each corner has its own cluster. Loose chunks, logs and berries lie about in shot 1 and are stored by shot 8: the tidying is the story. Anonymous NSB fauna only. Decor removed after each picture.

| # | name | time | frame | what the picture says |
| --- | --- | --- | --- | --- |
| 1 | camp-1-noon | 12:00 | medium-tight, cells (190,147) to (198,151) (reworked 2026-11-13) | The camp is untidy at noon, the storage waits to be filled. Five storage types on one row (fabric bundle, wood pile, hay pile, meal shelf, basket), campfire between Nelim (log in hand) and Soren (chunk in hand), both facing South so the held item no longer hides the smile; labrador in front; loose chunks, logs and berries on the ground. |
| 2 | camp-2-baskets | 12:05 | tight, zoom 2.8, baskets foreground | What goes in, shows. Three baskets (empty, one stone, full); Nelim stands by the middle basket facing South (reworked 2026-11-13), nothing in hand (the chunk covered the mouth), smiling; squirrel beside the full basket. Torch and daylily pot behind. |
| 3 | camp-3-piles | 12:10 | medium-tight, cells (190,148) to (198,152) | Fuel is stacked as it comes. Wood pile with logs and hay pile; Nelim, empty-handed, facing South (2026-11-17: hay in hand hid her mouth facing West and again facing South, 7640), smiling, at the edge of the hay pile; hen "Plume" at (193, 148) facing South eats the hay that fell at (194, 148); Nelim at (195, 148); tanning rack at (198, 148) in the foreground. |
| 4 | camp-4-pots | 12:15 | tight, zoom 3 | Food for noon. Large pots (berries, milk, grain) lit by a torch; Soren carries a bowl of `Milk` toward the milk pot; labrador noses the pot, seen from the front; hay bale and barrel foreground. |
| 5 | camp-5-stacks | 12:20 | tight, zoom 2.5 | Stone piles up, in two materials. Granite stacks at 1, 2, 6 chunks and a marble stack of 6; Soren, `ChunkGranite` in hand, at the 2-stack; hare between the stacks. |
| 6 | camp-6-plinths | 12:25 | tight, zoom 2.5 | The tribe's treasures. Wood plinth with `Gold`, granite plinth empty, vacstone plinth with `Jade`; Nelim, north of them, holds `Silver` and is about to set it on the empty plinth; peacock in the foreground, front view. |
| 7 | camp-7-another-mod | 12:30 | medium, zoom 4 | A stone from another mod gets its own buildings. Identical pots and stacks of granite and kuratheris's stone side by side; Soren stands smiling beside the andesite stack, empty-handed (the chunk in hand hid his face, 2026-11-15); cat sleeps between. |
| 8 | camp-8-tidied | 12:40 | medium-tight, same frame as 1 (reworked 2026-11-13) | The camp is tidy: same row of storage now filled, meal shelf with meals; Nelim and Soren facing South, nothing in hand (meal sprite hid the mouths), smiling, by the fire; labrador standing facing South (a lying dog read as a pelt). Mirrors 1. |
| 9 | window-research-storage | noon | interface window | Research window on the Storage tab, both projects; `window-backdrop-for-height`, cropped, no subtitle; not scored. |

Subtitles (draft, English, to write in `PUBLICATION.md` at the end): 1 "Noon at the camp, and everything still to put away." 2 "What goes in, shows." 3 "Wood and hay, stacked as they come." 4 "Large pots show what they hold." 5 "Stone piles up, in two materials." 6 "The tribe's treasures, on their plinths." 7 "A stone from another mod joins the camp." 8 "Everything in its place: the camp eats at noon."

Per-criterion display (a to g, j; k once):

| # | a time | b decor | c living | d pawns | e action | f composition | g subject | j mod |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 12:00 clear 21C bare-clearing | fire, torches, stools, rack, barrel, hay bale, daylily, loose chunks and logs | labrador front | Nelim ochre tunic, loose hair, smile; Soren dark tunic, smile | Nelim carries log (just picked it up, about to lay it), Soren hauls a chunk | zoom 6 wide, fire centred, dog foreground | untidy camp to fill | storage set visible, five types in frame |
| 2 | 12:05 | torch, daylily pot, stool, ash | squirrel | Nelim as above | Nelim chunk in hand before the basket | zoom 2.8, baskets foreground, torch background | three baskets fill up | baskets 268 px readable (tight) |
| 3 | 12:10 | rack, bale, torch, straw | hen | Nelim | Nelim hay in hand at pile | zoom 4, rack foreground | wood and hay piles | piles readable |
| 4 | 12:15 | torch, bale, barrel, straw | labrador front | Soren | Soren carries milk bowl | zoom 3, pots centre-left | pots show contents | pots with contents |
| 5 | 12:20 | stool, torch, ash | hare | Soren | Soren chunk in hand at stack | zoom 2.5 tight | stacks grow, two materials | 1/2/6 steps visible |
| 6 | 12:25 | torch, daylily, stool | peacock front | Nelim | Nelim sets gold on plinth | zoom 2.5 tight | plinths show items | plinth items readable |
| 7 | 12:30 | barrel, torch, bale | cat | Soren | Soren carries the other stone | zoom 4, side-by-side pots and stacks | other mod stone has its own buildings | colour contrast granite vs that stone, to check |
| 8 | 12:40 | fire, torches, stools, shelf, bundle | dog asleep | both seated, smiling | both eating | zoom 6 wide | tidy camp at noon | whole set filled |

k (series): one story (who, where, day, rhythm 12:00 to 12:40 by 5 min steps); medium-tight 1 and 8 (same frame, mess then tidy), medium 3 and 7, tight 2, 4, 5, 6; opening 1 (mess) and closing 8 (tidy, mirrors 1). Rework of 2026-11-13: shots 1, 2, 8 after the 31a4 REDO (storage about 12 px at 268, held item over the face): frame cut to 5 rows (about 25 px per cell at 268), pawns facing South like shot 6 (accepted), no baskets or pots in 1 and 8.

Plan confidence (rule of `score-gallery`): 5, 5, 5, 5, 5, 5, 5, 5, mean 5.0 (no capture yet). Risks, not points: kuratheris stone may not contrast enough with granite at 268 px (check on first capture); steps "holds in hand" and "forced into the job" exist in `steps.md` (ColonistRace), exact forced-job target syntax to read at scenario writing; `Apparel_TribalA` dyed colour step to confirm with NPT; interface-hiding steps of NPT may replace this suite's own. Director's pass (Opus sub-agent, 2026-11-09): kept zoom 6 for shot 1, loose items for the "tidying" story, closing shot 8, time-order renumbering, tighter zooms for 3 to 6, split of piles and shelf, no "arm out/stoops/fan tail/points" gestures; not kept: none rejected.

Verdict after the run: to fill (gap between plan and image is what the next shotlist learns from).

## NSB (sync 2026-11-09, `shootGallery[1.2.0]`)

Places read: 2026-11-17 Tribe read: 2026-11-17 Steps read: 2026-11-17 (sync 2026-11-17, git log and diffs only, no profile opened: NSB since 2026-11-16 holds docs commits on `VALIDE.md` (Soren validated except the Chaleur outfit, then Chaleur too: nothing the camp shots change, Soren plays as the roster says), `VTW-BODYTYPES.md`, `NEUTRES-TETE.md`, `TESTING.md`; no place, colonist property, animal or catalogue line this suite uses moved; Soren is Male, VTW, not a neutral-head case; no scenario edited, no ticket owed. NPT: no commit on `docs/steps.md` or the catalogues since 2026-11-16. Rechecked 2026-11-17 11:33: two more NSB docs commits (`c5416c1` neutral head and Non-Binary Gender, `503b567` Miel's lipstick), neither names Nelim, Soren, the labrador or our two places; NPT unchanged; nothing to update. The mod adds no animal, rule 5 table stays empty. Earlier note, git log only, 2026-11-16: no NSB commit on docs since `18abf53` (2026-11-12, pure rename), nothing moved. Earlier 2026-11-13: no NSB commit on docs since 2026-11-12, nothing moved. Earlier note of 2026-11-12: the one NSB commit since 2026-11-09, `18abf53`, renames `docs/` to `Docs/` with 0 changed line, so no place, colonist, look or animal moved; no profile opened, Nelim and Soren as of 2026-11-09) (older Steps read 2026-11-16, git log 2026-11-16: NPT since 2026-11-14 added a ColonistRace mouth-offset step (`b6dec3e`, NSB/ACG face), Simple Ivory catalogue scenarios and HoverSteps/StageDecor docs; no step this suite calls renamed or removed, `Check-Steps.ps1` run, see result in the reply. Earlier 2026-11-14: git log 2026-11-14: no NPT commit on `docs/steps.md` or catalogues since 2026-11-13 noon, `Check-Steps.ps1` resolves every line. Earlier 2026-11-13: no NPT commit on `docs/steps.md` or `ColonistRace/docs/catalogues` since 2026-11-12. Earlier note of 2026-11-12: NPT commits since 2026-11-09: filth removal, tab-bar and speed-controls hiding, pot with a grown plant near a cell, decor burns, floors, tick a thing; none renames or removes a step this suite calls, `Check-Steps.ps1` resolves every line; the pot-with-plant step could replace the hand-set daylily pot in shots 1 to 3, to try at the rework)

Owner rules of 2026-11-05 (and 2026-11-06, 2026-11-07) held: all of NSB is free; a colonist or domestic animal outside NSB needs the owner's express validation before the shotlist counts on it; no change to a colonist's properties without it; every outfit free; every animal the mod includes must be in the gallery.

What changed in NSB since the mod's shots (2026-10-08): `calm-zone-close` and `bare-clearing` still exist, both "zone libre", same centres (200, 185) and (195, 152). A decorated save `Nelims-tribe-decor-mods-z3.rws` was copied to `Mod/Pickle/Fixtures` on 2026-11-09; `Nelims-tribe.rws` (the plain save the mod uses) stays the old one until NSB repoints the scenarios, so nothing to change yet. New NPT steps that could replace this suite's hand-made setup (not played, decided at `write-shotlist`): hide learning helper, colonist bar, item and name labels; `the animals except <name> are kept out of the area`; `the temperature of the map is 20 degrees`; `I fill the storage building ... with N things`.

Included animals (rule 5): the mod adds none (storage furniture only), so the table is empty on purpose.

| Place | Shots | Changes made for the gallery | Last read |
| --- | --- | --- | --- |
| `calm-zone-close` (noon series) | 1 to 6 | none (cream square kept, animals cleared first) | 2026-11-09 |
| `bare-clearing` (camp series) | 7 to 9 | camp decor placed by the suite (campfire, torches, stools, rack, barrel); frames kept inside z 147 to 157 | 2026-11-09 |

| Colonist | Shots | Outfit | Last read | Exceptions |
| --- | --- | --- | --- | --- |
| Ayla (kind `Colonist`) | camp 7, 8 | vanilla tribal apparel, to verify | none (not in NSB) | outside NSB, dropped 2026-11-09 (no validation), replaced by Nelim and Soren |
| Doka (kind `Colonist`) | camp 7, 9 | vanilla tribal apparel, to verify | none (not in NSB) | outside NSB, dropped 2026-11-09 (no validation), replaced by Nelim and Soren |
| Tahu (kind `Colonist`) | camp (one scenario) | vanilla tribal apparel, to verify | none (not in NSB) | outside NSB, dropped 2026-11-09 (no validation), replaced by Nelim and Soren |

Pictures 7 to 9 with Ayla and Doka were accepted by the owner on 2026-10-08, but a past gallery is not a validation under the rule of 2026-11-05. No scenario with these colonists is replayed before the answer.

| Animal | Shots | Outfit | Last read | Exceptions |
| --- | --- | --- | --- | --- |
| cat "Mie" | noon 6, camp | none | CATALOGUE-ANIMAUX 2026-11-09 | species is in the NSB save (3 cats, anonymous fauna): free; the name is a scenario handle, never drawn |
| chicken "Poulette" / "Plume" | noon 1, camp | none | 2026-11-09 | same (8 chickens in the save) |
| hare "Pomme" | noon 3, camp | none | 2026-11-09 | same (3 hares) |
| labrador "Biscuit" | noon 4, camp | none | 2026-11-09 | same (2 labradors in the save, anonymous; NSB's named labrador is Shogun, not used) |
| peacock "Eclat" | noon 5, camp | none | 2026-11-09 | same (3 peacocks) |
| squirrel "Noisette" | noon 2 | none | 2026-11-09 | same (11 squirrels) |

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

## What makes this sheet stale

- Run in game: fill `tested_on`, strike from `remaining` what run covered.
- Workshop upload: add run ids and SHA to `Docs/runs/history.md`.
- Change to `Mod/`: passes above no longer cover delivered content; say which scenarios to replay.
- Change to Defs, patches or language files: reset `localization`, `translation_en`, `translation_fr` to `unchecked` until revalidated.
