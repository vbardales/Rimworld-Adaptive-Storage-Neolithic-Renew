// Recompresses Art/Gallery/1-* to 9-* in place as 256-colour PNGs and checks the Steam gallery limits of PUBLISHING.md:
// each image under 2 MB, the whole folder (0-preview.png included) under 8 MB.
// Run from the mod root: node scripts/Compress-Gallery.cjs   (needs `sharp`, installed in the mod's node_modules)
const fs = require('fs');
const path = require('path');
const sharp = require('sharp');

const dir = path.join('Art', 'Gallery');
const EACH = 2 * 1024 * 1024;
const TOTAL = 8 * 1024 * 1024;

(async () => {
  for (const name of fs.readdirSync(dir).filter((n) => /^[1-9]-.*\.png$/.test(n))) {
    const file = path.join(dir, name);
    const input = fs.readFileSync(file);
    const output = await sharp(input).png({ palette: true, quality: 90, effort: 10, colours: 256 }).toBuffer();
    if (output.length < input.length) fs.writeFileSync(file, output);
  }
  let total = 0;
  let failed = false;
  for (const name of fs.readdirSync(dir).sort()) {
    const size = fs.statSync(path.join(dir, name)).size;
    total += size;
    const over = size >= EACH;
    failed = failed || over;
    console.log(`${name}: ${size} bytes${over ? '  OVER 2 MB' : ''}`);
  }
  console.log(`total: ${total} bytes${total >= TOTAL ? '  OVER 8 MB' : ''}`);
  if (failed || total >= TOTAL) process.exitCode = 1;
})();
