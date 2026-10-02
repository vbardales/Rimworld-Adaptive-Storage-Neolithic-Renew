# Rebuilding the Preview

Cleaned up by the owner on 2026-10-02: the per-mod renderer (`render-preview.cjs`, `preview.html`,
`cutout-icon.cjs`) and its QA files are gone. The Preview is now rendered by the monorepo's shared script,
from `Art/Preview.config.json`.

- `Preview-source.png`: the unmodified text-free illustration (background).
- `Preview-original.png`: the first generated version, kept as a visual trace.
- `Preview.config.json`: title, summary, layout (panel bottom-right), background framing, the echo layer.
- `echo.png`: transparent line-art layer, the final asset, used unchanged (`preSized`). Without it the
  Preview cannot be re-rendered. Do not delete it in a cleanup.
- `ModIcon-source.png` (1254 px): source of the icon. The shipped 128 px icon is `Mod/About/ModIcon.png`,
  made by the owner. `Art/ModIcon.ico` (local folder icon, ignored by git) is regenerated from the source PNG.
- `Gallery/`: images to upload by hand, `0-preview.png` first. `0-` is a byte-for-byte copy of
  `Mod/About/Preview.png` (owner's rule, `PUBLISHING.md`): recopy it whenever the Preview changes.

Render from the repository root with the shared script (Node.js, Playwright or Chromium, Segoe UI fonts):

```powershell
node ../scripts/Render-Preview.cjs bottom-right
```

Review the final image visually after any change. The current mod has no status tag.
