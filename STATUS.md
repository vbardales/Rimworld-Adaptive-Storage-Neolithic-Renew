---
localization: complete
translation_en: complete
translation_fr: complete
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
workflow_stage: playTests[1.2.0]
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
upstream_mod_remotes:
  - https://github.com/bbradson/Adaptive-Storage-Neolithic-Module
  - https://github.com/bbradson/Adaptive-Storage-Framework
dependencies: declared
showcase:     complete
tested_1_7:   no
tested_on:    2026-10-10 in the WSL, stones passes 438d and 0448 on 92fcfaa (Mod/ unchanged since 010cc34); map passes of 2026-10-08, see "Passes"
workshop:     3806101377
settings_audit: not_applicable
build_audit:  not_applicable (current upstream architecture has no assembly)
audit_revision: 2026-10-10, full re-audit against the current AUDIT.md at 92fcfaa (see "Audit 2026-10-10")
audit_evidence: STATUS.md, "Audit 2026-10-10"; journal of earlier sections in docs/runs/history.md
code_review_sha: 28968101cfc28dc3b8eac7561250a4108747f6c9
session:      local_ebf57a84-2e1f-4dfc-ad22-8a17d8cbac9f
updated:      2026-10-13
preview_audit: complete (header image published 2026-10-01 with 1.1.2; a newer Preview, 659,724 bytes, is in `Mod/` for 1.1.3 and goes out with `update_preview`)
modicon_audit: complete
echo_review_sha: c992f79389746cdab08904785ee2faac55fedb01
publication_changelog_review_sha: 110a0aeac5281c0ef89f4627d99d7011692d9290
social_preview_sha256: 787f25dcc0b44cf41a33f5658099f3bf05b95592c793a595137286ad326445cb
remaining:
  - read 2026-10-23, 1.7 ticket `8c02` (filter `::research tab`, `wsl-deps.map`, tree `0d9d84c`, `Mod/` unchanged since `ea047f6`): exit 1, `exitReason: failed`, 4 scenarios matched, 2 passed, 2 failed. Both of this mod's research tab scenarios PASS on 1.7 (`the framework's research tab, opened by its defName, lists both projects`, 105 s; `the framework's research tab reads Stockage and lists both projects`, 80 s): the earlier red (`f873`, `13c0`, `e6ec`) was not a mod defect. The 2 reds are Pickle's own scenarios swept in by the filter, not ours (`ui steps`: `a research tab is opened by def name and lists its project`, step `I open the research tab "Main"` timed out 5 s; `vanilla smoke`: `research tab opens and closes`, step `I open the "Research" tab` timed out 5 s): same 5 s step timeout on 1.7, NPT's to fix, to report through the Ticket Manager. NPT relay (via TM): those 2 reds are Pickle's own suites (rimworks.pickle), 5 s step timeout on 1.7, nothing for NPT to fix; refile 1.7 tickets with a `file::name` filter of this mod's own scenarios, never `::research tab`. `Parked/p17e-research-en-dacca6c` released and deleted, Inbox folder deleted (green here is a 1.7 proof of these 2 scenarios only; full `map`/`stones` 1.7 passes still open, so `tested_1_7` stays `no`).
  - read 2026-10-21, 1.7 ticket `ca6e`: exit 8, `exitReason: infrastructure-error`, 0 scenarios, `junit.xml` empty, RimLogging stack trace in `stdout.txt`; no verdict on the mod. Evidence `p17f-research-en-0ccbfda` deleted (no known scenario, no parking).
  - done 2026-10-22/23, Preview redone (commits `8870c1a` pushed, `3d1de4c`, `60a2571`, `1c9ab1c`, `a4c0e1a` local): badge from `Art/ModIcon-source.png` (owner's badge version, black not made transparent), badge bottom-right, panel bottom-left, "Renew" on its own line; config in `panel`/`icon` groups (Render-Preview `19a58c2`). Owner validated. Badge 125 px came from `ModIcon.png`: wrong input.
  - done 2026-10-23 (owner: "fais 8b, 8e, 8k"): 8b French text changed only in `ea047f6` (hay pile, leather bundle), validated by the owner 2026-10-16; `FRENCH_REVIEW.md` content already current. Regenerating it now would empty 16 Original and English cells (no `french-review-english.json` since `c2e2b69`), so not committed: ask Audit if wanted. 8e `@wip` removed from `12-workshop-camp.feature` (played 2026-10-08, accepted pictures 7 to 9, kept out of normal passes by `@requires`). 8k social preview uploaded through Chrome on the owner's word, `social_preview_sha256` updated; settings page shows the new image (not downloaded to compare).
  - alert to Audit 2026-10-23: ticket `7736` lists `tests=49` although filed with filter `research tab` (2 scenarios expected); asked Audit whether the filter reaches the run.
  - read 2026-10-23, `rate-gallery` (rating of `Art/Gallery/1-` to `9-`): confidence 3, 3, 3, 2.5, 3, 2.5, 2, 2, 2, mean 2.5. Weak points: no named decor removed after shot (b), hat-hair and outfit colours for pawns of 7 to 9 (d), actions only "stands" (e), no risk and plan in this file (h), rows of aligned subjects (i), camp header tells a separate story (k), left flower strip on 7 to 9 (known). Shotlist rewrite waits for `shootGallery` (owner, 2026-10-23: stay in `playTests`).
  - read 2026-10-19, 1.7 ticket `13c0` (research tab scenarios, `map`, tree `dacca6c`, `Mod/` unchanged): exit 1, `exitReason: failed`, 2 scenarios, 0 passed, 2 failed, both on step `I open the research tab "ASFAdaptiveStorage"` timed out after 5 s (3rd 1.7 run with the same red: `f873`, `13c0`; `2e0d` was spent). Its capture shows the Storage tab open with both projects at 400, so the mod renders correctly; the same step passes on 1.6. Cause unproven, looks like the step on 1.7: question for NPT through the Ticket Manager. No `Player.log` in the run. Evidence parked in `Parked/p17e-research-en-dacca6c` (replaces `p17b`, deleted; released and deleted 2026-10-23 by green `8c02`).
  - done 2026-10-19, evidence sort (AGENTS.md "Test evidence"): Inbox empty, pickle-reports-archive holds nothing of this mod (29 then 22 folders listed, none ours; `1019-1624-nosummary` holds only a Player.log, owner unknown). Kept: Evidence/regr-1.1.3-fr-stones (RELEASE.md: sole proof of 32 scenarios until a green French stones replay on 1.2.0), Parked/p17e-research-en-dacca6c (RELEASE.md: both research tab scenarios, released by their green on 1.7). Total about 150 KB. `Prune-Evidence.ps1` dry run proposes to release p17e because the scenarios are green in `regr-1.1.3-fr-stones`, a 1.6 run, while the condition asks 1.7: false positive, do not `-Apply`.
  - open 2026-10-16, gallery subtitles (burned in `Art/Gallery/1-` to `9-`, `.jpg`, clean `.png` in `Art/Gallery-clean/`): the Steam page still holds the old unsubtitled images, owner re-uploads `1-` to `9-`; French hay pile and leather bundle wording changed (validated 2026-10-16), the new description goes out with a CI `update_description`; `code_review_sha`, `echo_review_sha` and the `PUBLICATION.md` + `CHANGELOG.md` review are stale (`Mod/` and description changed); the French `map`/`stones` passes replay with the 1.7 run; English leather-bundle wording still to propose upstream.
  - open 2026-10-15, echo `echo-source.png` (owner's, from the accepted gallery) replaces `echo-preview.png`; Preview rendered again (`Render-Preview.cjs`, badge still `1.6`: the badge becomes `1.7` in the same commit as `<li>1.7</li>`), `echo_review_sha` and `social_preview_sha256` updated. Not done: upload of the new `About/Preview.png` as the GitHub social preview (web settings, owner login); `Art/echo-preview.png` still on disk, unused.
  - open, 1.7 migration, target `v1.2.0` (owner's choice 2026-10-12; AUDIT.md "Passe 1.7", 881278f, provisional): (a) green 1.6 `playTests` 8.n first; (b) green Pickle run on 1.7 (`Run-PickleWsl.ps1 -Mod <dir> -Game <absolute WSL path of rimworld17> -PickleSrc <Rimworld-Pickle#63 build>`, with `XDG_CONFIG_HOME`/`CONFIG` isolated, else staging refuses); not before the pilot RetroJoyRenew is green; (c) only after that green run: `<li>1.7</li>` in `supportedVersions` (About.xml and the Pickle companion), then the `[Unreleased]` CHANGELOG entry becomes `## [1.2.0] - <dry-run day>` in the date commit; (d) set `tested_1_7: yes` and add a `docs/runs/` line. `<li>1.7</li>` without a green run is forbidden. No DLL: no `1.7/` folder, no LoadFolders. Tag `v1.2.0` is created by the CI after the dry-run and the owner's approval; the session does not tag. `About.xml` is still 1.6 only; the CHANGELOG draft sits in `[Unreleased]`.
  - filed 2026-10-16, 1.7 tickets on e7e87fd (Waylith launcher ready, 1ba690b; pilot RetroJoyRenew green), `-Game /home/nelim/rimworld17`: map en `20261016-232435-293-e6ec`, fr `-232436-541-8e46`, ru `-232438-021-622c` (`wsl-deps.map`, no filter); stones en `-232439-169-679c`, fr `-232440-488-24f2` (`wsl-deps.stones.map`, filter `!11-workshop-captures,!12-workshop-camp`). Evidence `p17-<pass>-<lang>-e7e87fd` (folder deleted 2026-10-19, Inbox sort; text trace in this STATUS and docs/runs/). Wait for `RUN_DONE`; read `summary.json` first. Keep `Mod/` unchanged until then.
  - read 2026-10-17, 1.7 `map` en `e6ec` (`p17-map-en-e7e87fd` (deleted)), exit 3, counts for nothing: `summary.json` is a stale 16:57 snapshot (`in-progress`, 14), final `summary.md`/`junit.xml` show 15 scenarios, 14 passed, 1 failed, run cut well before the 34 played on 1.6. The one red, `the framework's research tab, opened by its defName, lists both projects`: step `I open the research tab "ASFAdaptiveStorage"` timed out after 5s, but its capture shows the research window open on the Storage tab with both projects at 400. Likely step timeout (host load or 1.7 launch), not a mod defect; unproven, no `Player.log` in the folder. Waiting on `map` fr/ru and `stones` en/fr; if the step stays the only red, replay that scenario alone.
  - read 2026-10-17, TM answer: `e6ec` was `Terminated` after 15 scenarios, host side, no report (launcher failure, not the mod). `map` fr `8e46` (`p17-map-fr-e7e87fd` (deleted)) wrote only `no-report.txt`, launcher exit 1: `error: no language matching 'French' in /home/nelim/rimworld17/Data/Core/Languages` (1.7 names languages by prefix: English, French, German). Both runs count for nothing and say nothing about the mod. Refile after the launcher/host fix; `map` ru and `stones` en/fr still pending.
  - read 2026-10-17, `map` ru `622c`: only `no-report.txt`, launcher exit 1 (cause not read, likely same language error). `stones` en `679c` (`p17-stones-en-e7e87fd` (deleted)): exit 137, 0 scenarios, `watchdog-timeout`; its `Player.log` belongs to another run (`24-tuque-colour-check.feature`, set `sanctuary`, RimWorld 1.6.4871), so nothing readable. No 1.7 verdict on the mod from `e6ec`, `8e46`, `622c`, `679c`. Only `stones` fr `24f2` still pending; refile all after the launcher/host fix.
  - read 2026-10-17, `stones` fr `24f2` (`p17-stones-fr-e7e87fd` (deleted)): only `no-report.txt`, launcher exit 1 (same French language error). All five 1.7 tickets of `e7e87fd` are spent with no verdict on the mod. Blocked on the launcher fix (not the TM's, NPT away); the TM warns when it is done. Then refile map en/fr/ru and stones en/fr, `Mod/` unchanged.
  - filed 2026-10-17 (owner's word "oui, refile", before the launcher fix was confirmed), 1.7 tickets on `0b8ed0c` (`Mod/` unchanged since `e7e87fd`), `-Game /home/nelim/rimworld17`: map en `f873`, fr `4176`, ru `c52e` (`wsl-deps.map`, no filter); stones en `1f07`, fr `cb46` (`wsl-deps.stones.map`, filter `!11-workshop-captures,!12-workshop-camp`). Evidence `p17b-<pass>-<lang>-0b8ed0c` (folder deleted 2026-10-19, Inbox sort; text trace in this STATUS and docs/runs/). French and Russian may fail again on the language error; read `no-report.txt` first. Keep `Mod/` unchanged until `RUN_DONE`.
  - cancelled 2026-10-17 (owner's word): map fr `4176` and stones fr `cb46`. Cause read: `/home/nelim/rimworld17/Data/Core/Languages` holds only `English`; French (and likely Russian) cannot load on 1.7 until the install has its languages (not this session's to fix). Map ru `c52e` cancelled too (owner's word, 2026-10-17): 1.7 is an early alpha, no languages yet (reported to the "1.7" session). Still queued: map en `f873`, stones en `1f07`. French and Russian 1.7 passes stay open until 1.7 ships its languages.
  - decided 2026-10-18 (answer to the Ticket Manager, for NPT): stones en `1f07` is stopped, it moved 11 tests in 18 min of 153 (about 4 h) and blocked the queue including the NPT look-catalogue 4813 (priority 10); 1.7 is an alpha, no verdict lost. Not counted as a mod failure. Cancellation by NPT not yet confirmed to this session. Later: refile stones en 1.7 as several tickets with a per-scenario filter once the queue is free. Map en `f873` stays queued (small run).
  - read 2026-10-18, 1.7 `map` en `f873` (`p17b-map-en-0b8ed0c` (deleted)), exit 11, `exitReason: in-progress`, 18 scenarios played (34 on 1.6), 17 passed, 1 failed: the run was cut, so it counts for nothing as a full pass. The one red is the same as `e6ec`: `the framework's research tab, opened by its defName, lists both projects`, step `I open the research tab "ASFAdaptiveStorage"` timed out after 5s (scenario 41.8 s). Two runs, same step, same red: no longer a one-off host load; cause still unproven (mod defect, 1.7 research window, or Pickle step on 1.7). Next: replay that scenario alone on 1.7 (`-Filter`), read `Player.log`; ask NPT if the step needs a 1.7 fix. Stones en 1.7 still to refile per scenario.
  - filed 2026-10-18, 1.7 ticket `beed` (research tab scenario alone, `wsl-deps.map`, `-Game /home/nelim/rimworld17`, tree `3f7b796`, `Mod/` unchanged), evidence `p17c-research-en-3f7b796` (folder deleted 2026-10-19, Inbox sort; text trace in this STATUS and docs/runs/). Wait for `RUN_DONE`; read `summary.json` then `junit.xml` and `Player.log`.
  - read 2026-10-18, TM relay: `f873` exit 11 (read above), `1f07` exit 137 `watchdog-timeout`, 11 played, 10 passed, 1 failed (`a colonist fills a bill and the product appears`: no BlocksSandstone made, map 0 before and after), cut run, no verdict; `beed` exit 3, only `no-report.txt` and a foreign `Player.log` (1.6.4871, set `sanctuary`), spent with no verdict.
  - filed 2026-10-18, 1.7 ticket `20261018-184857-396-2e0d` (research tab scenario alone, filter `research tab, opened by its defName`, `wsl-deps.map`, `-Game /home/nelim/rimworld17`, tree `5a6775f`, `Mod/` unchanged), evidence `p17d-research-en-5a6775f` (folder deleted 2026-10-19, Inbox sort; text trace in this STATUS and docs/runs/). Wait for `RUN_DONE`; read `summary.json`, `junit.xml`, `Player.log`.
  - superseded (was waiting) 2026-10-13, 1.7 run (session marker blue): the Ticket Manager (Rôle TM) refuses to file the ticket because `Submit-PickleRun.ps1` has no `-Game` and no isolated config (`SUBMIT.md`, "Ce que la demande ne transmet pas"); the owner assigned the worker/launcher change to the "RimWorld 1.7 Waylith Engine update" session. When it reports ready, send the Ticket Manager the request: `map` without `-Filter` (English, French, Russian) and `stones` (English, French) without the gallery features, one request per language, `-EvidenceDir `p17-<pass>-<lang>-<sha>` (folder deleted 2026-10-19, Inbox sort; text trace in this STATUS and docs/runs/), `-Label` with the mod SHA. Priority is the Ticket Manager's. Pilot RetroJoyRenew not green yet at the last report.
  - done 2026-10-13, `1.2.0` is a minor version (owner's choice): 1.6 is kept, 1.7 added, nothing breaking. Drafts committed: CHANGELOG `[Unreleased]` (`5848f18`), `PUBLICATION.md` section 6 `### 1.2.0` change note (`d493825`). Not done on purpose, because 1.7 is not proven: `<li>1.7</li>`, the `[1.2.0] - <date>` heading, the description line "RimWorld 1.6 is declared" (a description change reopens the owner's `PUBLICATION.md` + `CHANGELOG.md` review).
  - planned, after a green 1.7 run: a pull request to upstream `bbradson/Adaptive-Storage-Neolithic-Module` with the 1.7 declaration and the run result (owner's yes, 2026-10-13); not opened before.
  - read 2026-10-10, `stones` passes of 1.1.3 on 92fcfaa: English `438d` exit 0, `exitReason: passed`, 49 discovered, 37 passed, 12 skipped (`@requires` galleries), no failure. French `ed73` ended `in-progress` (exit 5, run died after 44 of 45 on the last camp-gallery feature), so it counts for nothing; replay `0448` without the gallery features: exit 0, `exitReason: passed`, 37 discovered = 37 played = 37 passed, 0 skipped, no exception in `Player.log`. Evidence kept: `tests/Pickle/Evidence/p113-en-stones-92fcfaa (deleted 2026-10-19)` and `p113-fr-stones-replay-92fcfaa` (deleted) (summary, junit, `Player.log`, the opened captures).
  - note: the basket `drawSize` `(2,2)` is seen in game on 1.1.3 (capture of the wooden basket full, `438d`: a basket of normal size, no error).
  - unverified: `@review` captures of the `stones` passes: three opened (English: wooden basket full, third-party andesite pot in French; French replay: research window on the Stockage tab, "Stockage néolithique" and "Présentoir néolithique" read correctly). The others were deleted unopened with the raw reports; their scenarios are green and the opened ones show no defect. Decide at `shootGallery` whether more are needed.
  - done 2026-10-11 by the owner's word (not checkable without a login): upload `7-` to `9-` (camp pictures) on the Steam page by hand, in order, after `0-` to `6-` (Steam answers "file upload fail: 29" for an image already on the page: not an error). Their raw frames are deleted.
  - done 2026-10-10, `prepareRelease` 12.e: owner rule, the dry-run starts with the date commit: `## [Unreleased]` became `## [1.1.3] - 2026-10-11` (day of the dry-run; corrected from 10-10 because the dry-run slipped to the next day) and the SHA of that commit goes to the dry-run. A slipped day means a corrected date, a new commit and a new dry-run. Change of AUDIT.md 12.e requested from the workflow-conventions session.
  - done 2026-10-11, `prepareRelease` 12.a to 12.f re-read: 12.a no `Mod/` commit since `code_review_sha` (`2896810`); 12.b `About.xml` has no dependency, `loadAfter`, `incompatibleWith` or `supportedVersions` change since `v1.1.2` (description text only); 12.c `Check-Status.ps1` 0 error, 0 warning; 12.d working tree clean, `main` equals `origin/main`, no assembly; 12.e dry-run run `38090129117` green on `e47cceb353b3d0427ebd3ca3f19f5b7e3878428e` (`update_preview`, `update_description`); 12.f every red test replayed green alone (`0448` for `ed73`, `6462` for `7cce`), gallery accepted by the owner, guardrails held by the dry-run. Rollback target chosen before publishing: `v1.1.2` (`cd28780`, regression green 2026-10-02).
  - done 2026-10-11, `publish` 13.a and 13.b: `publish[1.1.3]` committed (`655676b`), `dispatch-publish.sh --preview --description` on `e47cceb353b3d0427ebd3ca3f19f5b7e3878428e`, run `38092165205` approved by the owner on `steam-production`, jobs `publish` and `tag-and-release` success; tag `v1.1.3` at `e47cceb`, release published. Item `3806101377` unchanged, `About/PublishedFileId.txt` already committed. `USE_THIS_INSTEAD.md` row `drafted`, comment in `PUBLICATION.md` section 4.
  - done 2026-10-11, `publish` 13.b: the owner posted the Use This Instead comment on Mlie's page (3396308787); row `posted`.
  - done 2026-10-13, `followUp` 14.a read (non-regression of 1.1.3 on `e47cceb`, `Mod/` unchanged; evidence `regr-1.1.3-<pass>` (folder deleted 2026-10-19, Inbox sort; text trace in this STATUS and docs/runs/)): English `map` `97a5` 34 passed, 0 failed, 15 skipped (`@requires`), `exitReason: passed`; Russian `map` `6d5e` 34 passed, 0 failed, 15 skipped, passed (the first Russian run died `in-progress`, folder `regr-1.1.3-ru-map-died-inprogress`, counts for nothing); French `stones` `3f87` 37 passed, `passed`; French `map` `e669` 32 passed, 2 failed, 15 skipped, `exitReason: failed`: the two reds are `module loaded with no Neolithic storage building` and `one empty large pot is visible` of `12-performance-regression.feature`, the same family as the red of 2026-10-08; English `stones` `d8a0` 34 passed, 0 failed, `exitReason: watchdog-timeout` (the run was cut before the last three scenarios, so it is not a green): the three missing are `one filled large pot is visible`, `twenty-four filled large pots are visible` and `module loaded with no Neolithic storage building after warmup`. Each red or cut scenario replayed green alone: `regr-1.1.3-fr-perf-replay` and `regr-1.1.3-en-stones-perf-replay`, 5 of 5 passed each, exit passed, covering all five scenarios of that feature. Verdict: no red left on 1.1.3, no rollback. Not read: the `@review` captures of these runs.
  - done 2026-10-10, `writeDocs` 11.b and 11.h (protocol of 2026-10-10): `THANKS` now names `[K]Extra Stone` (Kuratheris) and the 15 mods that the `stones` and camp passes stage, all linked and none a dependency: Female Body and Apparel Variants Continued, WDI's Realistic Bodies, TailorMade and the Facial Animation Performance Patch (astryl), Facial Animation WIP and Experimentals (Nals), VTE Facial Animation, Akeron Extras Facial Animations, Vanilla Experimentals for Facial Animation, EyeGenes3, Mud's Tribal Apparel, ETRT Tribal Apparel (continued) (qux, Evil Tactician, Ogam), Vanilla Expanded Framework and VFE Props and Decor. The `About.xml` description was regenerated from the block (`sync-about-description.mjs`, in sync). Authors come from each installed About.xml; only the ETRT page was read (Chrome). Fifteen drafts in `PUBLICATION.md` section 4, fifteen `drafted` rows in `WORKSHOP_COMMENTS.md` (protocols repository, uncommitted there), Vanilla Expanded Framework's `Covers` extended. The Steam page keeps the old description until a CI `update_description`. Follow-ups after the owner's review (2026-10-10): `french-review-english.json` resolves the inherited English of baskets, pots, plinths and bundles, so `FRENCH_REVIEW.md` has no empty Original or English cell; the `PUBLICATION.md` opening and "Current state" say published 1.1.2 and 1.1.3 in preparation, and the gallery paragraph says nine pictures; Venus Touch Waistlines (the owner's own project, staged by the camp pass) is added to the camp credits with its GitHub link; the compatibility sentence is reworded; the wood pile wording is an upstream proposal in `BACKLOG.md`, not filed.
  - done 2026-10-10, `writeDocs` 11.j: the owner reviewed `PUBLICATION.md` and `CHANGELOG.md` (after the Steam description became the Markdown source on 2026-10-06) and confirmed in chat ("validé"); `publication_changelog_review_sha` is the reviewed commit `110a0ae`.
  - note, 2026-10-11: `Mod/About/ModIcon.png` weighs 35.9 KB (AUDIT.md 2.b asks 20 to 30 KB); the owner validated it as is (override, chat 2026-10-11).
  - done 2026-10-11, local scripts (Audit workflow, owner rule): seven rows in `scripts/LOCAL_SCRIPTS.md` kept and justified, validated by Audit (review with the owner at the end). `tests/Test-Mod.ps1` now calls the shared `Check-ModBasics.ps1` and `Check-Translations.ps1` first, keeps only its own checks (170 assertions, was 173: the three generic ones went to the shared script) and runs under Windows PowerShell 5.1 and pwsh. `.github` regenerated from the template (`8bdfd0e`, `Check-CiTemplate.ps1` identical); 75 script tests pass. Declared to the CI/CD session and to NPT (steps, via the Ticket Manager).
  - done 2026-10-11, `followUp` 14.b: the 15 comments posted by the owner (her word, 2026-10-11); rows `posted` in `WORKSHOP_COMMENTS.md`.
  - open, `publish` (AUDIT.md 13.b, 2026-10-10): public Renew mod, so a `drafted` row goes into `USE_THIS_INSTEAD.md` (old item Adaptive Storage Neolithic Module 3033901895, new item 3806101377, names, authors, packageIds, versions). Virginie posts one comment on Mlie's Workshop page (3396308787); the session writes it in BBCode in `PUBLICATION.md` and hands it to her as a numbered orange step with the clickable link. Row statuses: drafted, posted, not_applicable. The register has no row for this mod yet.
  - unverified: the Steam copy loaded in game. The file half is automated (tests/Test-SteamCopy.ps1) and compares against the newest tag `v1.1.2`; the game half is the owner's: `RimWorld/Mods` holds a development junction with the same packageId.
  - unverified: the adult-content boxes of the Workshop item. Owner declared, not checkable without a login.
  - open: GitHub issue #3 (performance). A Pickle benchmark passed 5/5 (again on 2026-10-09, fr perf replay) and did not reproduce the reported cost: 24 filled pots +0.061 ms/tick against about +0.347 reported. Not an ASF-only A/B. Open pending the reporter's versions, save and logs.
  - scope, decided 2026-09-21 by the owner: backward compatibility with the former per-stone buildings, the original mod's refusal (`incompatibleWith adaptive.storage.neolithic`) and the mod-list icon are checked statically, as are the architect menu, the dropdown groups, frames under construction and the inspect-pane card. No in-game pass for them, so no `incompat` map. A new game is not relevant: the mod adds content to an existing game.
  - note: Russian vacstone (six entries) was written by Claude from Odyssey's own term and not reviewed by a Russian speaker. Disclosed in the README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About description.
  - note: in French and Russian the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk"). It comes from the chunk def and upstream dropped the translation hook. Not a defect of this mod.
  - note: French validated by Virginie 2026-10-08 (corrections applied, `FRENCH_REVIEW.md` regenerated). English is upstream's and untouched.
protocols_read_sha: 0a40a584e83bd432e59375dbe1be39822f7b10c3
---
# Adaptive Storage Neolithic Renew: status

Read by sweep across every mod. Lives at root, never inside `Mod/`, so Steam never gets it. Journal of earlier work (audits, stage history, every run) moved verbatim to `docs/runs/history.md` on 2026-10-10; recover older text with `git log -p -- STATUS.md`.

## Where the mod stands

- **Published:** `v1.1.3` (2026-10-11, tag at `e47cceb`, run `38092165205`, Steam item `3806101377`, public). Previous `v1.1.2` (`cd28780`) = rollback target; regression green (2026-10-02).
- **Target:** `1.1.3`, published 2026-10-11 (CHANGELOG `[1.1.3] - 2026-10-11`, `PUBLICATION.md` section 6). `Mod/` changes since `v1.1.2`: `About.xml` (description now generated from Markdown source), `ModIcon.png`, `Preview.png`, `Basket/ThingDef.xml` (`drawSize` `(2,2)`), French `ThingDef.xml` (nine descriptions, Virginie's review). Nothing in `Mod/` changed since `010cc34`; later commits = documents.
- **Old vocabulary:** previous `workflow_stage: preTest` = old name (AUDIT.md, section 16: `preTest` maps to `writeTests`). Re-audit result: `playTests[1.1.3]`; left for `shootGallery[1.1.3]` on 2026-10-10 (stones passes green, code review done).

## Audit 2026-10-10

Audited at `92fcfaa` (`main`). Nothing launched by this session: no RimWorld, no CI dispatch; two Pickle tickets deposited through Ticket Manager.

| Check | Result |
| --- | --- |
| `tests/Test-Mod.ps1` | Re-run under `pwsh`: 173 assertions pass (under Windows PowerShell 5.1 script cannot run: `GetRelativePath`). |
| `tests/Test-InstalledTranslations.ps1` | Re-run: 123 pass. |
| `tests/Pickle/Source/Build.ps1` | Builds (CS1684 `Span` warnings only). Rebuilt DLL differs in bytes from tracked one, restored with `git checkout`; no source change. |
| Scenarios written (7.a, 7.d) | 11 feature files in `tests/Pickle/Mod/Pickle/Features/`, plan in `TESTING.md`; no `TEST_SCENARIOS.md` (Gherkin features and `TESTING.md` play that role). `@requires` scenarios have maps (`wsl-deps.stones.map`, `wsl-deps.sanctuary.map`, `wsl-deps.camp.map`). |
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

Reads on `exitReason` and scenario count done in 2026-10-08 and 2026-10-09 journal entries (`docs/runs/history.md`).

## Left `playTests[1.1.3]` and `shootGallery[1.1.3]` (2026-10-10), `mountPreview[1.1.3]` (2026-10-10), now: `writeDocs[1.1.3]`

1. Done 2026-10-10: `438d` and `0448` read, green. Nothing left to replay.
2. Code review `v1.1.2..HEAD`: done 2026-10-10, no defect, `code_review_sha` written.
3. `shootGallery[1.1.3]` (AUDIT.md step 9): session directs gallery (GALLERY.md, read 2026-10-10). Decided 2026-10-10: three camp pictures owner accepted on 2026-10-08 join noon series as `7-` to `9-`, one story (same noon, tribe comes to same storage), indexes contiguous.

## Preview (AUDIT.md step 10), 2026-10-10

- **Echo (10.a): kept.** `Art/echo-preview.png` (renamed from `echo.png` 2026-10-12, same bytes) = line-art basket full of wheat (drawn blue on Preview). Gallery shows baskets that fill up, pots, stacks, plinths: basket full of grain says mod's promise (container shows what is inside), still matches. No real mismatch; accepted Preview not reopened for taste. `echo_review_sha` = `eb6abc0` (commit that fixed accepted gallery).
- **Render (10.b to 10.d), read from file, not renderer log:** `Mod/About/Preview.png` 896 x 504, 659,724 bytes (under 1 MiB); `Art/Gallery/0-preview.png` byte-identical (`cmp`). Contrast measured on final PNG, ink `#F2ECE1` on panel: title 6.25:1, summary 5.18:1 (floor 4.5). Suffix "Renew" (secondary ink, partly over echo strokes) could not be measured cleanly by crude sampling; reads clearly at 896 px and 268 px (thumbnail opened: title, rule, summary legible, nothing cut or overlapping, version badge `1.6` top right, icon bottom-left). Same Preview as published with 1.1.2 text and layout; only icon and image refreshed 2026-10-05.
- **Clean (10.e):** deleted `Art/Preview-original.png` (first generated version, visual trace) and `Art/shelved-textures/` (nine upstream textures mod never loaded); both recoverable in git (`eb6abc0`). `Art/` now holds minimal set: `ModIcon-source.png`, `Preview-source.png`, `echo-preview.png`, `Preview.config.json`, `ModIcon.ico`, `Preview.ico`, `Gallery/`, `.render/` (ignored). Mod root: only ignored extras.
- **Social preview (10.f): done 2026-10-10.** Uploaded by session through Chrome on owner's word ("fais le"); `og:image` re-read and downloaded: 659,724 bytes, sha256 equal to `Mod/About/Preview.png`, recorded in `social_preview_sha256`.

## Gallery (AUDIT.md 9.e), 2026-10-10

Folder 2.31 MB (2,312,323 bytes, ten files; subtitled `.jpg` since 2026-10-16, clean `.png` originals in `Art/Gallery-clean/`) of 8, largest image 0.66 MB of 2. Every image opened: `1-` to `6-` in 2026-10-06 and 2026-10-08 reads, `7-` to `9-` re-opened 2026-10-10 (known flaw, owner accepted: thin strip of flowers along left edge, border of place `bare-clearing`).

| # | File | Story and place | Why here |
| --- | --- | --- | --- |
| 0 | `0-preview.png` | header image | byte copy of `Mod/About/Preview.png` |
| 1 | `1-the-whole-set.jpg` | noon at storehouse, `calm-zone-close` | most demonstrative: whole set with contents; Steam shows it large right after header |
| 2 | `2-a-basket-fills-up.jpg` | same, 12:05, squirrel | mod's central promise: container shows what it holds |
| 3 | `3-chunk-stacks.jpg` | same, 12:10, hare | stone-as-stuff stacks at several levels, two materials |
| 4 | `4-large-pots.jpg` | same, 12:15, dog | pots with different foods |
| 5 | `5-plinths.jpg` | same, 12:20, peacock | plinths showing items |
| 6 | `6-a-stone-from-another-mod.jpg` | same, 12:25, cat | integration: third-party stone beside granite |
| 7 | `7-three-baskets.jpg` | camp, `bare-clearing` | tribe at same storage: baskets empty, one item, full |
| 8 | `8-fuel-and-stone.jpg` | camp | wood and hay piles, granite and marble stacks |
| 9 | `9-the-tribes-treasures.jpg` | camp | plinths with chief: display side of mod |

Index and table aligned in `PUBLICATION.md` section 2.

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

- **Inventory:** labels and descriptions of `ThingDef`, `ResearchProjectDef`, `ResearchTabDef`. No Keyed folder, no C#, so no code-owned text. English comes from Defs.
- **French and Russian** live in `Mod/Languages/<Language>/DefInjected/` (`ThingDef/ThingDef.xml`, `ResearchProjectDefs.xml`, `ResearchTabDef.xml` for French). Russian outside English and French gate; vacstone entries unreviewed by Russian speaker.
- **Checks:** 173 and 123 assertions pass (2026-10-10); French pass (feature 05) and Russian pass (feature 07), language-aware, green in `7cce` and `c2a3` (2026-10-08).
- **Gender agreement:** all 21 French texts describe furniture; none refers to pawn; no `{PAWN_gender ? ...}` switch applies (read in full 2026-09-30, again for 2026-10-08 corrections).
- **French review, Virginie, 2026-10-08:** corrections applied (nine descriptions of `ThingDef.xml`), validated; `FRENCH_REVIEW.md` regenerated by `scripts/Make-FrenchReview.ps1` (protocols repository). Later change to French file resets `translation_fr` to `unchecked`.
- **Not covered:** third-party stone's own untranslated material name belongs to that mod.

## What makes this sheet stale

- Run in game: fill `tested_on`, strike from `remaining` what run covered.
- Workshop upload: add run ids and SHA to `docs/runs/history.md`.
- Change to `Mod/`: passes above no longer cover delivered content; say which scenarios to replay.
- Change to Defs, patches or language files: reset `localization`, `translation_en`, `translation_fr` to `unchecked` until revalidated.
