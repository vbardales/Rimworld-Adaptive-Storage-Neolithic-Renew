# Protocol documents read for this mod

Log: what was read, at which version, useful or not. A later session rereads only when the version moved.
Version = last commit touching the file in its repo (monorepo `C:\Users\nelim\Documents\rimworld`, short hash). `unread` = not opened yet, not useless.
Protocol docs live in `vbardales/Rimworld-protocols`: `git --git-dir=../rimworld-protocols.git --work-tree=. log -1 -- <file>` from the monorepo root. Plain `git log` in the monorepo returns the deleting commit `90d51374`.

| Document | Version | Read | Useful for this mod |
| --- | --- | --- | --- |
| `AUDIT.md` | 7fd7475 (2026-09-29) | 2026-10-10 full | yes: chain, `done -> tested`, title rule, Pickle rules (no run from a session) |
| `AGENTS.md` | 7fd7475 (2026-09-29) | loaded as project instructions | yes: gate order, evidence retention, CI rules |
| `PICKLE.md` | diff to 9737688 | 2026-10-10 full | yes: Pickle |
| `TRANSLATIONS.md` | ebadb99 (2026-09-30), working copy modified | 2026-10-10 full | yes: gender switch, `FRENCH_REVIEW.md`, French review by Virginie |
| `MOD_SETTINGS.md` | b83933b (2026-09-23) | 2026-10-10 first 40 lines | only for `not_applicable` |
| `Rimworld-Release-Admin/docs/OPERATIONS.md` | 3c03f51 (2026-09-26) | 2026-09-30 full | yes: dry-run of exact SHA, gallery is manual |
| `PUBLISHING.md` | 915d119 (2026-10-06), working copy modified | 2026-10-10 full (793 lines) | yes: gallery rules of 2026-10-06 (one story, own corner and hour/weather per image, one `Scenario:` per image, read every capture, scene anomalies to NPT via Ticket Manager, redeposit only after its answer), naming, Preview, fail-fast, CI |
| `STYLE_RIMWORLD.md` | ef7e7a9 (2026-09-29), modified | unread | no: no image generation in an audit |
| `WORKSHOP_COMMENTS.md` | 7fd7475 (2026-09-29) | unread | comments posted 2026-09-22, see STATUS.md |
| `GALLERY.md`, `GALLERY-PROPS.md` | — | unread | gallery captures (`shootGallery`) |
| `PUBLISHING-CI.md` | — | unread | before publishing |
| `ANIMALS.md`, `TOOLING-PITFALLS.md` | — | unread | no (mod adds no animal) / several sessions in one repo |
| `scripts/SEARCHING.md` | 50de695 (2026-09-28) | unread | unread |
| `PickleTools/README.md`, `Headless/README.md`, `docs/steps.md` | ff20d89 / ed4e73a / da7c3b0 (2026-09-29) | unread | only to write or debug a suite |
| `Rimworld-Ticket-Dispatcher/docs/WELCOME.md` | 77ca9d7 (2026-09-27) | 2026-10-10 full | yes: submit rules, evidence dir, no `.ico` in `Mod/` |
| `Rimworld-Ticket-Dispatcher/docs/SUBMIT.md` | d07b2b8 (2026-09-26) | unread (options list read for deposit) | options list only |

## This mod's own documents

`BACKLOG.md`, `NOTES.md`, `BUGS.md` do not exist. Read 2026-09-30: `STATUS.md`. `TESTING.md` first 40 lines. `CHANGELOG.md` first 20 lines. `PUBLICATION.md` gallery table and rule. Not opened: `README.md`, `ATTRIBUTION.md`, `LICENSE`, `Mod/About/About.xml` (no change since 2026-09-28). `docs/runs/` holds `2026-09-23-tested-milestone.md`, cited by STATUS.md.

## Rereads

Reread when the version in the table moved. Protocol docs: the `--git-dir` form above. Others: `git log -1 -- <file>` in their own repo.
