# Protocol documents read for this mod

A log of what was read, at which version, and whether it was of use, so that a later
session rereads a document only when it has moved. "Version" is the last commit touching
the file in its repository (monorepo `C:\Users\nelim\Documents\rimworld`, short hash), as of
2026-09-30. `unread` means not opened yet, not judged useless. The earlier log (2026-09-28)
cited hashes the monorepo cannot resolve. **The protocol documents live in `vbardales/Rimworld-protocols`** (`git --git-dir=../rimworld-protocols.git --work-tree=. log -1 -- <file>` from the monorepo root); a plain `git log` in the monorepo returns the commit that deleted them (`90d51374`), which this log had wrongly recorded an hour earlier, now corrected.

| Document | Version | Read 2026-09-30 | Useful for this mod |
| --- | --- | --- | --- |
| `AUDIT.md` | 7fd7475 (2026-09-29) | in full (275 lines) | yes: chain, `done -> tested` criteria, title rule, Pickle rules (no run from a session) |
| `AGENTS.md` | 7fd7475 (2026-09-29) | in full (loaded as project instructions) | yes: gate order, evidence retention, CI rules |
| `TRANSLATIONS.md` | ebadb99 (2026-09-30), working copy modified, not committed | in full (213 lines) | yes: gender switch, `FRENCH_REVIEW.md`, French review by Virginie |
| `MOD_SETTINGS.md` | b83933b (2026-09-23) | in full (107 lines) | only for the `not_applicable` case |
| `Rimworld-Release-Admin/docs/OPERATIONS.md` | 3c03f51 (2026-09-26) | in full (112 lines) | yes: dry-run of exact SHA, gallery is manual |
| `PUBLISHING.md` | e0411cc (2026-09-29) | lines 1-260 of 782 | partly: gallery naming `0-`, `1-`… (applied), Preview icon rule, licence, thanks. Rest (publication policy, comments, CI sections) unread this time |
| `STYLE_RIMWORLD.md` | ef7e7a9 (2026-09-29), modified not committed | unread | not needed: no image generation in an audit |
| `WORKSHOP_COMMENTS.md` | 7fd7475 (2026-09-29) | unread | comments already posted 2026-09-22, see STATUS.md |
| `scripts/SEARCHING.md` | 50de695 (2026-09-28) | unread | unread |
| `PickleTools/README.md`, `Headless/README.md`, `docs/steps.md` | ff20d89 / ed4e73a / da7c3b0 (2026-09-29) | unread | needed only to write or debug a suite |
| `Rimworld-Ticket-Dispatcher/docs/WELCOME.md`, `SUBMIT.md` | 77ca9d7 (2026-09-27) / d07b2b8 (2026-09-26) | WELCOME.md in full; SUBMIT.md unread | WELCOME: yes (submit rules, evidence dir, no `.ico` in `Mod/`); SUBMIT: only for the options list |

## This mod's own documents

`BACKLOG.md`, `NOTES.md`, `BUGS.md` do not exist. Read in full 2026-09-30: `STATUS.md`, this file. `TESTING.md`: first 40 lines.
`CHANGELOG.md`: first 20 lines. `PUBLICATION.md`: the gallery table and rule. `README.md`, `ATTRIBUTION.md`, `LICENSE`,
`Mod/About/About.xml`: not opened (no change since the 2026-09-28 audit). `docs/runs/` holds one file,
`2026-09-23-tested-milestone.md`, cited by STATUS.md.

## What would make a document worth rereading

The hash above changed. Protocol documents: the `--git-dir=../rimworld-protocols.git` form above. Others: `git log -1 -- <file>` in their own repository.
