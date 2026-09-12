// Requires Node.js, playwright, sharp and Chrome. Set CHROME_PATH if needed.
// Run from any directory: node Art/render-preview.cjs
const fs = require('fs');
const path = require('path');
const http = require('http');
const { chromium } = require('playwright');
const sharp = require('sharp');
const root = path.resolve(__dirname, '..');
const palette = JSON.parse(fs.readFileSync(path.join(__dirname, 'preview-palette.json')));
const luminance = rgb => rgb.map(x => { x /= 255; return x <= .04045 ? x/12.92 : ((x+.055)/1.055)**2.4; })
  .reduce((a,x,i) => a + x*[.2126,.7152,.0722][i], 0);
const rgb = hex => hex.match(/[0-9a-f]{2}/gi).map(x => parseInt(x,16));
const contrast = (a,b) => (Math.max(a,b)+.05)/(Math.min(a,b)+.05);
(async () => {
  const server = http.createServer((req,res) => {
    const file = path.resolve(root, '.' + decodeURIComponent(req.url.split('?')[0]));
    if (!file.startsWith(root + path.sep)) { res.writeHead(403).end(); return; }
    fs.readFile(file, (err,data) => {
      if (err) { res.writeHead(404).end(); return; }
      res.setHeader('Content-Type', ({'.html':'text/html','.png':'image/png','.json':'application/json','.xml':'text/xml'})[path.extname(file)] || 'text/plain');
      res.end(data);
    });
  });
  await new Promise(resolve => server.listen(0, '127.0.0.1', resolve));
  let browser;
  try {
    browser = await chromium.launch({ executablePath: process.env.CHROME_PATH || undefined, headless: true });
    const page = await browser.newPage({ viewport: {width:896,height:504}, deviceScaleFactor:1 });
    await page.goto(`http://127.0.0.1:${server.address().port}/Art/preview.html`);
    await page.evaluate(() => window.previewReady);
    const session = await page.context().newCDPSession(page);
    await session.send('DOM.enable'); await session.send('CSS.enable');
    const {root: dom} = await session.send('DOM.getDocument');
    const report = { dimensions:[896,504], fonts:{}, boxes:{}, contrast:{}, tag:'absent: public/open, no unofficial suffix' };
    for (const selector of ['h1','.suffix','p','.version']) {
      const {nodeId} = await session.send('DOM.querySelector', {nodeId:dom.nodeId,selector});
      report.fonts[selector] = (await session.send('CSS.getPlatformFontsForNode',{nodeId})).fonts;
      if (!report.fonts[selector].every(f => /^Segoe UI(?: Semibold)?$/.test(f.familyName))) throw Error('Unexpected fallback font: '+JSON.stringify(report.fonts[selector]));
      report.boxes[selector] = await page.locator(selector).boundingBox();
    }
    report.version = await page.locator('.version').textContent();
    const final = await page.screenshot();
    await page.locator('body').evaluate(el => el.classList.add('background-only'));
    const background = await page.screenshot();
    fs.writeFileSync(path.join(__dirname,'preview-background-qa.png'), background);
    const {data,info} = await sharp(background).removeAlpha().raw().toBuffer({resolveWithObject:true});
    // Conservative minimum over every pixel in each full text rectangle, not only corners.
    for (const selector of ['h1','.suffix','p']) {
      const b = report.boxes[selector]; let minimum = Infinity;
      const ink = selector === '.suffix' ? palette.inkSecondary : palette.inkPrimary;
      for (let y=Math.floor(b.y); y<Math.ceil(b.y+b.height); y++) {
        for (let x=Math.floor(b.x); x<Math.ceil(b.x+b.width); x++) {
          const offset = (y*info.width+x)*info.channels;
          minimum = Math.min(minimum, contrast(luminance(rgb(ink)),luminance([...data.subarray(offset,offset+3)])));
        }
      }
      report.contrast[selector] = minimum;
      if (minimum < 4.5) throw Error(`Insufficient contrast for ${selector}: ${minimum}`);
    }
    report.contrast.badge = contrast(luminance(rgb(palette.badgeInk)),luminance(rgb(palette.accent)));
    if (report.contrast.badge < 4.5) throw Error('Badge contrast');
    await sharp(final).png({compressionLevel:9}).toFile(path.join(root,'Mod/About/Preview.png'));
    await sharp(final).resize({width:268}).png().toFile(path.join(__dirname,'preview-268.png'));
    report.bytes = fs.statSync(path.join(root,'Mod/About/Preview.png')).size;
    if (report.bytes >= 900000) throw Error('Preview exceeds 900 KB');
    fs.writeFileSync(path.join(__dirname,'preview-qa.json'),JSON.stringify(report,null,2)+'\n');
    console.log(JSON.stringify(report,null,2));
  } finally { if (browser) await browser.close(); server.close(); }
})().catch(err => { console.error(err); process.exitCode=1; });
