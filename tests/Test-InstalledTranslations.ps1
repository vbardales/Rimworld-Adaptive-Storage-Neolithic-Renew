# Run with: pwsh -NoProfile -File tests/Test-InstalledTranslations.ps1
# Stone buildings now use ordinary stuff labels, so no runtime translation DLL is required.
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$modRoot = Join-Path $root 'Mod'
$script:checks = 0

function Assert-True($Condition, [string]$Message) {
    $script:checks++
    if (-not $Condition) { throw "FAIL: $Message" }
}

$defs = @{}
Get-ChildItem (Join-Path $modRoot 'Defs') -Recurse -Filter *.xml -File | ForEach-Object {
    $xml = [xml](Get-Content $_.FullName -Raw)
    foreach ($node in $xml.SelectNodes('/Defs/*[defName]')) { $defs[$node.defName] = $true }
}

foreach ($language in @('French', 'Russian')) {
    $languageRoot = Join-Path $modRoot "Languages/$language/DefInjected"
    Assert-True (Test-Path $languageRoot) "$language DefInjected folder exists"
    $files = @(Get-ChildItem $languageRoot -Recurse -Filter *.xml -File)
    Assert-True ($files.Count -eq 3) "$language has three DefInjected files"
    foreach ($file in $files) {
        $xml = [xml](Get-Content $file.FullName -Raw)
        foreach ($entry in $xml.LanguageData.ChildNodes | Where-Object NodeType -eq Element) {
            $defName = $entry.Name.Split('.')[0]
            Assert-True ($defs.ContainsKey($defName)) "$language translation targets existing def $defName"
            Assert-True (-not [string]::IsNullOrWhiteSpace($entry.InnerText)) "$language translation $($entry.Name) is not empty"
        }
    }
}

Assert-True (-not (Test-Path (Join-Path $modRoot 'Assemblies/NeolithicRenew.dll'))) 'Obsolete translation assembly removed'
Assert-True (-not (Test-Path (Join-Path $modRoot 'Languages/English/Keyed/Generated.xml'))) 'Obsolete generated English keys removed'
Assert-True (-not (Test-Path (Join-Path $modRoot 'Languages/French/Keyed/Generated.xml'))) 'Obsolete generated French keys removed'

Write-Output "PASS: $script:checks installed-translation assertions"
