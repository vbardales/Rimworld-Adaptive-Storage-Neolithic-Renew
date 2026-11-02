# Run with: pwsh -NoProfile -File tests/Test-SteamCopy.ps1 [-Path <folder>] [-Ref <tag or commit>] [-Library <steam library>]
# Or:       powershell -NoProfile -ExecutionPolicy Bypass -File tests/Test-SteamCopy.ps1
#
# The copy Steam delivers to a subscriber, compared with what the repository published.
#
# It answers one question: is what a subscriber downloaded exactly the Mod/ tree of the release tag?
# It reads files and hashes them. It never starts RimWorld, so it proves nothing about how the game
# loads the copy: that stays a run in game (see TESTING.md, "Publication regression").
#
# Not part of the CI job: a runner has no Steam copy, and steamcmd cannot download a Workshop item
# without a login. Run it on a machine that is subscribed to the item.
#
# Exit codes: 0 every check passed, 1 a check failed, 2 no Steam copy found (SKIPPED, which is not a pass).
[CmdletBinding()]
param(
    [string]$Path,
    [string]$Ref,
    [string]$Library
)
$ErrorActionPreference = 'Stop'
$repo = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$modRoot = Join-Path $repo 'Mod'
$appId = '294100'
$script:checks = 0
$script:problems = New-Object System.Collections.Generic.List[string]
$script:warnings = New-Object System.Collections.Generic.List[string]

function Check([bool]$Condition, [string]$Message) {
    $script:checks++
    if (-not $Condition) { $script:problems.Add($Message) }
}

# The SHA-1 git gives a file once stored: "blob <length>\0" followed by the content.
function Get-BlobSha([byte[]]$Bytes) {
    $header = [Text.Encoding]::ASCII.GetBytes("blob $($Bytes.Length)`0")
    $all = New-Object byte[] ($header.Length + $Bytes.Length)
    [Array]::Copy($header, 0, $all, 0, $header.Length)
    [Array]::Copy($Bytes, 0, $all, $header.Length, $Bytes.Length)
    $sha = [Security.Cryptography.SHA1]::Create()
    try { return (($sha.ComputeHash($all) | ForEach-Object { $_.ToString('x2') }) -join '') }
    finally { $sha.Dispose() }
}

function ConvertTo-Lf([byte[]]$Bytes) {
    $out = New-Object System.Collections.Generic.List[byte] $Bytes.Length
    for ($i = 0; $i -lt $Bytes.Length; $i++) {
        if ($Bytes[$i] -eq 13 -and $i + 1 -lt $Bytes.Length -and $Bytes[$i + 1] -eq 10) { continue }
        $out.Add($Bytes[$i])
    }
    return $out.ToArray()
}

# --- what was published: the Mod/ tree of the release tag ---------------------------------------------
$itemId = (Get-Content (Join-Path $modRoot 'About/PublishedFileId.txt') -Raw).Trim()
if ($itemId -notmatch '^\d+$') { throw "Mod/About/PublishedFileId.txt does not hold a numeric id: '$itemId'" }

if (-not $Ref) {
    $Ref = @(& git -C $repo tag --list 'v*' --sort=-v:refname)[0]
    if (-not $Ref) { throw 'No v* release tag: nothing was published by the CI yet.' }
}
$commit = (& git -C $repo rev-parse --verify "$Ref^{commit}" 2>$null)
if (-not $commit) { throw "Ref '$Ref' does not resolve to a commit." }

$expected = @{}
foreach ($line in (& git -C $repo -c core.quotePath=false ls-tree -r $commit -- Mod)) {
    if ($line -match '^\d+ blob ([0-9a-f]{40})\t(.+)$') {
        $expected[$matches[2].Substring('Mod/'.Length)] = $matches[1]
    }
}
if ($expected.Count -eq 0) { throw "Ref '$Ref' holds no Mod/ tree." }

