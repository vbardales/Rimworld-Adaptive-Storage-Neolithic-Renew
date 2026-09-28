# Protocol documents read for this mod

A log of what was read, at which version, and whether it was of use, so that a later
session rereads a document only when it has moved. "Version" is the last commit touching
the file in its own repository (the protocols repository for the first block).

Read on 2026-09-28. `unread` means not opened yet, not judged useless.

## Protocols repository (`vbardales/Rimworld-protocols`)

| Document | Version | Read | Useful for this mod |
| --- | --- | --- | --- |
| `AUDIT.md` | c5ca0c0 (2026-09-26), 233 lines read; the working copy has since gained 14 uncommitted lines on local Windows folder icons | in full | yes, it is the audit workflow: chain of stages, `done -> tested` criteria, session title rule |
| `AGENTS.md` | 3a1d2cb | in full | yes, gate order (settings, translations, `preTest`), evidence retention, CI publish rules |
| `MOD_SETTINGS.md` | b83933b | in full | yes, but only for the `not_applicable` case: no settings page, no shortcut, and the absence must be justified from the sources |
| `TRANSLATIONS.md` | f5c2d9d | in full | yes, defines `localization`, `translation_en`, `translation_fr` and the DefInjected checks |
| `PUBLISHING.md` | 95c6dfd | lines 65-100 (end of the description block, `packageId`, start of the sources section) and 150-210 (translations gate, licence suffixes) only; **101-149 and everything from 211 on are unread** | partly |
| `STYLE_RIMWORLD.md` | 7311308 | not opened, only searched for `Renew` | unread |
| `WORKSHOP_COMMENTS.md` | read at 785c5a5; now dea856b, which is this session's own correction of the two rows of this mod (drafted to posted) and nothing else of what was read | in full at 785c5a5 | yes, the register and the method for comments; the two comments of this mod turned out to be already posted, so the method was not needed here |
| `scripts/SEARCHING.md` | 372c447 | unread | unread |

## Other repositories

| Document | Version | Read | Useful for this mod |
| --- | --- | --- | --- |
| `Rimworld-Release-Admin/docs/OPERATIONS.md` | 851a155 (2026-09-27) | in full | yes, publish rules, dry-run of the exact SHA, what the CI cannot send (gallery, visibility) |
| `PickleTools/README.md` | 90836e7 (2026-09-27) | unread | unread |
| `PickleTools/Headless/README.md` | 90836e7 | unread | unread; only needed to submit a run, which this session does not do |
| `PickleTools/docs/steps.md` | 90836e7 | unread | unread |
| `Rimworld-Ticket-Dispatcher/docs/WELCOME.md` | 77ca9d7 (2026-09-27) | unread | unread |
| `Rimworld-Ticket-Dispatcher/docs/SUBMIT.md` | 77ca9d7 | unread | unread |

## This mod's own documents

`BACKLOG.md`, `NOTES.md` and `BUGS.md` do not exist in this repository. What was actually
opened on 2026-09-28, and how far:

| Document | How far |
| --- | --- |
| `TESTING.md` | in full |
| `STATUS.md` | read in full on 2026-09-28, then rewritten the same day: sections from before 2026-09-22, which described the superseded implementation, were removed (58 KB down to 14 KB) |
| `CHANGELOG.md` | the first 15 lines and a search for `0.1.0` |
| `PUBLICATION.md` | searched for the visibility and comments passages, not read |
| `Tests/Pickle/README.md` | one search for `@wip` |
| `Mod/About/About.xml` | searched for the `packageId`, the name and the links |
| `Tests/Pickle/Mod/About/About.xml` | the description line only |
| `README.md`, `ATTRIBUTION.md`, `LICENSE` | **not opened**; only their size was read. They were rewritten by the 2026-09-22 upstream integration, so nothing seen in earlier sessions applies |

`docs/runs/` holds 14 run summaries: ten of 2026-09-23, two of 2026-09-22, one of 2026-09-21 and one of 2026-09-13. Left as they are on purpose: they are the run history, and `STATUS.md` cites most of them.

## What would make a document worth rereading

The commit hash above changed. Compare with
`git --git-dir=<protocols>.git log -1 --format=%h -- <file>`; for the other repositories,
`git -C <repo> log -1 --format=%h`.
