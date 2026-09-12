# Rebuilding the Preview

`Preview.png` is the unmodified text-free illustration. `Preview-source.png` preserves the
same original. `preview.html` composes the source directly at 896 x 504; its only palette
source is `preview-palette.json`. The version is read from `../Mod/About/About.xml`.
The Renew suffix is a direct title span at 65% size in secondary ink. The renderer checks
its font and contrast separately from the primary title and summary.

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
