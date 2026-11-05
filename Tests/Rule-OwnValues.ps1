# What only this mod asserts: the stone-as-stuff buildings, the framework dependency, the save migrations,
# the Russian path case, the research and Biotech graphics, and the obsolete files that must stay gone.
# The generic checks (XML, defNames, About.xml shape, textures, translation coverage) are the shared scripts', run by Test-Mod.ps1.
# Takes -ModRoot (repository root) and -SharedDir (unused, kept for the Test-Mod.ps1 contract); prints findings, exits 1 on any.
param([string]$ModRoot = (Join-Path $PSScriptRoot '..'), [string]$SharedDir)
$ErrorActionPreference = 'Stop'
$ModRoot = (Resolve-Path -LiteralPath $ModRoot).Path
$mod = Join-Path $ModRoot 'Mod'
$script:findings = New-Object System.Collections.Generic.List[string]
function Assert-True($Condition, [string]$Message) { if (-not $Condition) { $script:findings.Add("FAIL: $Message") } }

$defs = New-Object System.Xml.XmlDocument
$defs.LoadXml('<Defs/>')
foreach ($file in Get-ChildItem (Join-Path $mod 'Defs'), (Join-Path $mod 'Patches') -Recurse -Filter *.xml -File -ErrorAction SilentlyContinue) {
    $xml = New-Object System.Xml.XmlDocument
    $xml.Load($file.FullName)
    foreach ($node in $xml.SelectNodes('/Defs/*')) { [void]$defs.DocumentElement.AppendChild($defs.ImportNode($node, $true)) }
}

$meta = [xml](Get-Content (Join-Path $mod 'About/About.xml') -Raw)
Assert-True ($meta.ModMetaData.packageId -ceq 'nelim.adaptivestorageneolithic') 'Continuation packageId'
Assert-True ($meta.ModMetaData.name -ceq 'Adaptive Storage Neolithic Renew') 'Continuation name'
Assert-True (@($meta.ModMetaData.supportedVersions.li) -contains '1.6') 'RimWorld 1.6 declared'
Assert-True (@($meta.ModMetaData.modDependencies.li).Count -eq 1) 'Only the framework is a direct dependency'
Assert-True ($meta.ModMetaData.modDependencies.li.packageId -ceq 'adaptive.storage.framework') 'Framework dependency'
Assert-True (@($meta.ModMetaData.loadAfter.li) -contains 'adaptive.storage.framework') 'Framework loadAfter'
Assert-True (@($meta.ModMetaData.incompatibleWith.li) -contains 'adaptive.storage.neolithic') 'Original package declared incompatible'
Assert-True (-not (Test-Path (Join-Path $mod 'Assemblies'))) 'No continuation assembly remains'
Assert-True (-not (Select-String -Path (Join-Path $mod 'About/About.xml') -Pattern 'Harmony' -Quiet)) 'No obsolete Harmony claim'
Assert-True ((Get-Content (Join-Path $mod 'About/PublishedFileId.txt') -Raw).Trim() -ceq '3806101377') 'Workshop PublishedFileId preserved'

$thingDefs = @{}
foreach ($node in $defs.SelectNodes('/Defs/ThingDef[defName]')) { $thingDefs[$node.defName] = $node }
$buildings = @('ASNeolithicChunkStorage', 'ASNeolithicLargePotStone', 'ASNeolithicPlinthStone')
foreach ($defName in $buildings) {
    Assert-True ($thingDefs.ContainsKey($defName)) "$defName exists"
    if (-not $thingDefs.ContainsKey($defName)) { continue }
    Assert-True (@($thingDefs[$defName].stuffCategories.li) -contains 'ASFStoneChunks') "$defName uses ASFStoneChunks"
    Assert-True ([int]$thingDefs[$defName].costStuffCount -gt 0) "$defName consumes stone chunks as stuff"
}
if ($thingDefs.ContainsKey('ASNeolithicChunkStorage')) {
    Assert-True ($thingDefs['ASNeolithicChunkStorage'].modExtensions.li.lockStorageSettingsToStuff -ceq 'true') 'Chunk stack locks storage to its stone stuff'
}

$compatPath = Join-Path $mod 'Patches/ChunkBackCompatibility.xml'
Assert-True (Test-Path $compatPath) 'Upstream save compatibility patch present'
if (Test-Path $compatPath) {
    $compatText = Get-Content $compatPath -Raw
    Assert-True (([regex]::Matches($compatText, 'SaveGameCompatibility.Operation')).Count -eq 3) 'Three building migrations declared'
    foreach ($target in $buildings) { Assert-True ($compatText.Contains("<newDefName>$target</newDefName>")) "Migration targets $target" }
}
foreach ($old in 'ChunkStorage', 'LargePot', 'Plinth') { Assert-True (-not (Test-Path (Join-Path $mod "Patches/$old.xml"))) "Old generated patch removed: $old.xml" }

$russian = @(git -C $ModRoot ls-files 'Mod/Languages/Russian/*')
Assert-True (@($russian | Where-Object { $_ -cmatch '/DefInjected/' }).Count -eq 3) 'Russian DefInjected paths use exact case'
Assert-True (@($russian | Where-Object { $_ -cmatch '/Definjected/' }).Count -eq 0) 'No wrongly cased Russian path'

Assert-True (-not (Test-Path (Join-Path $mod 'Assemblies/NeolithicRenew.dll'))) 'Obsolete translation assembly removed'
foreach ($language in 'English', 'French') { Assert-True (-not (Test-Path (Join-Path $mod "Languages/$language/Keyed/Generated.xml"))) "Obsolete generated $language keys removed" }

$research = $defs.SelectNodes('/Defs/ResearchProjectDef[defName]')
Assert-True ($research.Count -eq 2) 'Two concrete research projects'
Assert-True (@($research | Where-Object { $_.tags.li -contains 'TribalStart' }).Count -eq 1) 'Neolithic storage remains available to tribal starts'
Assert-True ($defs.SelectNodes('/Defs/AdaptiveStorage.GraphicsDef[@MayRequire="Ludeon.RimWorld.Biotech"]').Count -eq 2) 'Biotech toxipotato graphics remain optional'

if ($script:findings.Count) { $script:findings; exit 1 }
Write-Output 'PASS: Rule-OwnValues'
