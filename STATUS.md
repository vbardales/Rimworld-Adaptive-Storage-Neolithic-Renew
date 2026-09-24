---
localization: complete
translation_en: complete
translation_fr: complete
mod:          Adaptive Storage Neolithic Renew
packageId:    nelim.adaptivestorageneolithic
repo:         Rimworld-Adaptive-Storage-Neolithic-Renew
visibility:   public
detached:     yes
stage:        published
licence:      open
licence_at:   the mod's LICENSE file, MIT, and its README says so too
dependencies: declared
showcase:     complete
tested_on: 2026-09-23 in the WSL, see the resolved (done -> tested) entry and docs/runs/
workshop:     3806101377
settings_audit: not_applicable
build_audit: not_applicable (current upstream architecture has no assembly)
audit_revision: upstream integration commit (see git HEAD)
audit_evidence: STATUS.md, "Current audit under AUDIT.md — 2026-09-22"
remaining:
  - resolved 2026-09-24 (done -> tested): the in-game Pickle suite of this integrated tree (upstream `main` 2bc3fe4, stone-as-stuff, no assembly) was played in the WSL on 2026-09-23 and every `@requires` condition ran, with `@wip` gone (features 08 and 11 carry `@requires`, 09 and 10 were removed as re-tests of PickleTools' label matching). All green, `exitReason: passed` each: English `wsl-deps.map` 01 7/7, 02 4/4, 03 8/8, 04 1/1, 08 3/3, 12 5/5 (`docs/runs/2026-09-23-en-full.md`, `-en-full2.md`); French `wsl-deps.map` 05 4 passed + 1 skipped by requirement (`-fr-full3.md`); Russian `wsl-deps.map` 07 2/2 (`-ru-full3.md`); stones English 06 2/2 and stones French 05+06 7/7 with `[K]Extra Stone` and Odyssey (`-stones-en.md`, `-stones-fr.md`); Workshop captures 11 6/6 (`-workshop.md`). Every `@review` capture was opened; the two research-window captures, the pot and chunk-stack hover labels in FR, EN and RU, the third-party andesite scenes and the six Workshop frames were accepted. Findings and fixes found on the way, all defects of the suite and none of the mod: an ambiguous ThingDef/GraphicsDef name (`ASNeolithicPlinthStone`) and a back-compat alias in the "does not exist" check, both replayed green. The Core-only pass is not playable (the fixture save needs the DLCs: `-core-en.md`). Logs: no mod error in any kept `Player.log`; the only errors are the test companions saying they load no content, and the earlier suite failures. Static suites: GitHub Actions `Mod static tests` green on HEAD, 173 assertions across 29 XML files and 171 textures, 123 installed-translation assertions (this session has no PowerShell 7). A new game is not relevant (content added to a game, the fixture save is an existing save); no settings, so no options or MainButtons check. Not tested and stated: the architect menu, frames under construction and the inspect-pane card (checked statically); the English capture of feature 01 was not opened separately, feature 08 shows the same tab. Observation, not a defect of this mod: in FR and RU the stone's own name keeps the English word "chunk" ("Grand pot en granite chunk") because it comes from the chunk def and upstream dropped the translation hook. Owner's earlier 2026-09-22 decision to sprint to 1.0.0 without a retest is superseded by this evidence.
  - 2026-09-22 Workshop gallery: the current integrated tree's six capture scenarios passed 6/6 in the Nelim screenshot studio, at maximum zoom over the upper-right orange part of its emblem (summary in `docs/runs/2026-09-22-workshop-captures.md`, raw report on disk in `tests/Pickle/Evidence/workshop-captures-2026-09-22/`). All six PNGs were copied, deterministically cropped and inspected for legibility in `Art/WorkshopScreenshots`. The owner still needs to approve the final images and upload them to Steam. This presentation pass does not replace the full English/French/Russian gameplay suite.
  - investigated 2026-09-22, GitHub issue #3 performance report: a dedicated Pickle benchmark passed 5/5. Each case measured 3,486 ticks on the same save and camera. Post-warm-up no-building control was 0.866 ms/tick; one empty pot 0.680; one filled pot 0.757; twenty-four filled visible pots 0.927 (+0.061 ms/tick versus the control). This does not reproduce the reported 360-to-320 TPS magnitude (about +0.347 ms/tick) or a persistent cost from merely loading the module. The issue remains open pending the reporter's exact versions, save, HugsLib log and paired DPA captures; this controlled run is not an ASF-only A/B and does not disprove the report.
  - publication correction: PUBLICATION.md and About.xml now carry the revised Steam BBCode description, the single required Workshop dependency (Adaptive Storage Framework), update notes, the ordered gallery paths and two unposted comment drafts. The global rimworld/WORKSHOP_COMMENTS.md register records those drafts and prevents reposting comments already sent for other projects. Update the live Workshop description and replace the six screenshots only after the new runtime pass; existing v1.0.0 captures describe the superseded Workshop-based code.
  - resolved 2026-09-21 (preTest -> done): the Pickle suite is written in tests/Pickle (41 scenarios, 7 features, 22 @review captures, no step assembly), scope justified in tests/Pickle/README.md and TESTING.md. It was played eight times in the WSL the same day. At 20 scenarios: 19 played of 19 (16 passed, 1 failed on a defect of the suite, 2 skipped as @wip), then English 20 of 20 (18 passed), then French 20 of 20 (all passed), exitReason passed each time. Widened afterwards, four passes: English 32 of 32 with 3 failed (my wrong assumption that Pickle sees the implied blueprint defs), then English 31 of 31 and French 31 of 31, 22 passed each with the 9 @wip skipped, exitReason passed; then the French feature 05 alone, 9 of 9 with 6 passed and 3 failed (two ambiguous defNames and a guessed blueprint label, all the suite's own). Every failure so far was a defect of the suite, none of the mod. 05 was rewritten (8 scenarios) and replayed in French: 8 of 8 passed, exitReason passed. Results: docs/runs/2026-09-21.md (raw reports deleted 2026-09-23).
  - decided 2026-09-21 by Virginie: the crash on a stone chunk with no colour, reported on the original mod's page, is fixed in the patches (see CHANGELOG). Scenarios 9 (original mod refused, and any backward compatibility) and 10 (mod-list icon) are out of scope, RimWorld mechanisms checked statically (Test-Mod.ps1 now reads incompatibleWith and the icon and preview files); scenarios 3 and 4 (architect menu, dropdown groups) are checked statically too (research prerequisite of each building, dropdown group of each generated one), since no Pickle step reads the menu. A new game is not relevant: the mod is content added to a game, and the fixture colony, a save made without it, already covers that. Test-Mod.ps1: 1,410 assertions.
  - not covered by any scenario, on purpose: the architect menu itself (checked statically), frames of a chantier under construction, and the inspect-pane description card. Nothing else is left to a manual pass once the unplayed features above have run.
  - published content (tested -> prepublished), state 2026-09-24: version `1.1.0` was uploaded to item `3806101377` by the manual workflow `.github/workflows/publish-tag.yml` (no assembly, so no build; adapted from Skill Icons; it sends `Mod/` and the change note under `### 1.1.0` of PUBLICATION.md, never description, title, preview or visibility). Dry-run: run 35966977983, commit `0ab6a586cf7c0182821ad3da2f23aa71f6d8d2ab`, 2026-09-24, log read (commit on `main`, tag `v1.1.0` absent, `## [1.1.0]` found, 205 files staged, 2.62 MB: About 4, Defs 21, Languages 6, Patches 1, Textures 171, LICENSE, ATTRIBUTION.md; no assembly, no README; item id and packageId match; `workshop.vdf` carries only the change note; "nothing was sent to Steam"). Publish: run 35967550073, same SHA, launched with `dispatch-publish.sh`, approved by Virginie on `steam-production`; both jobs green. Evidence read afterwards: GitHub tag `v1.1.0` on `0ab6a58` and release `1.1.0` ("Latest", notes = the CHANGELOG section; `1.0.0` kept); Steam public API, item updated 2026-09-24 07:05:36 UTC, `file_size` 2,622,395 bytes (the staged size); the change notes page lists "Update: 24 Sep" with "Upstream source integration". Observed on the page, not changed by a session: the description on Steam had `[h2]WHAT CHANGED[/h2]` twice while `About.xml` and PUBLICATION.md have it once (the workflow never sends the description, so it came from a manual paste; Virginie updates the page fields herself); the item is readable without login and the API returns `visibility 0` (public), whereas this file used to say private, so the owner decides the intended visibility; `Mod/About/Preview.png` changed at `8a69614` after the `0.1.0` upload and the workflow does not send it, so the page may still show the older header image. Page re-read on 2026-09-24 after the owner's manual update, from the public page and the public API (no login): GALLERY OK, six images in the page order, each byte-identical (SHA-256, size) to the six files of section 2 of PUBLICATION.md, in the order 1 to 6. DESCRIPTION NOT OK: the API text still has `[h2]WHAT CHANGED[/h2]` twice, its only difference from the block of section 1 of PUBLICATION.md, and `time_updated` is still the time of the upload, so the description was not edited after it. HEADER IMAGE NOT OK: the page still serves the `Preview.png` of the `0.1.0` upload (608,863 bytes, SHA-256 aeb6f9bd...), not the current file (673,694 bytes, 428414a8...). NOT VERIFIABLE without login: the adult-content boxes. Stage stays `tested` until the description and the header image are fixed and re-read. STILL MANUAL, owner only: the adult-content boxes, the description, the six gallery images (`Art/WorkshopScreenshots/`, sent to Virginie on 2026-09-24), the header image, visibility, the thanks messages once the item is public. Template for the next release: `docs/RELEASE_TEMPLATE.md`. Docs and STATUS.md commits after the dry-run do not change what was published; the stage stays `tested` until the page is complete.
  - prepared 2026-09-24, version `1.1.1` (header image only; `Mod/` identical to `1.1.0`): `.github/` is now generated by `Rimworld-Release-Admin/scripts/generate-publish-workflow.sh` from the single publish template (values in `.github/publish.config.json`). Inputs `update_preview`, `update_description`, `update_title`, `update_tags` are off by default, act only on a publish run (after Virginie approves `steam-production`), and the dry-run prints each one next to what the public page has now; visibility is never sent (manual, owner). Dry-run: run 35971407130, commit `037da4ba3946b89a3556fbfec74bb2ad4f97bee4`, version 1.1.1, `update_preview=true` only; log read: 205 files staged as for 1.1.0 (no assembly), change note = the `### 1.1.1` block, preview to send `Mod/About/Preview.png` 673,694 bytes sha256 428414a8..., preview on the page now 608,863 bytes sha256 aeb6f9bd..., "the page serves a different image: it would be replaced", description, title and tags not sent, "nothing was sent to Steam". Also green on that commit: `Mod static tests`, `workflow script tests`. PUBLISHED 2026-09-24: run 35971816069 (dispatched by a session with `dispatch-publish.sh ... 1.1.1 --preview`, approved by Virginie), both jobs green; the log shows `options: update_preview=true` only and steamcmd "HTTP upload for UGC file previewfile_3806101377.png (length=673694) ... success", so steamcmd accepts the absolute path of the staged copy and a 673,694-byte image (the `Error: Download of package (steamcmd_...) failed` lines of steamcmd's own bootstrap did not stop the upload). Read afterwards from the public page and API: the served header image is byte-identical to `Mod/About/Preview.png` (673,694 bytes, sha256 428414a8...); tag `v1.1.1` on `037da4b` and release `1.1.1` ("Latest") exist. Not established: the change notes page (fetched right after) lists no "1.1.1" entry and the API `time_updated` is still 07:05:36 UTC of the 1.1.0 upload, so either a cache or Steam records no update when the content is identical; recheck later before relying on it.
  - resolved 2026-09-24 (tested -> published), page read from the public page and API after 1.1.1: item public (`visibility 0`), title "Adaptive Storage Neolithic Renew", tags `Mod` and `1.6` (equal to `supportedVersions`), content 2,622,395 bytes (the 205 staged files), description identical to the block of section 1 of PUBLICATION.md with each `[h2]` heading once (the owner fixed the doubled `WHAT CHANGED` by hand), six gallery images byte-identical to `Art/WorkshopScreenshots/` in order 1 to 6, header image identical to `Mod/About/Preview.png`, GitHub tags and releases `v1.1.0` and `v1.1.1` created by the CI. Owner-declared, not verifiable without login: the adult-content boxes. The owner reports on 2026-09-24 that the Steam comments and thanks (PUBLICATION.md section 4) are posted; not checked by a session. Still manual and the owner's: visibility changes. The publish template this repository's `.github/` is generated from is `Rimworld-Release-Admin` commit `d5c5b0f` (template stamp `261e5b0c90b3`, `generate-publish-workflow.sh --check`: "Up to date"). It was regenerated on 2026-09-24 with `--replace` from that commit exported on its own (not from the CI/CD session's uncommitted working tree), replacing the first generation from `81b6432` that the 1.1.0 dry-run and the 1.1.1 publish used; commit `e222682`, `workflow script tests` (43 tests) and `Mod static tests` green on it. The workflow file itself did not change. No CI dry-run exists for the regenerated scripts: a dry-run of `1.1.1` on a new commit stops at the check that tag `v1.1.1` already exists on another commit, and no new version is being prepared. Instead the same `steam-publish.mjs` was run locally in dry-run mode for version 1.1.1 with the four options on, against the real public page (a scratch copy with `semantic-release-steam` 2.1.3 and a stand-in for the missing `rsync`, nothing written to the repository, nothing sent to Steam): change note read, 4297-byte description, title and tags compared, and the page already has this image (sha256 428414a8...), this description, this title and these tags ("nothing would change"). Its staging counted 376 files because the ignored `.dds` files are on this disk, where the CI counts 205. The run of record for the regenerated template will be the CI dry-run of the next release. Next releases: `docs/RELEASE_TEMPLATE.md`.
  - resolved 2026-09-24 (tested -> prepublished), release position: GitHub tag and release `1.0.0` stay on `8fb1177` as history of the earlier implementation, never uploaded to Steam (owner decision 2026-09-24: version the current tree `1.1.0`, delete nothing). The release that identifies the delivered tree is `v1.1.0`, created by the CI on the published SHA.
  - optional: case-sensitive runtime check of the Russian DefInjected folder (Steam Deck). Russian vacstone coverage was completed on 2026-09-21 (six entries, written by Claude from the official Odyssey term, not reviewed by a Russian speaker; disclosure to repeat in the AI-GENERATED section at prepublished).
session:      local_db1227c9-d5d1-40e9-991f-1efee093b86b
updated:      2026-09-24
preview_audit: complete (recomposed 2026-09-22: text block moved bottom-right on owner's word; contrast and size re-checked by Art/render-preview.cjs, still passes)
modicon_audit: complete
---

# Adaptive Storage Neolithic Renew — status

## Current upstream integration — 2026-09-22

**Stage rolled back from `tested` to `done`.** User feedback correctly identified that the first
release copied the older Workshop package instead of the authors' newer GitHub source. The delivered
`Mod/` tree now follows `bbradson/Adaptive-Storage-Neolithic-Module` main at `2bc3fe4`, including the
stone-as-stuff architecture, save migration patch, current definitions, balance values, graphics and
integrated textures. Continuation metadata, icon, preview and Workshop id remain local.

The obsolete Harmony translation assembly and the three per-stone generator patches are removed.
Static checks pass, and the Pickle companion compiles with material-aware build/blueprint steps. No
gameplay evidence predating this replacement applies to the current files; a new Pickle run is required
before returning to `tested`, and the live Workshop description and screenshots must then be corrected.

The audit sections below are retained as dated history and do not override this current section.

## Current audit under AUDIT.md — 2026-09-22

**Stage corrected from `prepublished` to `tested`.** The checkout is clean at
`531ff954e5fe33502c46e0b8d65a2f65b1a5223d`, identical to `origin/main`; no local work was
present at audit start. The former stage is not cumulatively established: AUDIT.md requires
an existing version tag and a published GitHub release for `tested -> prepublished`. Tag and release
`1.0.0` now exist, but point to the initial packageId commit `8fb1177`, not the current release tree.
A private Workshop item (`3806101377`) and its committed `PublishedFileId.txt` do not substitute
for a reproducible tag/release pair.

| Control | Result |
| --- | --- |
| `pwsh -NoProfile -File tests/Test-Mod.ps1` | **PASS:** 1,410 static XML and generator-contract assertions. |
| `pwsh -NoProfile -File tests/Test-InstalledTranslations.ps1` | **PASS:** 28 installed-assembly assertions; six stones materialized. |
| `Check-DefInjected.ps1` with the installed framework target and assembly | **PASS:** 118 keys, 0 errors. |
| `Check-XmlFields.ps1` with all installed framework assemblies | **PASS:** 28 files, no unknown fields. |
| Direct image inspection | **Validated:** `ModIcon.png` is 128x128 (28,385 bytes); `Preview.png` is 896x504 (673,694 bytes, below 1 MB) and was opened. Existing preview QA records Segoe UI and contrast 5.35:1 or higher for every text element. |
| Runtime | **Not run by this audit:** AUDIT.md expressly forbids launching RimWorld here. Historical `tested_on` evidence is preserved above and not restated as a new run. |

All independent completed audits remain retained: settings are `not_applicable`, and English,
French and localization are `complete`. Publication readiness still requires a versioned release
whose tag contains the delivered tree; `1.0.0` is intentionally attached to the earlier packageId
commit. The remaining Steam actions are recorded separately in PUBLICATION.md and are not claimed complete.

## prepublished — 2026-09-22, owner decision, then the item created

**Stage moves from `done` to `tested` and on to `prepublished` on 2026-09-22, by Virginie's explicit decision,
sprinting toward a v1.0.0 publication.** The 2026-09-21 Pickle evidence below (English, French and Russian
passes, the third-party stone, the research tab) stands. Two things it does not cover: the colourless-chunk
patch fix committed afterwards (`ad91e5a`), which only static checks have exercised since, and the six
Workshop-page pictures (`tests/Pickle/Mod/Pickle/Features/11-workshop-captures.feature`), written and compiled
but never played. Both were queued for a Pickle run this morning; every launch refused with "Sa partie Windows
tourne" — her own game was open, and `Run-PickleWsl.ps1` refuses any launch, the WSL included, while it is.
Rather than wait, she accepted the 2026-09-21 state as sufficient for this release. Nothing here claims those
two items were seen running: see `tested_on` in the front matter and the `remaining` entry dated 2026-09-22 for
exactly what is and is not covered.

**While this was being written, `Mod/About/PublishedFileId.txt` appeared on disk** (09:11:29, id `3806101377`),
which reads as Virginie uploading the item herself, by hand, in her own running game — the only way that file
is written. It was committed and pushed on its own immediately (`a008025`), per PUBLISHING.md: lost, the next
upload creates a second item instead of updating this one. `workshop:` above now carries the id. This happened
ahead of the normal order (the page screenshots and the git tag were still pending), by her own action, not
mine; I have not touched RimWorld or Steam. A public fetch of the item page returns a generic access error,
consistent with Steam's default: RimWorld never calls `SetItemVisibility`, so every new item starts **private**.
Not established here: whether she has already subscribed to it, tested it, or switched it public — that is
hers to say. Section 5 of `PUBLICATION.md` and AUDIT.md step 11 cover what is left: subscribe and test, switch
to public by hand, then post the three thank-you messages, none of which a session can do.

## Current audit under AUDIT.md — 2026-09-21

**Retained stage: `done` (the audit first retained `preTest`, previously `done`, until the Pickle suite below was written the same day).** `stage` uses the workflow's literal states
(dansMonoRepo, horsMonoRepo, ModIcon générée, Preview générée, preOptions, options, l10n, preTest,
done, tested, prepublished, published); the old codes `port`/`showcase` of the historical sections
below are not in use. The retreat is caused by one criterion added to `preTest -> done` by the
current AUDIT.md: Gherkin/Pickle tests written and their scope justified. Everything else that
led to `done` on 2026-09-13 is re-established on the current revision.

Audited revision `ae237ea0103df912b531075d330c6c8089b2fddc` = `origin/main` (GitHub PUBLIC/main).
Local changes at audit start, preserved: this STATUS.md (uncommitted edits of 2026-09-13) and the
untracked `tests/workflow-reaudit-2026-09-13/` (deleted 2026-09-23; summary in `docs/runs/2026-09-13-audits.md`). This audit adds this section and
[`docs/runs/2026-09-13-audits.md`](docs/runs/2026-09-13-audits.md). RimWorld was not
launched (no process running on Windows or WSL); no image, feature or publication was produced.

| Transition | Assessment on `ae237ea` |
| --- | --- |
| dansMonoRepo -> horsMonoRepo | **Validated.** Standalone repo, origin exists, GitHub public, HEAD = origin/main, STATUS initialised, public/open justified by the authors' MIT notice, names coherent, English README/ATTRIBUTION/LICENSE/CHANGELOG, root and `Mod/` copies of LICENSE and ATTRIBUTION identical. |
| horsMonoRepo -> ModIcon générée | **Validated.** Development finished, build validated, `Mod/Assemblies/NeolithicRenew.dll` unchanged since the 2026-09-13 binary-equivalence proof (Source and DLL hashes identical). ModIcon 128x128 PNG in `Mod/About/`. The object-count/32 px finding stays an accepted exception (user, 2026-09-13: "moi, j'override, je valide"), same file. |
| ModIcon générée -> Preview générée | **Validated.** `Mod/About/Preview.png` 896x504 PNG, 608,863 bytes, opened and viewed; no concrete doubt. |
| Preview générée -> preOptions | **Validated.** English description, name and `Renew` suffix conform, no linking word to scale, warm suffix and blue accent distinct. (The final Source-code link is a `prepublished` criterion in AUDIT.md.) |
| preOptions -> options | **Validated: `settings_audit: not_applicable`.** Source/Defs/Patches contain no ModSettings, settings window, MainButtonDef or tab; therefore no empty page and no shortcut. |
| options -> l10n | **Validated.** 1,310 static and 28 installed-assembly assertions pass; six Keyed entries EN and FR; DefInjected 112 keys, 0 errors; French covers all owned fields; the C# hook holds no player-facing literal. English comes from native Def text. |
| l10n -> preTest | **Validated.** Harmony and the framework are declared in `modDependencies` and `loadAfter` and match real use (Harmony by the C# hook, framework by parents/GraphicsDef); packageIds checked against installed About.xml; Biotech gated by `MayRequire`; Odyssey and third-party stones are generator inputs, not dependencies; no LoadFolders. |
| preTest -> done | **Not established at the first pass, established after the same day's work.** The audit found no Pickle (Gherkin) tests and no justification (no `Tests/Pickle`, no `.feature`). The suite was then written (`tests/Pickle`, 20 scenarios in 5 features; first run 16 passed, 1 failed on a suite defect, 2 skipped, scope and exclusions justified in its README and in TESTING.md). Scenarios with preconditions/actions/expected results exist (TESTING.md); automated and XML tests are written and green, rerun after the Russian edit and the suite (Test-Mod 1,310, installed-assembly 28, DefInjected 118 keys). Pickle execution is not a criterion here. The suite has since been played seven times (see `remaining`); every failure was a defect of the suite, none of the mod. |
| done -> tested | Not evaluated beyond the above; nothing was run in game. `tested_on` stays empty. |
| tested -> prepublished, prepublished -> published | Not reached. Known gaps recorded in `remaining`. |

### Strictly necessary for `tested`

The Pickle suite ran green in English, French and Russian, with and without the stone mod, in its 41-scenario version; the run of 2026-09-21 at 19:03 is the first complete "stones" pass. What remains for `tested`: (the research-tab scenarios were played and read, see `remaining`) a person's look at the captures, and the logs of a real session. Scenarios 3 and 4 are checked statically, 9 and 10 are out of scope and a new game is judged not relevant (decided 2026-09-21). The patch selectors were changed the same day (a chunk with no colour is left alone) and their checks rerun: Test-Mod.ps1 1,410 assertions, installed-assembly 28, DefInjected 118 keys, XmlFields, DefRefs. Settings and shortcut checks are not applicable.

### Optional, not blocking

- A case-sensitive filesystem check of the Russian folder. Russian vacstone coverage was completed
  after the audit (2026-09-21): six DefInjected entries in `Languages/Russian/DefInjected/ThingDef/ThingDef.xml`
  with Odyssey's own term *вакуумит*; README, both ATTRIBUTION copies, TESTING.md, CHANGELOG and the About
  description were updated to say so and to disclose that Claude wrote them. Rerun after the change:
  Test-Mod 1,310 assertions pass; Check-DefInjected 118 keys, 0 errors. Nothing else in the audit is affected.
- GitHub reports the licence as "Other" (the LICENSE carries an added sentence crediting the 1.6 work); a cosmetic point.
- Before a first upload: the description tail, `PUBLICATION.md`, tag and release listed in `remaining`.

## Previous audit under the revised workflow — 2026-09-13 (superseded by the section above)

**Retained stage: done (previously horsMonoRepo), following explicit user acceptance of the icon.** Stage values use the user's literal
workflow states. No parent-monorepo remote is required after detachment. The earlier classification
of its absence as a defect, and the demand to restore it, are withdrawn. Likewise, a recorded game
screenshot comparison and a quantitative palette report are not mandatory Preview evidence when
direct inspection establishes conformity. The records below remain historical, not instructions.

Repository: C:/Users/nelim/Documents/rimworld/AdaptiveStorageNeolithicRenew, distributed root Mod/.
Initial HEAD b0cf4fd plus local translation changes became commit
3406ecefe9f977642516f647a3a43b877388205a during this audit, through independent work.
GitHub PUBLIC/main and pushed 3406ece were verified live. The audited Mod/Source snapshot matches
the final files; the test sources match this revision. Only this status and new audit evidence
are local audit changes. See [commands, results and hashes](docs/runs/2026-09-13-audits.md).

| Transition | Current assessment, independent of earlier gates |
| --- | --- |
| dansMonoRepo -> horsMonoRepo | **Validated.** Autonomous .git and origin, existing public GitHub repository, pushed commit; packageId/name/repository/folder coherent without literal equality. English documentation initialized. Public/open is justified by the original authors' MIT notice and attribution; LICENSE and ATTRIBUTION root/distributed copies match. STATUS initialized. Physical nesting under the workspace does not make it tracked content of the parent repository. |
| horsMonoRepo -> ModIcon generated | **Validated by explicit user exception on 2026-09-13.** The user accepted the existing icon after the object-count and 32 px readability findings were explained: "moi, j'override, je valide". Those visual findings are retained as an accepted style exception, not a remaining correction. PNG 128x128, 28,385 bytes; implementation/build and delivered-binary freshness already validated. No image modification was made. |
| ModIcon generated -> Preview generated | **Validated independently.** Direct inspection at 896x504 and 268 px: coherent overhead camera, tiled worn floor, clear storage subject, warm colour family, no detailed face; no concrete camera/style doubt. PNG 608,863 bytes. No historical generation report, new palette measurement or screenshot-comparison artifact is needed. |
| Preview generated -> preOptions | **Validated independently.** English description; correct name and Renew suffix; no linking words need separate scaling. Warm secondary ink and blue accent clearly differ. Title, suffix and version readable without clipping. Historical layout/palette/fonts/contrast data remains relevant because those inputs are unchanged. |
| preOptions -> options | **Validated: not_applicable.** Source and Def inventory establishes no useful module-specific settings, no ModSettings/GetSettings, no settings-category/window override, and no MainButtonDef or shortcut. Balancing values and per-building storage filters do not justify an extra configuration page; framework-wide options belong to the dependency. Applicable automated checks already passed on unchanged files. Per the user clarification of 2026-09-13, interactive checks belong only to done -> tested and do not block this transition. |
| options -> l10n | **Resource/mechanism checks validated independently.** Native Def English, six paired Keyed resources and French concrete/generated fields covered; placeholders checked. 1,310 static assertions and 28 installed-assembly assertions pass on the shipped DLL, including third-party stone fallback and preservation of successful specific translations. Actual generator output resolves all 112 DefInjected paths with zero errors and zero UNVERIFIED. The former third-party-French and 66-unresolved-target findings are superseded. localization/translation_en/translation_fr record these independent successful checks; the settings prerequisite and user-accepted icon transition now pass. Full hook/UI integration is tracked under final game validation, not misreported as a missing resource. |
| l10n -> preTest | **Validated independently for the installed 1.6 dependencies.** Direct Harmony code and framework/generator XML use match About.xml dependencies and loadAfter; original module incompatible. Biotech graphics are gated with MayRequire; Odyssey/third-party stones are optional generator inputs. No module LoadFolders/multiversion branches require configuration. Existing reference checks remain valid for unchanged Defs/patches. No unsupported version constraint is invented. |
| preTest -> done | **Validated independently for current automated checks and scenario preparation.** 1,310 static assertions, 28 installed-assembly assertions, 28 XML files with no unknown fields, 112 resolved injection paths. TESTING.md records preconditions/actions/expected results, generated translations, new/existing-save scenarios and the limits of standalone tests. Test results refer to the delivered binary. All cumulative prerequisites now pass, including the explicit icon exception. Game scenarios have not run. |
| done -> tested | **Not verified.** No full game scenarios, FR/EN interface/log checks, fresh/existing-save validation, options/persistence or customization integration runs performed. tested_on remains empty. Installed assemblies support the automated tests, but native RimWorld UI control is not available through the enabled computer-control surface. |

The current settings inventory and rationale in the earlier audit remain applicable: the new
translation code adds neither a settings page nor a MainButton. Under the user's clarification,
source verification establishes not_applicable; no in-game absence check is required for options.
A foreign stone mod's untranslated material name is outside this module's translation ownership.

### Strictly necessary for the next transition

To reach **tested**, execute TESTING.md scenarios in RimWorld on a new game and an existing save,
inspect logs, and verify the interface and generated translations in English and French, including
the Harmony hook, blueprints, frames, finished buildings and plinth art. Check applicable inherited
storage/display interactions and save/reload behaviour. Module-specific settings and shortcut tests
are not applicable because none exists. Record actual results and rerun relevant regressions after
any fix. No icon correction is required under the explicit user exception. tested_on remains empty.
### Separate publication note and optional work

About.xml still uses a raw GitHub link instead of the final Steam-formatted Source code on GitHub
link requested by PUBLISHING.md. Resolve this before publication; it is not an extra blocker for
the next transition or for the naming/English-description criteria above. Russian Odyssey coverage
and case-sensitive runtime testing are optional relative to this workflow's required EN/FR scope.
CS1684 from the installed compiler reference is recorded, with successful compilation and tests;
it is not presented as an observed runtime defect.

### Settings clarification applied — 2026-09-13

The user's explicit clarification supersedes the interactive prerequisite in parent MOD_SETTINGS.md,
PUBLISHING.md and earlier audit records for this task. preOptions -> options is established by
source/Def analysis and applicable automated tests; all interactive verification belongs to done -> tested.

Rechecked revision 3406ecefe9f977642516f647a3a43b877388205a: Source/GeneratedTranslations.cs contains
only the translation hook and fallback, with no settings or shortcut registration. Source/Build.ps1
builds that file alone. Searching all owned CSharp/XML for ModSettings, GetSettings, SettingsCategory,
DoSettingsWindowContents, MainButtonDef and MainTabWindow found no such implementation. No LoadFolders
adds another configuration path. The settings matches are storage filters and locks, not a mod-options
page. Existing costs, capacities and research are balancing data; no useful module-specific option
was identified. Dependency-owned global display settings do not justify a duplicate module page.

All Mod/Source hashes still match the tested manifest and test source files match the audited commit.
The prior 1,310 static assertions and 28 installed-assembly assertions remain applicable; no new code
or artificial settings tests were added. settings_audit is therefore not_applicable and options is
validated independently. Missing runtime checks remain only under done -> tested. The icon was still blocking at that time; the subsequent user exception below lifts that block.

### Explicit icon acceptance — 2026-09-13

After the visual deviation was explained, the user explicitly stated: "moi, j'override, je valide".
This accepts the current Mod/About/ModIcon.png, SHA-256
CE64C1B4A4200C52C44239170207C736D530D46D581EEA72CD8C2E17738450CD,
as an exception to the object-count/readability guidance. The earlier observation is preserved;
no claim is made that the image changed or that the original style guidance was met literally.

Rechecked HEAD 3406ecefe9f977642516f647a3a43b877388205a and the audited Mod/Source manifest:
zero file differences; test sources also unchanged. Prior build, XML and automated results remain
valid. With the sole earlier blocker explicitly waived, stage moves from horsMonoRepo to done.
This is readiness for final in-game validation, not a claim of tested status. No publication,
image generation, implementation change or in-game test was performed.

## Earlier audit and validation records — historical

The following earlier remote/Preview requirements and partial translation/build findings are
superseded by the current audit above. They are preserved to retain history and prior evidence.

# Adaptive Storage Neolithic Renew — status

## Current cumulative workflow audit — 2026-09-13

**Authoritative result: `done` -> `dansMonoRepo`.** The user-supplied chain and cumulative
criteria override the older stage vocabulary and the historical statements below. This is
the baseline before gate 1 is fully demonstrated; it does **not** mean the standalone Git
repository was moved back into the parent repository.

Audited HEAD: `b0cf4fdff6fd8e569d85c4f631ce92361d8dc675`, plus the working tree inventoried
in [the evidence manifest](docs/runs/2026-09-13-audits.md). Read parent PUBLISHING.md,
STYLE_RIMWORLD.md, MOD_SETTINGS.md, TRANSLATIONS.md and AGENTS.md. Commands, outputs,
limitations and the pre-edit status are preserved in [audit evidence](docs/runs/2026-09-13-audits.md).

Existing edits were preserved. During the audit, other work added Source/GeneratedTranslations.cs,
Source/Build.ps1, Mod/Assemblies/NeolithicRenew.dll, EN/FR Keyed resources, Harmony metadata
and installed-translation tests. No implementation or image replacement was made by this audit.
The historical claim that no CSharp/build/Keyed exists is therefore superseded. Changes after
the manifest require renewed checks; a successful old check cannot certify the new code.

| Transition | Finding and evidence |
| --- | --- |
| dansMonoRepo -> horsMonoRepo | **Defect:** no parent-monorepo remote points to this mod's GitHub URL (complete remote inventory saved). **Validated:** independent .git and Git top-level; no mod files tracked by parent; origin exists, GitHub PUBLIC/main verified live and HEAD confirmed pushed. The folder is physically nested under the parent workspace but is Git-independent. Names are coherent: nelim.adaptivestorageneolithic, Adaptive Storage Neolithic Renew, Rimworld-Adaptive-Storage-Neolithic-Renew, AdaptiveStorageNeolithicRenew. **Validated:** English README, ATTRIBUTION, LICENSE and CHANGELOG initialized; original installed MIT notice inspected, authors credited, root/distributed LICENSE and ATTRIBUTION identical. public/open is supported; no unofficial/prohibited suffix is required. |
| horsMonoRepo -> ModIcon generee | **Defect:** icon exceeds the one-or-two-object rule; the mascot remains readable but the containers merge at 32 px. Viewed the delivered 128 px PNG and an inspection-only 32 px reduction. **Validated:** 128x128 PNG, 28,385 bytes. **Non verified:** development completion and correspondence between new source and delivered DLL. A separate control build succeeded with one CS1684 reference warning; it did not replace or certify the delivered DLL. Compilation is now applicable. |
| ModIcon generee -> Preview generee | **Validated:** actual PNG 896x504, 608,863 bytes; viewed at full size and 268 px, title/version identifiable, no clipping. Original sources preserved in Art. **Non verified:** current style checklist's quantitative hue-family measurement and comparison against an actual game screenshot. No game or Workshop display was inspected. |
| Preview generee -> preOptions | **Validated in isolation:** English description, correct Renew name/suffix, no linking words requiring reduction; warm secondary ink and blue accent visibly distinct at both sizes. Art/preview-palette.json drives the composition. Historical font and contrast evidence remains applicable to unchanged art/layout/version inputs (minima 6.30/4.87/6.07/6.72). **Defect under PUBLISHING.md:** description contains a raw GitHub URL instead of ending with the required [url=...]Source code on GitHub[/url] link. No new render/contrast measurement was performed. |
| preOptions -> options | **Non verified:** settings_audit=partial; static inventory and rationale below do not establish functioning or absence of UI in game. No RIMMSQOL integration tested. |
| options -> l10n | **Non verified:** new CSharp fallback changes the translation mechanism and coverage, so previous complete localization/English claims cannot certify the current tree. Six paired EN/FR Keyed entries exist and contain meaningful text; generated injection targets and fallback behaviour still need verification. Initial standalone run: 1,276 assertions; rerun after new resources: 1,282. Shared DefInjected check: 112 keys, zero reported errors, 66 UNVERIFIED generated paths. These are not a translation-gate pass. |
| l10n -> preTest | **Validated statically for inspected files:** framework types and generator operations are really used and framework is declared before this mod; new code directly uses Harmony, now explicitly declared/loadAfter. Installed framework also declares Harmony and supports 1.6. Biotech toxipotato graphics use MayRequire; Odyssey vacstone and other chunks are discovered by generators, so these integrations are optional. No module LoadFolders or version folders; single supportedVersion 1.6. No unresolved Def references/parents in the installed-data check. **Non verified:** actual loading/optional-DLC combinations and future dependency versions; no version constraint was invented. |
| preTest -> done | **Validated within scope:** existing functional scenarios have preconditions/actions/expected outcomes; static XML/contracts pass, 28 files pass reflected field checks, installed-data references resolve. **Non verified:** new translation code tests and delivered-binary provenance on a stable snapshot. Installed-translation tests appeared and were being edited during the audit; not executed by this audit to avoid racing their shared outputs. Existing scenarios do not fully cover the new hook, complete FR/EN UI inventory, or the settings gate. |
| done -> tested | **Non verified:** no game scenarios, runtime logs, complete EN/FR UI, fresh/existing save runs, settings/persistence/shortcut checks or regression runs performed. tested_on remains empty. Russian case-sensitive and missing Odyssey coverage remain separately recorded. |

Later isolated successes do not bypass the first failed gate.

### Settings audit

Inventory includes the module's costs, capacity limits, storage filters, research requirements,
graphics thresholds, art generation, new translation hook and inherited framework settings.
Costs/capacities/research are authored balancing values; no concrete player requirement was found
that warrants exposing every constant. Storage contents/filters are per-building game/framework
controls; wood/textile filters intentionally lock to their construction material. The new translation
hook has no player setting. No module settings category or MainButtonDef was found.

The installed framework exposes global contents-tab selection, automatic opening, label style,
zoom hiding/threshold and mouse-over hiding through its own settings category. These are relevant
inherited controls, not evidence of a module-named page or of a module-specific shortcut.
A duplicate page is not automatically warranted. Verify the inherited controls' real effects and
confirm whether a module-specific option has a concrete use; if none, observe absence of an empty
module page and shortcut in a clean game before recording not_applicable. If useful module settings
are required, validate the primary route, hidden optional shortcut, effects and persistence.
No runtime/integration versions are claimed as tested. Installed assemblies permit static checks;
the available computer-control surface does not provide native RimWorld interaction.

### Exact next transition

To reach **horsMonoRepo**, register the existing repository URL
`https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew.git`
as a remote in `C:/Users/nelim/Documents/rimworld`, then verify that registration and the already
established standalone/public/licence/naming/documentation/pushed-commit evidence remain current.
This audit deliberately did not change Git configuration, move files or push anything.
The icon, settings, localization and runtime work listed above concerns later transitions.

## Historical records (superseded where inconsistent with the audit above)

The following records are retained as history, not current certification. In particular,
statements that stage stays done, that compilation is unnecessary, and that localization is
complete do not override the current front matter and audit.

# Adaptive Storage Neolithic Renew — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it. It is tracked by the mod's own repository,
as Anima Song's is.

The fields above were read off the disk on 2026-09-12, and the three that cannot be read off it
were confirmed the same day.

- **`stage` stays `done`.** The port, the showcase, the icon and the test scenarios are finished
  and pushed. Never having been run is not what this field carries: `tested` is a stage of its
  own, and the run itself is recorded by `tested_on` and by the first `remaining` line.
- **`tested_on` stays empty**, meaning never. That is true of nearly the whole repository, not
  only here.
- **The original `remaining` entries carry three lines.** The first two are checks that were impossible rather than
  skipped: the mod has never run, and the case of the Russian `DefInjected` folder only fails on
  a case-sensitive filesystem, which is the Steam Deck and not this machine. The third is a real
  known fault, small and cosmetic.

One field was repaired rather than confirmed: `workshop` held the stray text `reste:`, left by
the sweep that wrote this file. It is empty, which means the mod has never been uploaded.

`stage` vocabulary: `port`, `showcase`, `preTest`, `done`, `tested`, `published`.

`licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.

## What makes this sheet stale

Three events, and none of them corrects it on its own.

- **A run in game.** Fill `tested_on`, move `stage` to `tested`, and strike from `remaining` what
  the run covered. The first four scenarios of `TESTING.md` fall on the first successful load.
- **A Workshop upload.** Fill `workshop` with the item id and move `stage` to `published`.
- **A new icon.** Drop the `defect` line. The regeneration prompt is kept in the mod's showcase
  sheet, which lives in the monorepo and is ignored there.

- **`dependencies`** — `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.

## Preview overlay — 2026-09-12

- Delivered image: `Mod/About/Preview.png`, 896 x 504, 608,863 bytes (under 900 KB).
- Text-free illustration: `Art/Preview.png`, copied unchanged from the preserved
  `Art/Preview-source.png`. No replacement illustration was generated; the original source
  remains available under its distinct existing name. The existing crop is retained.
- Composition and layout parameters: `Art/preview.html`; sole colour reference:
  `Art/preview-palette.json`; renderer: `Art/render-preview.cjs`.
- The veil follows the warm stone/packed-earth surfaces, slightly desaturated. The blue
  accent comes from the folded textile in the storage basket, with saturation and lightness
  increased. Its cool hue clearly separates it from the dominant warm ochre family and
  the secondary ink at both output sizes. The secondary ink follows the dominant ochre
  family of the lit stone, wicker and earth, lightened to pass contrast while retaining
  its colour. It colours the Renew suffix; no status tag is displayed
  because this mod is public/open and its name has no unofficial suffix.
- Existing title and summary preserved, including case and word order. Strong title words
  and summary use exactly the same primary ink. Renew is a direct title span at 0.65em
  (29.9 px), secondary ink, still weight 600. Text begins at (50, 54); title 46 px/600,
  summary 21 px/400; rule 58 x 3 px.
  The dark veil holds its opacity over the text before fading, to maintain contrast across
  the illuminated floor. Text shadow follows the guide. Version 1.6 is read from the highest
  stable supportedVersions entry in the delivered About.xml, not hardcoded.
- Actual fonts verified through Chrome's platform-font API after `document.fonts.ready`:
  Segoe UI Semibold for the title and suffix, Segoe UI Regular for the summary, Segoe UI Bold for the
  version; no fallback. Badge triangle and rotated version use the guide's coordinates.
- Contrast measured on a separate render with text hidden, over EVERY pixel in each full
  text rectangle: primary title minimum 6.30:1; Renew suffix 4.87:1; summary 6.07:1;
  version on opaque badge 6.72:1.
  Tag contrast is not applicable because there is no tag. Evidence: `Art/preview-qa.json`
  and `Art/preview-background-qa.png`.
- Visually checked at 896 x 504 and at 268 px wide (`Art/preview-268.png`): title and version
  identifiable, reduced Renew suffix readable, blue rule visible and distinct from the ochre
  suffix, no overlap or clipping. The small summary is intended for
  the full-size image. Preview, composition sources, palette and QA evidence were pushed
  to GitHub on origin/main in commit 77936db. No Workshop publication performed.

## Automated tests — 2026-09-12

- `tests/Test-Mod.ps1`: 747 assertions passed locally. Covers XML syntax, metadata including
  the published GitHub link, texture paths and casing, translation keys, and static stone
  generator contracts with five, six and seven stone types (15, 18 and 21 buildings).
- Tests, documentation and `.github/workflows/test.yml` were pushed to origin/main in
  commit 9c43cc9. The workflow runs on pushes and pull requests; its remote result has not
  been verified in this session.
- These static checks do not execute the framework in RimWorld or verify rendering and
  hauling. Manual scenarios remain unexecuted, so `tested_on` stays empty and `stage`
  stays `done`.

## Translation audit — 2026-09-13

Applied the new parent-workspace PUBLISHING.md / TRANSLATIONS.md gate to revision
`b0cf4fdff6fd8e569d85c4f631ce92361d8dc675` plus the changes in this working tree.
The existing stage and unexecuted in-game checks are preserved. French remains `partial`;
this audit does not certify the new gate as passed.

- Inventory: all 24 XML files under `Mod/Defs`, all three `Mod/Patches` templates and
  both language folders. There is no owned C# code, assembly, Keyed UI, LoadFolders file
  or version-specific content. Nine concrete buildings contribute 18 label/description
  fields; two research projects contribute four; the research tab contributes one.
  Generated buildings contribute 30 fields for Core, or 36 with Odyssey: 53 or 59
  English/French texts in total. Abstract parent text is counted on concrete children.
- Localization: owned text uses Def label/description fields, including generated labels;
  these admit DefInjected translation. English comes from the Defs and generator templates,
  so an English language folder would duplicate the native source. No owned parameterized
  UI sentences, rich-text tags or grammar rules were found. Graphics identifiers, texture
  paths, dropdown defNames and metadata are not player-facing translation entries.
- French: all 59 Core/Odyssey entries are nonempty and were read for meaning. Fixed
  `brute` to `brut` for granite, sandstone, limestone and marble plinth descriptions.
  Existing ardoise agreement is correct. The automatic generators also accept arbitrary
  third-party chunks, whose generated identities have no bundled French entries: they
  fall back to English. A finite list of six stones does not establish universal coverage.
- `pwsh -NoProfile -File tests/Test-Mod.ps1`: **1,276 assertions passed**. Added checks
  against concrete Defs and inherited English fields, French coverage for both supported
  stone sets, nonempty values, placeholders and duplicate French keys across files of
  the same Def type. The seven-stone scenario checks English but explicitly does not
  certify French coverage for an unknown stone.
- `pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod`:
  **112 keys, zero reported errors, 66 UNVERIFIED generated paths** (36 French, 30 Russian).
  The script explicitly does not implement DefGenerator/PatchGenerator. The standalone
  template tests provide additional structural evidence, but do not turn these findings
  into a successful check against the actual runtime.
- Dependency boundary: inspected the installed framework's `Defs/ThingDefBase.xml`;
  the inherited storage base adds no literal label/description. Storage UI remains
  framework/game-owned. Plinths reference vanilla `NamerArtFurniture` and
  `ArtDescription_Furniture`; those defs exist in installed Core. Their rendered names,
  descriptions and inherited UI still need English/French testing in game.
- Russian is outside the new EN/FR gate. Its six missing Odyssey entries and the existing
  Steam Deck check remain unresolved. Nothing was published or tested in RimWorld.

Reaudit the affected fields after changes to Defs, patches or language resources. Resolve
the French coverage gap and generated-target verification before claiming the gate passed.

## Translation implementation and revalidation — 2026-09-13

This update supersedes the missing-third-party-French and unresolved-generated-target
findings in the earlier translation audit. It does not override the concurrent workflow
or settings audit, and does not certify in-game behavior.

- Added `Source/GeneratedTranslations.cs` and the compiled `Mod/Assemblies/NeolithicRenew.dll`.
  Harmony is now an explicit dependency. The mod constructor patches the early language
  injection pass with a postfix, before vanilla generates blueprints and frames. This order
  was verified in the installed RimWorld 1.6 PlayDataLoader and LoadedLanguage code.
- Six English/French Keyed resources provide complete phrases, with a named CHUNK parameter
  for labels. The fallback uses the chunk's translated label and preserves successful
  DefInjected entries per field. English native text, languages without these resources,
  and unrelated building identities remain unchanged. This adds no settings page or button.
- Rebuilt successfully with `pwsh -NoProfile -File Source/Build.ps1`. The installed game
  reference produces CS1684 about System.Span; the code does not use that type.
- Standalone tests: 1,310 assertions passed. Installed-assembly tests: 28 assertions passed,
  including the delivered fallback code and the actual GeneratorOperation.dll using all
  six installed stone chunks. Field tests bypass Unity constructors and substitute resource
  parameters through a callback, so they are not a full engine or Harmony integration test.
- The shared Check-DefInjected script, given those materialized Defs and the framework,
  checked 112 paths with zero errors and zero UNVERIFIED paths. The earlier 66 unresolved
  generated paths are resolved by this additional evidence. Exact command: TESTING.md.
- Evidence and source/binary SHA-256 hashes: `docs/runs/2026-09-13-audits.md`.
  The separate concurrent audit snapshot is historical and was not rewritten.
- Still unverified: full game load and hook execution, blueprints/frames, finished buildings,
  plinth art and UI in English/French. A third-party stone's own untranslated material name
  remains that mod's responsibility. Settings/runtime gates from the workflow audit remain
  pending; top-level partial statuses are preserved for that reason.
