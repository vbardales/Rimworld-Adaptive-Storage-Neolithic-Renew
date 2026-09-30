# Protocol documents read for this mod

A log of what was read, at which version, and whether it was of use, so that a later
session rereads a document only when it has moved. "Version" is the last commit touching
the file in its repository (monorepo `C:\Users\nelim\Documents\rimworld`, short hash), as of
2026-09-30. `unread` means not opened yet, not judged useless. The earlier log (2026-09-28)
cited hashes of the protocols repository that the monorepo cannot resolve, so every row was re-read or re-marked.

| Document | Version | Read 2026-09-30 | Useful for this mod |
| --- | --- | --- | --- |
| `AUDIT.md` | 90d51374 | in full (275 lines) | yes: chain, `done -> tested` criteria, title rule, Pickle rules (no run from a session) |
| `AGENTS.md` | 90d51374 | in full (loaded as project instructions) | yes: gate order, evidence retention, CI rules |
| `TRANSLATIONS.md` | 90d51374 | in full (213 lines) | yes: gender switch, `FRENCH_REVIEW.md`, French review by Virginie |
| `MOD_SETTINGS.md` | 90d51374 | in full (107 lines) | only for the `not_applicable` case |
| `Rimworld-Release-Admin/docs/OPERATIONS.md` | b70348b | in full (112 lines) | yes: dry-run of exact SHA, gallery is manual |
| `PUBLISHING.md` | 90d51374 | lines 1-260 of 782 | partly: gallery naming `0-`, `1-`… (applied), Preview icon rule, licence, thanks. Rest (publication policy, comments, CI sections) unread this time |
| `STYLE_RIMWORLD.md` | 90d51374 | unread | not needed: no image generation in an audit |
| `WORKSHOP_COMMENTS.md` | 08878789 | unread | comments already posted 2026-09-22, see STATUS.md |
| `scripts/SEARCHING.md` | 90d51374 | unread | unread |
| `PickleTools/README.md`, `Headless/README.md`, `docs/steps.md` | b7620cb | unread | not needed while no run is submitted |
| `Rimworld-Ticket-Dispatcher/docs/WELCOME.md`, `SUBMIT.md` | 623b15b | unread | needed only to submit a run |

## This mod's own documents

`BACKLOG.md`, `NOTES.md`, `BUGS.md` do not exist. Read in full 2026-09-30: `STATUS.md`, this file. `TESTING.md`: first 40 lines.
`CHANGELOG.md`: first 20 lines. `PUBLICATION.md`: the gallery table and rule. `README.md`, `ATTRIBUTION.md`, `LICENSE`,
`Mod/About/About.xml`: not opened (no change since the 2026-09-28 audit). `docs/runs/` holds one file,
`2026-09-23-tested-milestone.md`, cited by STATUS.md.

## What would make a document worth rereading

The commit hash above changed: `git -C <monorepo> log -1 --format=%h -- <file>`.