# --- where Steam put it -------------------------------------------------------------------------------
$libraries = New-Object System.Collections.Generic.List[string]
if ($Library) { $libraries.Add($Library) }
if (-not $Path) {
    try {
        $steam = (Get-ItemProperty 'HKCU:\Software\Valve\Steam' -ErrorAction Stop).SteamPath
        if ($steam) {
            $libraries.Add($steam)
            $vdf = Join-Path $steam 'steamapps/libraryfolders.vdf'
            if (Test-Path $vdf) {
                foreach ($m in [regex]::Matches((Get-Content $vdf -Raw), '"path"\s+"([^"]+)"')) {
                    $libraries.Add($m.Groups[1].Value.Replace('\\', '\'))
                }
            }
        }
    } catch { }
    foreach ($lib in $libraries) {
        $candidate = Join-Path $lib "steamapps/workshop/content/$appId/$itemId"
        if (Test-Path $candidate) { $Path = $candidate; $Library = $lib; break }
    }
}
if (-not $Path) {
    Write-Output "SKIPPED: no Steam copy of item $itemId found (looked in: $(($libraries | Select-Object -Unique) -join ', ')). Subscribe to the item and let Steam download it, or pass -Path. A skip is not a pass."
    exit 2
}
if (-not (Test-Path $Path)) {
    Write-Output "SKIPPED: the path '$Path' does not exist. A skip is not a pass."
    exit 2
}
$Path = (Resolve-Path $Path).Path

# --- the comparison -----------------------------------------------------------------------------------
$actual = @{}
$total = 0
foreach ($f in (Get-ChildItem $Path -Recurse -File -Force)) {
    $rel = $f.FullName.Substring($Path.Length).TrimStart('\', '/').Replace('\', '/')
    $actual[$rel] = $f.FullName
    $total += $f.Length
}

$folderName = Split-Path $Path -Leaf
if ($folderName -ne $itemId) {
    $script:warnings.Add("The folder is called '$folderName', not '$itemId': Steam names a subscribed copy after its item, so this may not be one.")
}
$missing = @($expected.Keys | Where-Object { -not $actual.ContainsKey($_) })
$extra = @($actual.Keys | Where-Object { -not $expected.ContainsKey($_) })
Check ($missing.Count -eq 0) "Missing from the Steam copy ($($missing.Count)): $(($missing | Select-Object -First 5) -join ', ')"
Check ($extra.Count -eq 0) "Not in the release tree ($($extra.Count)): $(($extra | Select-Object -First 5) -join ', ')"

$identical = 0
$lineEndingOnly = 0
$different = New-Object System.Collections.Generic.List[string]
foreach ($rel in $expected.Keys) {
    if (-not $actual.ContainsKey($rel)) { continue }
    $bytes = [IO.File]::ReadAllBytes($actual[$rel])
    if ((Get-BlobSha $bytes) -eq $expected[$rel]) { $identical++; continue }
    if ($rel -match '\.(xml|md|txt)$' -and (Get-BlobSha (ConvertTo-Lf $bytes)) -eq $expected[$rel]) {
        $lineEndingOnly++; continue
    }
    $different.Add($rel)
}
Check ($different.Count -eq 0) "Content differs from the release tree ($($different.Count)): $(($different | Select-Object -First 5) -join ', ')"
if ($lineEndingOnly -gt 0) {
    $script:warnings.Add("$lineEndingOnly text file(s) differ from the release tree by line endings only.")
}

# --- the copy is the one meant for this item ---------------------------------------------------------
$aboutPath = Join-Path $Path 'About/About.xml'
if (Test-Path $aboutPath) {
    $about = [xml](Get-Content $aboutPath -Raw)
    Check ($about.ModMetaData.packageId -ceq 'nelim.adaptivestorageneolithic') 'packageId of the Steam copy'
    $packageId = $about.ModMetaData.packageId
} else {
    Check $false 'About/About.xml is present in the Steam copy'
    $packageId = 'nelim.adaptivestorageneolithic'
}
$idFile = Join-Path $Path 'About/PublishedFileId.txt'
Check ((Test-Path $idFile) -and (Get-Content $idFile -Raw).Trim() -ceq $itemId) 'PublishedFileId.txt of the Steam copy names this item'
Check (-not (Get-ChildItem $Path -Recurse -Force -Include *.dds, *.pdb, *.user -File)) 'No .dds, .pdb or .user file: those never leave the repository'

# --- Steam finished the download ---------------------------------------------------------------------
$acf = if ($Library) { Join-Path $Library "steamapps/workshop/appworkshop_$appId.acf" } else { $null }
if ($acf -and (Test-Path $acf)) {
    $text = Get-Content $acf -Raw
    $m = [regex]::Match($text, '"' + $itemId + '"\s*\{\s*"size"\s+"(\d+)"')
    if ($m.Success) {
        Check ([int64]$m.Groups[1].Value -eq $total) "Bytes on disk ($total) equal the size Steam recorded ($($m.Groups[1].Value)): the download is complete"
    } else {
        $script:warnings.Add("appworkshop_$appId.acf has no size for item ${itemId}: download completeness not checked.")
    }
} else {
    $script:warnings.Add('appworkshop_294100.acf not found beside the copy: download completeness not checked.')
}

# --- a second copy of the same mod makes "which one loaded" unanswerable -----------------------------
if ($Library) {
    $mods = Join-Path $Library 'steamapps/common/RimWorld/Mods'
    if (Test-Path $mods) {
        foreach ($dir in (Get-ChildItem $mods -Directory -Force)) {
            $xml = Join-Path $dir.FullName 'About/About.xml'
            if ((Test-Path $xml) -and ((Get-Content $xml -Raw) -match [regex]::Escape("<packageId>$packageId</packageId>"))) {
                $kind = if ($dir.Attributes -band [IO.FileAttributes]::ReparsePoint) { 'a junction' } else { 'a folder' }
                $script:warnings.Add("Mods/$($dir.Name) is $kind holding the same packageId ($packageId). The game sees two mods with one identifier and this test cannot say which one it loads: remove or rename it before a subscription test in game.")
            }
        }
    }
}

# --- verdict ------------------------------------------------------------------------------------------
foreach ($w in $script:warnings) { Write-Output "WARN: $w" }
if ($script:problems.Count -gt 0) {
    foreach ($p in $script:problems) { Write-Output "FAIL: $p" }
    Write-Output "FAILED: $($script:problems.Count) of $script:checks checks against $Ref ($($commit.Substring(0, 7)))"
    exit 1
}
Write-Output "PASS: $script:checks checks; the Steam copy ($($actual.Count) files, $total bytes) is the Mod/ tree of $Ref ($($commit.Substring(0, 7))), $identical files byte-identical, $lineEndingOnly by line endings only"
exit 0
