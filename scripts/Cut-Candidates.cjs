// Cuts the camp pictures of feature 12 into Art/Gallery/ as 7- to 12- (the candidates, after the noon set 1- to 6-; 1280 px wide, 256-colour PNG), without touching the uploaded set.
// Run from the mod root: node scripts/Cut-Candidates.cjs <screenshots folder>   (needs `sharp` in the mod's node_modules)
const fs = require('fs');
const path = require('path');
const sharp = require('sharp');

const source = process.argv[2];
if (!source) { console.error('usage: node scripts/Cut-Candidates.cjs <screenshots folder>'); process.exit(2); }
const out = path.join('Art', 'Gallery');
fs.mkdirSync(out, { recursive: true });
const shots = [
  ['manual--camp-1---the-whole-camp-at-noon--step0.png', '7-the-whole-camp-at-noon.png'],
  ['manual--camp-2---three-baskets--step0.png', '8-three-baskets.png'],
  ['manual--camp-3---fuel-and-stone--step0.png', '9-fuel-and-stone.png'],
  ['manual--camp-4---food-for-noon--step0.png', '10-food-for-noon.png'],
  ['manual--camp-5---the-tribe-s-treasures--step0.png', '11-the-tribes-treasures.png'],
  ['manual--camp-6---every-stone-in-its-place--step0.png', '12-every-stone-in-its-place.png'],
];
(async () => {
  let total = 0;
  for (const [from, to] of shots) {
    const buffer = await sharp(path.join(source, from)).resize({ width: 1280 }).png({ palette: true, quality: 90, effort: 10, colours: 256 }).toBuffer();
    fs.writeFileSync(path.join(out, to), buffer);
    total += buffer.length;
    console.log(`${to}: ${buffer.length} bytes${buffer.length >= 2 * 1024 * 1024 ? '  OVER 2 MB' : ''}`);
  }
  console.log(`candidates total: ${total} bytes`);
})();
