# Rebuilding the Preview

`Preview-source.png` is the unmodified text-free illustration. `preview.html` composes it
directly at 896 x 504; its only palette source is `preview-palette.json`. The version is
read from `../Mod/About/About.xml`.
The Renew suffix is a direct title span at 65% size in secondary ink. The renderer checks
its font and contrast separately from the primary title and summary.

**The Preview also carries the ModIcon, detoured, bottom-left, tilted `+15deg`** (owner's rule,
2026-09-29): `ModIcon-cutout.png` (`cutout-icon.cjs`, flood-filled from the border on the
1254 px source so only the near-black background goes transparent, the mascot's own outline
untouched) is composed by `preview.html`'s `.icon` rule. Left, not right, because the text
block sits bottom-right (`.text`): the two never overlap. Re-run `cutout-icon.cjs` by hand
only if the icon source changes; its output is committed. Reference implementation:
`ManyHappyReturns/Art/README.md`.

The gallery's first image is a byte-for-byte copy of the Preview, `Art/WorkshopScreenshots/00-preview.png`
(owner's rule, 2026-09-29, `PUBLISHING.md`). Recopy it whenever the Preview is regenerated, or the two
drift apart silently.

Use Node.js with `playwright` and `sharp` available, Chrome/Chromium, and the Segoe UI fonts.
Set `NODE_PATH` if the packages are outside normal resolution paths, and `CHROME_PATH` if
using an existing browser instead of Playwright's bundled Chromium. From the repository:

```powershell
node Art/render-preview.cjs
```

The script serves the repository only on loopback for the duration of rendering, waits for
fonts and images, verifies the actual font families, and measures contrast against the
rendered background. It writes `../Mod/About/Preview.png`, `preview-268.png`,
`preview-background-qa.png` and `preview-qa.json`. Review both final sizes visually after
any change. A contrast below 4.5:1, fallback font, or PNG over 900,000 bytes fails the build.

The current mod has no status tag. Adding one requires adding its actual text, checking its
platform font and rendered contrast, and updating the renderer's QA coverage accordingly.
