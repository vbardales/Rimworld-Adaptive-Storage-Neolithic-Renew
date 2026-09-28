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
| `PUBLISHING.md` | 95c6dfd | lines 65-210 only (description block, `packageId`, translations gate, licence suffixes) | partly: the rest is unread |
| `STYLE_RIMWORLD.md` | 7311308 | not opened, only searched for `Renew` | unread |
| `WORKSHOP_COMMENTS.md` | 785c5a5 | in full | yes, the register and the method for the two drafted comments of this mod |
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

`BACKLOG.md`, `NOTES.md` and `BUGS.md` do not exist in this repository. `README.md`,
`CHANGELOG.md`, `ATTRIBUTION.md`, `LICENSE`, `PUBLICATION.md`, `TESTING.md`,
`Tests/Pickle/README.md` and `Mod/About/About.xml` were opened earlier in the session or
checked by search, not reread in full for this log. `STATUS.md` was read only at its top
(the front matter and the first entries): most of its body is truncated in what a session
sees, and it is 58 KB.

`docs/runs/` holds ten one-line-per-run summaries from 2026-09-23.

## What would make a document worth rereading

The commit hash above changed. Compare with
`git --git-dir=<protocols>.git log -1 --format=%h -- <file>`; for the other repositories,
`git -C <repo> log -1 --format=%h`.
