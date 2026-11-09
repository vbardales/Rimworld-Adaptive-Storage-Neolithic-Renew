---
localization: complete
translation_en: complete
translation_fr: complete
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
workflow_stage: shootGallery[1.2.0]
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
upstream_mod_remotes:
  - https://github.com/bbradson/Adaptive-Storage-Neolithic-Module
  - https://github.com/bbradson/Adaptive-Storage-Framework
dependencies: declared
showcase:     complete
tested_1_7:   yes
tested_on:    2026-11-07 pickle 3280d85 (1.7 en map cd58 green, 23 passed 2 skipped); 1.6 stones passes of 2026-10-10 on 92fcfaa, see "Passes"
workshop:     3806101377
settings_audit: not_applicable
build_audit:  not_applicable (current upstream architecture has no assembly)
audit_revision: 2026-10-10, full re-audit against the current AUDIT.md at 92fcfaa (see "Audit 2026-10-10")
audit_evidence: STATUS.md, "Audit 2026-10-10"; journal of earlier sections in Docs/runs/history.md
code_review_sha: 699e6ce06bdff98a18718bbf0a0847b925e5197b
session:      local_73e7e49e-129a-4737-8603-ae05c7dafecf
updated:      2026-11-09
preview_audit: complete (header image published 2026-10-01 with 1.1.2; a newer Preview, 659,724 bytes, is in `Mod/` for 1.1.3 and goes out with `update_preview`)
modicon_audit: complete
echo_review_sha: c992f79389746cdab08904785ee2faac55fedb01
publication_changelog_review_sha: 110a0aeac5281c0ef89f4627d99d7011692d9290
social_preview_sha256: 978673bbc2940a9374592af53f0854ab0e28bb770c258870a215b91a4e6167e5
remaining:
  - done 2026-11-09, resume (6, after sleep; protocols already at 87ba2352, TM re-registered, no archived session): protocols read (87ba2352, AGENTS.md markers/Preview-config rule, TOOLING-PITFALLS, nothing for `shootGallery`), TM registered, no archived session. Preview check (TM order): render of `Art/Preview.config.json` byte-identical to committed `Mod/About/Preview.png`; config reformat (icon key on several lines, values unchanged) committed `da30bca` on owner order. Tickets `fdfa`, `46d3`, `54b2` still queued: wait for `RUN_DONE`.
  - read 2026-11-09, TM RUN_DONE fdfa (3 passed, 0 failed, 0 skipped, `exitReason: passed`, evidence `Tests/Pickle/Inbox/gal-camp-c-6e60bc4-1`, the folder `gal-camp-c-6e60bc4` is the older 7ccc-era one, delete both once the gallery is scored). Opened shots 2, 3, 5 (full size, not yet `score-gallery`, wait for 46d3 and 54b2 then rate all 8 together): 2 three baskets readable (empty, one stone, two stones), Nelim chunk in hand but the chunk hides most of the face (smile weak), squirrel in, denser decor, torch low in frame; 3 hay pile and three-log wood pile (small, left edge), Nelim hay in hand, hen, bale, torches, tanning rack not obvious; 5 granite 1/2/6 and marble 6 clearly readable, Soren with chunk at top, hare, decor good.
  - filed 2026-11-09 after the NPT answer (PiT: `the animal "X" stands at (x, z) facing South`, `"X" lies down` then wait ticks, SleepZ flecks hidden, flecks steps built not played): tree `667cac1`, 1.6 tickets `20261109-175234-516-46d3` (shots 1, 4, 6, evidence `gal-camp-d-667cac1`) and `20261109-175235-992-54b2` (shots 7, 8, evidence `gal-camp-e-667cac1`), `wsl-deps.camp.map`. Dog faces South in 1 and 4, peacock in 6, cat and dog lie down in 7 and 8. Shot 8 pawns still stand with plates (no seat step known): judge on the capture, else ask NPT. With `fdfa` (2, 3, 5) all 8 shots are in flight. Keep `Mod/` unchanged until the three `RUN_DONE`.
  - filed 2026-11-09, 1.6 ticket `20261109-175151-413-fdfa` on tree `6e60bc4` (`Mod/` unchanged), `-DepMap wsl-deps.camp.map`: redo of shots 2, 3 and 5 (denser decor, faces to the camera), evidence `Tests/Pickle/Inbox/gal-camp-c-6e60bc4`. Shots 1, 4, 6, 7, 8 reworked too (decor, facing, plinth shot moved, wide frame (188,146)-(202,157)) but not filed: they hold animals whose facing or sleep needs an NPT step (question sent to TM 2026-11-09); file them once answered. Correction to the rating: in shot 1 Soren was present (seen from behind at the top, black hair), not absent.
  - read 2026-11-09, TM RUN_DONE e984 + 7ccc (one launch, 8 passed, 0 failed, 0 skipped, report `gal-camp-a-accf0e4` held both): all 8 captures opened, shrunk to 268 px, rated by `score-gallery`: ALL 8 REDO (image/adequacy/understanding/decoration, mean image 3.6, adequacy 3.4 over 8). Faults: 1 Soren absent, dog back view, j weak at 268 (wide); 2 no smile visible (hair and chunk hide the face), torch and daylily pot absent, bare ground; 3 tanning rack foreground absent, bare ground; 4 dog back view (plan: front), Soren not carrying a bowl, bare ground; 5 decoration sparse (no ash, bare foreground), otherwise readable 1/2/6 and marble; 6 middle granite plinth empty and hidden under Nelim, peacock walks away (plan: front), gold not on the vacstone plinth; 7 cat stands (plan: asleep), ground bare, granite vs kuratheris contrast good at 268 px; 8 pawns stand with plates (plan: seated on stools), dog standing (plan: asleep), wide so storage tiny at 268 (j weak). Next: rework scenarios of `12-workshop-camp.feature` (denser decor around subject, Soren in frame in 1, animals facing camera, plinth gold set, seated eat, tighter zoom for 1 and 8), refile in two tickets of 4. Old Inbox captures deleted (rule: a REDO capture is deleted); no owner contact before the whole gallery passes.
  - note 2026-11-09 for the gallery runs: `-List` shows `tests=45` for e984 and 7ccc (likely the discovered total, 5adc ran only its 8 filtered scenarios); if a run reports many more than 4 scenarios, the filter did not reach it, tell the TM. Unconfirmed with NPT: dyed-colour step for `Apparel_TribalA` on a colonist (used `wears ... dyed rgb`, exists in the old camp feature), kuratheris andesite may not contrast with granite at 268 px (judge on the capture). Subtitle drafts are in section "Shotlist".

  - filed 2026-11-09, 1.6 gallery tickets on tree `accf0e4` (`Mod/` unchanged), `-DepMap wsl-deps.camp.map` (rebuilt from the Sanctuary map + framework, Extra Stone, VFE Props and Decor): `20261109-162607-897-e984` (scenes 1 to 4: untidy camp, three baskets, wood pile, large pots), evidence `Tests/Pickle/Inbox/gal-camp-a-accf0e4`; `20261109-162610-846-7ccc` (scenes 5 to 8: granite stacks, plinths, a pot and a stack, the tidy camp), evidence `Tests/Pickle/Inbox/gal-camp-b-accf0e4`. Two tickets of 4 (a ticket over about 5 scenarios is killed). Wait for `RUN_DONE`; open every capture, shrink to 268 px, run `score-gallery` (image, adequacy, understanding, decoration at 4/5 or REDO), no owner contact before the whole gallery is done. Keep `Tests/Pickle/Mod` and `Mod/` unchanged until then.
  - done 2026-11-09, `write-shotlist`: shotlist (8 scenes + window) in section "Shotlist", plan 5.0 on every scene, Nelim and Soren (NSB). Scenarios written in `12-workshop-camp.feature` (header = shotlist, 8 scenarios), `11-workshop-captures.feature` and old `Art/Gallery/1-` to `9-` (and `Gallery-clean`) removed with `git rm` (rule of 2026-11-06; the Steam page keeps the old images until the new gallery is uploaded). `Check-ShotlistVsScenario.ps1` OK, `Check-Steps.ps1` 0 problem, `Rule-OwnValues` pass. Changes from the plan: no forced job (item in hand and facing only), shot 6 shows Gold, an empty granite plinth and Jade with Nelim holding Silver, Soren has no age step (none exists). Not done: `PUBLICATION.md` gallery table and subtitles (stale until the gallery is finished), DepMap and tickets (`rate-gallery` next, run `wsl-deps.camp.map`).
  - resolved 2026-11-09: Ayla, Doka and Tahu are dropped (outside NSB, no validation asked): the shotlist uses Nelim and Soren, both NSB, free by the rule of 2026-11-05. No owner question left.
  - done 2026-11-09, 8.n: owner said "oui" to leave `playTests[1.2.0]` for `shootGallery[1.2.0]` (8.i closed on the read captures and `Player.log` checks, English and French; Russian on 1.7 cannot run, no languages). Protocols read (b1463127). Next: `sync-nsb-npt` then `write-shotlist` (`shootGallery` start), no capture before the shotlist. Gallery weak points of 2026-10-23 `rate-gallery` stay the input.
  - read 2026-11-09, resume (4, after sleep): 1.6 ticket `5adc` finished (`stones` en, `exitReason: passed`, 8 scenarios, 8 passed, 0 failed, 0 skipped, peak 2888 MiB). All 14 `@review` captures opened and judged by the session: wooden basket empty, one item (cloth, [1]), full (steel and cloth, [2]); cloth basket empty and full; wooden large pot empty and with berries ([1]); granite chunk stack at one, two and six ([1], [2], [6], growing visibly); marble stack at six (lighter stone, right colour); wooden plinth and vacstone plinth showing gold (name, count 1); wood pile, hay pile, meal shelf, textile bundle each with one item. Names, counts and sprites correct, no clipping, no overlap, no error. 8.d closes on what was read. Evidence minified to `Tests/Pickle/Evidence/p16-review-en-1f9c47e` (summary, junit, peak-ram), Inbox empty. Protocols read (493400ba, only `docs/PICKLE.md` skimmed: `-List` PAUSE line meaning), TM registered, no archived session of this mod, Preview committed 2026-11-06 so not re-rendered. Still open: 8.b `FRENCH_REVIEW.md` rename (ask Audit), 8.i owner read, `social_preview_sha256` stale (Check-Status WARN), STATUS.md 48 KB (owed trim to `Docs/runs/`).
  - filed 2026-11-08 (read above), 1.6 ticket `20261108-170558-619-5adc` (`@review` captures of `03-contents-review`: basket, pot, stack, plinth, piles; English, `wsl-deps.stones.map`, tree `1f9c47e`, `Mod/` unchanged), evidence `Tests/Pickle/Inbox/p16-review-en-1f9c47e`. Why: the captures of `ab3e` were deleted unopened when the evidence was minified (session error, owner 2026-11-08: the session opens and judges `@review` captures itself, the owner only validates what the session cannot see). Wait for `RUN_DONE`; open every capture before minifying; 8.d closes on what was read.
  - read 2026-11-08, 1.6 ticket `ab3e` (`stones` fr, tree `0ccdfbc`, `RUN_DONE` exit 1, `exitReason: failed`, 153 scenarios, 145 passed, 4 failed, 4 skipped, peak 4333 MiB): every scenario of this mod's features passes in French (French names, research tab Stockage, containers, save and reload, third-party stone, perf). The 4 reds belong to Pickle's own upstream suite "entry flow" (NPT correction via TM; not PickleTools features) (`the main menu is clickable`, `a button is clickable at another interface scale`, `a page's bottom buttons drive the stack`, `select, gizmo, inspect, dialog, and evidence steps all work`): tag `btn:New colony` not found, they click the English label while the run is French. They played only because the filter had no suite name (153 scenarios, negations sweep every suite): any refile puts the suite name before `::` (`<suite>::<scenario>`) or excludes "entry flow" in French runs. No refile owed: our scenarios are green. 8.c French replay after the wording change: closed for this mod (no red of ours). Evidence minified to `Tests/Pickle/Evidence/p16-stones-fr-0ccdfbc` (summary, junit, peak-ram), Inbox empty.
  - done 2026-11-08, resume (3, after sleep): protocols read (a3bf1451, diffs skimmed: AUDIT 8.m wording, scripts docs, nothing for `playTests`), TM registered, no archived session of this mod, Preview committed 2026-11-06 so not re-rendered. 1.6 ticket `ab3e` still awaits `RUN_DONE`; keep `Mod/` unchanged.
  - done 2026-11-08, owner validated the Preview render of `699e6ce` (icon bottom-left, panel bottom-right): icon corner question closed, nothing to restore.
  - refiled 2026-11-08, 1.6 ticket `20261108-160904-728-ab3e` (same as `0c29`: `stones` fr, filter `!11-workshop-captures,!12-workshop-camp`, `wsl-deps.stones.map`, tree `c2be717`, `Mod/` unchanged), evidence `Tests/Pickle/Inbox/p16-stones-fr-0ccdfbc`. Azure lane fixed (Cloud b8b419f). Wait for `RUN_DONE`; read `summary.json` then `junit.xml`; if green closes 8.c French.
  - read 2026-11-08, TM: `0c29` RUN_DONE exit 9 "disk full", game never started, only `no-report.txt` (azure VM cannot create `/repo/pickle-reports-wsl`, infrastructure, no verdict on the mod). Cloud checks; TM warns when lane fixed, then refile same ticket (same filter, same evidence dir `p16-stones-fr-0ccdfbc`). Do not refile now. Filed entry follows:
  - filed 2026-11-08, 1.6 ticket `20261108-155826-863-0c29` (`stones` fr, filter `!11-workshop-captures,!12-workshop-camp`, `wsl-deps.stones.map`, tree `0ccdfbc`, French hay pile and leather bundle wording changed after the last 1.6 French pass), evidence `Tests/Pickle/Inbox/p16-stones-fr-0ccdfbc`. Wait for `RUN_DONE`; read `summary.json` then `junit.xml`; if green closes 8.c French.
  - done 2026-11-08, 8.m code review `2896810..HEAD`: diff read (`About.xml` description text, French `ThingDef.xml` hay pile and leather bundle wording validated by the owner 2026-10-16, two images), no code, no defect; `code_review_sha` moved to HEAD, revue du diff : images et texte seuls. 8.l `tested_on` updated. Still open: 8.b `FRENCH_REVIEW.md` to `TRANSLATION_REVIEW.md` rename (ask Audit, regeneration would empty cells), 8.c no 1.6 French replay after the French text change, 8.d/8.i owner reads.
  - done 2026-11-08, resume (2, after sleep): protocols read (3270e267, only `scripts/README.md` diff, nothing for `playTests`; `Mark-ProtocolsRead -Force`, dirty files of another session not read), TM registered, no archived session of this mod, Preview committed 2026-11-06 so not re-rendered. 1.6 ticket `0c29` still awaits `RUN_DONE`. Owner call still open: Preview icon corner (see below).
  - done 2026-11-08, resume: protocols read (8d5d60d6, diffs skimmed: wording, docs/1.7.md owner moved to Audit, AUDIT 9.e bis subtitles, nothing for `playTests`), TM registered, no archived session of this mod, Inbox and Parked empty. Preview NOT re-rendered: uncommitted `Art/Preview.config.json` (not this session's) dropped `icon.corner: bottom-left` and moved `panelAnchor`; render put the badge bottom-right over the description (cut at "every con") with fit-title WARN (348 touches badge); outputs reverted, config left as found. Owner call: restore `"corner": "bottom-left"` or accept.
  - open 2026-10-16, gallery subtitles (burned in `Art/Gallery/1-` to `9-`, `.jpg`, clean `.png` in `Art/Gallery-clean/`): the Steam page still holds the old unsubtitled images, owner re-uploads `1-` to `9-`; French hay pile and leather bundle wording changed (validated 2026-10-16), the new description goes out with a CI `update_description`; `code_review_sha`, `echo_review_sha` and the `PUBLICATION.md` + `CHANGELOG.md` review are stale (`Mod/` and description changed); the French `map`/`stones` passes replay with the 1.7 run; English leather-bundle wording still to propose upstream.
  - open 2026-10-15, echo `echo-source.png` (owner's, from the accepted gallery) replaces `echo-preview.png`; Preview rendered again (`Render-Preview.cjs`, badge still `1.6`: the badge becomes `1.7` in the same commit as `<li>1.7</li>`), `echo_review_sha` and `social_preview_sha256` updated. Not done: upload of the new `About/Preview.png` as the GitHub social preview (web settings, owner login); `Art/echo-preview.png` still on disk, unused.
  - open, 1.7 migration, target `v1.2.0` (owner's choice 2026-10-12; AUDIT.md "Passe 1.7", 881278f, provisional): (a) green 1.6 `playTests` 8.n first; (b) green Pickle run on 1.7 (`Run-PickleWsl.ps1 -Mod <dir> -Game <absolute WSL path of rimworld17> -PickleSrc <Rimworld-Pickle#63 build>`, with `XDG_CONFIG_HOME`/`CONFIG` isolated, else staging refuses); not before the pilot RetroJoyRenew is green; (c) only after that green run: `<li>1.7</li>` in `supportedVersions` (About.xml and the Pickle companion), then the `[Unreleased]` CHANGELOG entry becomes `## [1.2.0] - <dry-run day>` in the date commit; (d) set `tested_1_7: yes` and add a `Docs/runs/` line. `<li>1.7</li>` without a green run is forbidden. No DLL: no `1.7/` folder, no LoadFolders. Tag `v1.2.0` is created by the CI after the dry-run and the owner's approval; the session does not tag. `About.xml` is still 1.6 only; the CHANGELOG draft sits in `[Unreleased]`.
  - superseded (was waiting) 2026-10-13, 1.7 run (session marker blue): the Ticket Manager (Rôle TM) refuses to file the ticket because `Submit-PickleRun.ps1` has no `-Game` and no isolated config (`SUBMIT.md`, "Ce que la demande ne transmet pas"); the owner assigned the worker/launcher change to the "RimWorld 1.7 Waylith Engine update" session. When it reports ready, send the Ticket Manager the request: `map` without `-Filter` (English, French, Russian) and `stones` (English, French) without the gallery features, one request per language, `-EvidenceDir `p17-<pass>-<lang>-<sha>` (folder deleted 2026-10-19, Inbox sort; text trace in this STATUS and Docs/runs/), `-Label` with the mod SHA. Priority is the Ticket Manager's. Pilot RetroJoyRenew not green yet at the last report.
  - planned, after a green 1.7 run: a pull request to upstream `bbradson/Adaptive-Storage-Neolithic-Module` with the 1.7 declaration and the run result (owner's yes, 2026-10-13); not opened before.
  - note: the basket `drawSize` `(2,2)` is seen in game on 1.1.3 (capture of the wooden basket full, `438d`: a basket of normal size, no error).
  - unverified: `@review` captures of the `stones` passes: three opened (English: wooden basket full, third-party andesite pot in French; French replay: research window on the Stockage tab, "Stockage néolithique" and "Présentoir néolithique" read correctly). The others were deleted unopened with the raw reports; their scenarios are green and the opened ones show no defect. Decide at `shootGallery` whether more are needed.
  - note, 2026-10-11: `Mod/About/ModIcon.png` weighs 35.9 KB (AUDIT.md 2.b asks 20 to 30 KB); the owner validated it as is (override, chat 2026-10-11).
  - open, `publish` (AUDIT.md 13.b, 2026-10-10): public Renew mod, so a `drafted` row goes into `USE_THIS_INSTEAD.md` (old item Adaptive Storage Neolithic Module 3033901895, new item 3806101377, names, authors, packageIds, versions). Virginie posts one comment on Mlie's Workshop page (3396308787); the session writes it in BBCode in `PUBLICATION.md` and hands it to her as a numbered orange step with the clickable link. Row statuses: drafted, posted, not_applicable. The register has no row for this mod yet.
  - unverified: the Steam copy loaded in game. The file half is automated (Tests/Test-SteamCopy.ps1) and compares against the newest tag `v1.1.2`; the game half is the owner's: `RimWorld/Mods` holds a development junction with the same packageId.
  - unverified: the adult-content boxes of the Workshop item. Owner declared, not checkable without a login.
  - open: GitHub issue #3 (performance). A Pickle benchmark passed 5/5 (again on 2026-10-09, fr perf replay) and did not reproduce the reported cost: 24 filled pots +0.061 ms/tick against about +0.347 reported. Not an ASF-only A/B. Open pending the reporter's versions, save and logs.
  - scope, decided 2026-09-21 by the owner: backward compatibility with the former per-stone buildings, the original mod's refusal (`incompatibleWith adaptive.storage.neolithic`) and the mod-list icon are checked statically, as are the architect menu, the dropdown groups, frames under construction and the inspect-pane card. No in-game pass for them, so no `incompat` map. A new game is not relevant: the mod adds content to an existing game.
  - note: Russian vacstone (six entries) was written by Claude from Odyssey's own term and not reviewed by a Russian speaker. Disclosed in the README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About description.
  - note: in French and Russian the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk"). It comes from the chunk def and upstream dropped the translation hook. Not a defect of this mod.
  - note: French validated by Virginie 2026-10-08 (corrections applied, `FRENCH_REVIEW.md` regenerated). English is upstream's and untouched.
protocols_read_sha: 87ba23529d46e79e0cab82fbb7e48efc09b1caf7
---
# Adaptive Storage Neolithic Renew: status

Read by sweep across every mod. Lives at root, never inside `Mod/`, so Steam never gets it. Journal of earlier work (audits, stage history, every run) moved verbatim to `Docs/runs/history.md` on 2026-10-10; recover older text with `git log -p -- STATUS.md`.

## Where the mod stands

- **Published:** `v1.1.3` (2026-10-11, tag at `e47cceb`, run `38092165205`, Steam item `3806101377`, public). Previous `v1.1.2` (`cd28780`) = rollback target; regression green (2026-10-02).
- **Target:** `1.1.3`, published 2026-10-11 (CHANGELOG `[1.1.3] - 2026-10-11`, `PUBLICATION.md` section 6). `Mod/` changes since `v1.1.2`: `About.xml` (description now generated from Markdown source), `ModIcon.png`, `Preview.png`, `Basket/ThingDef.xml` (`drawSize` `(2,2)`), French `ThingDef.xml` (nine descriptions, Virginie's review). Nothing in `Mod/` changed since `010cc34`; later commits = documents.
- **Old vocabulary:** previous `workflow_stage: preTest` = old name (AUDIT.md, section 16: `preTest` maps to `writeTests`). Re-audit result: `playTests[1.1.3]`; left for `shootGallery[1.1.3]` on 2026-10-10 (stones passes green, code review done).

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

## Shotlist (written 2026-11-09, `shootGallery[1.2.0]`, plan only, no capture, no scenario yet)

Story: "Noon at the camp". Nelim (protagonist, the owner's colonist) and Soren (NSB male alter ego, created by the scenario) tidy the neolithic camp of Nelim's tribe on `bare-clearing` (centre (195, 152), plain earth, no roof), 21 C, clear sky. Start 12:00, each picture waits 5 more game minutes (about 208 ticks per 5 min, +60 settle). Same outfit all day: Nelim in the fixture pants and corset plus `Apparel_TribalA` dyed ochre #B8742A, long loose hair (`Roo_Royal_LongHD`, no hat), `face kit is "smile"`; Soren in `Apparel_TribalA` dyed #3B3A36, `face kit is "smile"`. Temperature held at 20 (no sweat). Common decor around the fire: `Campfire` (195,152) lit, two `TorchLamp`, two `Stool`, `VFEPD_TanningRack`, `VFEPD_BrewingBarrel`, `VFEPD_HayBaleLarge`, `Plant_Daylily` fully grown, ash and straw on the ground; each corner has its own cluster. Loose chunks, logs and berries lie about in shot 1 and are stored by shot 8: the tidying is the story. Anonymous NSB fauna only. Decor removed after each picture.

| # | name | time | frame | what the picture says |
| --- | --- | --- | --- | --- |
| 1 | camp-1-noon | 12:00 | wide, zoom 6, fire centred | The camp is untidy at noon, the storage waits to be filled. Nelim, log in hand (`holds "WoodLog" in hand`, job `HaulToCell` forced toward the wood pile), steps toward the empty wood pile; Soren picks a chunk off the ground (forced `Haul`); labrador lies facing the camera. |
| 2 | camp-2-baskets | 12:05 | tight, zoom 2.8, baskets foreground left | What goes in, shows. Three baskets (empty, one stone, full); Nelim, `ChunkGranite` in hand, one tile from the middle basket, faces it, smiling; squirrel on the tile beside the full basket. Torch and daylily pot behind. |
| 3 | camp-3-piles | 12:10 | medium, zoom 4 | Fuel is stacked as it comes. Wood pile with logs and hay pile; Nelim, `Hay` in hand, at the edge of the hay pile; hen pecks at hay; tanning rack in the foreground. |
| 4 | camp-4-pots | 12:15 | tight, zoom 3 | Food for noon. Large pots (berries, milk, grain) lit by a torch; Soren carries a bowl of `Milk` toward the milk pot; labrador noses the pot, seen from the front; hay bale and barrel foreground. |
| 5 | camp-5-stacks | 12:20 | tight, zoom 2.5 | Stone piles up, in two materials. Granite stacks at 1, 2, 6 chunks and a marble stack of 6; Soren, `ChunkGranite` in hand, at the 2-stack; hare between the stacks. |
| 6 | camp-6-plinths | 12:25 | tight, zoom 2.5 | The tribe's treasures. Wood and vacstone plinths each showing gold and an item; Nelim sets `Gold` on the vacstone plinth (in hand, forced job); peacock walks toward the camera, front view. |
| 7 | camp-7-another-mod | 12:30 | medium, zoom 4 | A stone from another mod gets its own buildings. Identical pots and stacks of granite and kuratheris's stone side by side; Soren carries a chunk of that stone to its stack; cat sleeps between. |
| 8 | camp-8-tidied | 12:40 | wide, zoom 6 (closing) | The camp is tidy: ground clear, meal shelf and textile bundle filled; Nelim and Soren eat on the stools by the fire (forced job `Ingest`). |
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

k (series): one story (who, where, day, rhythm 12:00 to 12:40 by 5 min steps); wide 1 and 8, medium 3 and 7, tight 2, 4, 5, 6; opening 1 (mess) and closing 8 (tidy, mirrors 1).

Plan confidence (rule of `score-gallery`): 5, 5, 5, 5, 5, 5, 5, 5, mean 5.0 (no capture yet). Risks, not points: kuratheris stone may not contrast enough with granite at 268 px (check on first capture); steps "holds in hand" and "forced into the job" exist in `steps.md` (ColonistRace), exact forced-job target syntax to read at scenario writing; `Apparel_TribalA` dyed colour step to confirm with NPT; interface-hiding steps of NPT may replace this suite's own. Director's pass (Opus sub-agent, 2026-11-09): kept zoom 6 for shot 1, loose items for the "tidying" story, closing shot 8, time-order renumbering, tighter zooms for 3 to 6, split of piles and shelf, no "arm out/stoops/fan tail/points" gestures; not kept: none rejected.

Verdict after the run: to fill (gap between plan and image is what the next shotlist learns from).

## NSB (sync 2026-11-09, `shootGallery[1.2.0]`)

Places read: 2026-11-09 Tribe read: 2026-11-09 (animals catalogue, "Qui une galerie peut utiliser", gallery colonists; roster and profiles not opened: no NSB colonist is used) Steps read: 2026-11-09 (`steps.md` ScreenshotStudio and StageDecor, first read, no earlier date)

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

## What makes this sheet stale

- Run in game: fill `tested_on`, strike from `remaining` what run covered.
- Workshop upload: add run ids and SHA to `Docs/runs/history.md`.
- Change to `Mod/`: passes above no longer cover delivered content; say which scenarios to replay.
- Change to Defs, patches or language files: reset `localization`, `translation_en`, `translation_fr` to `unchecked` until revalidated.
