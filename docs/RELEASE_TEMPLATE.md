# Release template: updating the Workshop item

Copy this checklist for each release and fill in the brackets. It was written after `1.1.0` (2026-09-24) and records what
that release showed: the workflow uploads content and a change note. The header image, description, title and tags are sent
only when an opt-in option is set (section 3); visibility and everything else on the Steam page stay manual.

- Repository: `vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew`, stable branch `main`
- Workshop item: `3806101377`, package `nelim.adaptivestorageneolithic`
- Version: `[X.Y.Z]` (a new version; a tag is never reused). Tag and release are created by the CI as `v[X.Y.Z]`.

## 1. Before touching anything

- [ ] `STATUS.md` says `stage: tested` for the tree being released, and `docs/runs/` holds the in-game runs of that tree
      (the runs of a superseded build prove nothing about this one).
- [ ] The static suites are green on the commit (GitHub Actions `Mod static tests` and `workflow script tests`).
- [ ] Nothing else is queued for this tree: a change to `Mod/` after the dry-run needs a new dry-run and a new SHA.

## 2. Files to edit, in one commit, before the dry-run

The workflow reads these from the pinned commit, so they must be final before the dry-run.

- [ ] `CHANGELOG.md`: add `## [X.Y.Z] — YYYY-MM-DD` below an empty `## [Unreleased]`. Its text becomes the GitHub release notes.
      Say only what is true of the shipped tree; a sentence such as "not yet played" must not survive the release.
- [ ] `PUBLICATION.md`, section "Update notes": add a heading `### X.Y.Z` followed by one fenced block. That block is the Steam
      change note (BBCode: `[h3]`, `[list]`, `[*]`). The workflow finds it by the heading; older notes stay below.
- [ ] `Mod/About/About.xml`: the description is not uploaded, but keep it equal to the description in `PUBLICATION.md`
      when the text changed, so the in-game upload path stays coherent.

## 3. Dry-run, then publish

1. Push, then note the full 40-character SHA of the commit: `[SHA]`.
2. Dry-run (no Steam contact, environment `release-dry-run`):

   ```bash
   gh workflow run publish-tag.yml --repo vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew --ref main -f ref=[SHA] -f version=[X.Y.Z] -f mode=dry-run [-f update_preview=true] [-f update_description=true] [-f update_title=true] [-f update_tags=true]
   ```

   The four options are off by default. Use the same options for the dry-run and the publish: the script of step 4 refuses otherwise.

3. Read the log, not the green tick. Check: the commit is on `main`, tag `v[X.Y.Z]` does not exist, the `## [X.Y.Z]` section is found,
   the staged file count and size are the expected ones (this mod has no assembly: no `Assemblies/`, no README), the item id
   and package id match `Mod/About`, the change note printed is the intended one, and the last lines say
   `DRY RUN: nothing was sent to Steam`. Record the run id and the SHA.
4. Publish, launched with the script that refuses without a dry-run of the same SHA and prints the run to approve:

   ```bash
   Rimworld-Release-Admin/scripts/dispatch-publish.sh vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew publish-tag.yml [SHA] [X.Y.Z] [--preview] [--description] [--title] [--tags]
   ```

5. Virginie approves the `steam-production` environment on the run page (*Review deployments*, *Approve and deploy*).
   No session approves it.
6. If the upload succeeded and only the `tag-and-release` job failed: *Re-run failed jobs*. Never *Re-run all jobs*: it uploads again.

Docs-only commits after the dry-run (`STATUS.md`, `docs/`) do not change what is published: the workflow reads the pinned commit.

## 4. What the workflow never touches (manual on the Steam page)

Decide for each line whether it changed in this release. "CI option" is the opt-in that lets the workflow send it; the dry-run prints the value on the page next to the one that would be sent. Without the option the field is left as it is.

| Field | CI option | Changed in this release? | Source | Done |
| --- | --- | --- | --- | --- |
| Description (BBCode) | `update_description` | [yes / no] | the fenced block of section 1 of `PUBLICATION.md` (8000 characters at most) | [ ] |
| Header image | `update_preview` | [yes / no] | `Mod/About/Preview.png`, a PNG under 1 MiB | [ ] |
| Title | `update_title` | [yes / no] | the `<name>` of `About.xml` | [ ] |
| Tags | `update_tags` | [yes / no] | `Mod` plus one tag per `<supportedVersions>` entry; replaces the whole set | [ ] |
| Gallery images, in order | none, manual | [yes / no] | `Art/WorkshopScreenshots/`, order in section 2 of `PUBLICATION.md` | [ ] |
| Visibility | none, manual, never sent | [yes / no] | the owner | [ ] |
| Steam comments and thanks | [yes / no] | section 4 of `PUBLICATION.md`, once, only after the item is public | [ ] |

Pitfall seen on `1.1.0`: after a manual paste the description of the page had the `[h2]WHAT CHANGED[/h2]` heading twice, while
`About.xml` and `PUBLICATION.md` had it once. Paste from the fenced block only, then check the count with the command below.

## 5. Verify after the upload

A green GitHub release does not prove Steam is up to date. Read the public data (no login needed for a public item):

```bash
curl -s -X POST "https://api.steampowered.com/ISteamRemoteStorage/GetPublishedFileDetails/v1/" -d "itemcount=1&publishedfileids[0]=3806101377"
```

- [ ] `time_updated` (Unix seconds) is just after the end of the upload step of the run.
- [ ] `file_size` matches the staged size printed by the run (`1.1.0`: 2,622,395 bytes for 205 files).
- [ ] `visibility`: `0` public, `1` friends only, `2` private, `3` unlisted. An item that can be read without login is not private.
- [ ] In `description`, each `[h2]` heading appears once (the `1.1.0` check counted `WHAT CHANGED`).
- [ ] The change notes page lists the new update and its text:
      `https://steamcommunity.com/sharedfiles/filedetails/changelog/3806101377`.
- [ ] The gallery shows the images in the order of section 2 of `PUBLICATION.md`, and the header image is the current `Preview.png`.
- [ ] GitHub: tag `v[X.Y.Z]` points to `[SHA]` and release `[X.Y.Z]` exists with the `CHANGELOG.md` section as notes.

## 6. Record it

- [ ] `STATUS.md`: the run id of the dry-run and of the publish, the SHA, the date, what the page showed, and what is still manual.
      State what was checked and what was not (the API does not return the gallery or the change note text).
- [ ] `docs/runs/`: only if in-game runs were played for this release; raw reports stay on disk and follow the keep-or-delete rule of
      `tests/Pickle/README.md`.

## Reference: `1.1.0`

| | |
| --- | --- |
| Dry-run | run 35966977983, commit `0ab6a586cf7c0182821ad3da2f23aa71f6d8d2ab`, 2026-09-24 |
| Publish | run 35967550073, same commit, approved by Virginie |
| Tag and release | `v1.1.0` on `0ab6a58`; release `1.1.0` is "Latest"; `1.0.0` kept as history |
| Steam | updated 2026-09-24 07:05 UTC, 2,622,395 bytes |
