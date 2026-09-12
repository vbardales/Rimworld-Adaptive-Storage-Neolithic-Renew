# Run with: pwsh -NoProfile -File tests/Test-Mod.ps1
# Static contract tests: template expansion below is not the framework runtime.
$ErrorActionPreference = 'Stop'
$modRoot = Join-Path $PSScriptRoot '../Mod'
$script:checks = 0
function Assert-True($Condition, [string]$Message) {
    $script:checks++
    if (-not $Condition) { throw "FAIL: $Message" }
}
function Expand-Template([string]$Template, [System.Xml.XmlNode]$Source) {
    return [regex]::Replace($Template, '\{([^{}]+)\}', {
        param($match)
        $node = $Source.SelectSingleNode($match.Groups[1].Value)
        if ($null -eq $node) { throw "Unresolved template expression: $($match.Value)" }
        # Element substitutions preserve markup; text substitutions must be XML-safe.
        if ($node -is [System.Xml.XmlElement]) { return $node.OuterXml }
        return [System.Security.SecurityElement]::Escape($node.Value)
    }.GetNewClosure())
}

$documents = @(Get-ChildItem $modRoot -Recurse -Filter *.xml | ForEach-Object {
    $xml = New-Object System.Xml.XmlDocument
    $xml.Load($_.FullName)
    Assert-True ($null -ne $xml.DocumentElement) "XML document: $($_.FullName)"
    $xml
})
$defs = New-Object System.Xml.XmlDocument
$defs.LoadXml('<Defs/>')
foreach ($doc in $documents) {
    foreach ($node in $doc.SelectNodes('/Defs/*')) {
        [void]$defs.DocumentElement.AppendChild($defs.ImportNode($node, $true))
    }
}
$identities = @($defs.SelectNodes('/Defs/*[defName]') | ForEach-Object {
    $_.Name + ':' + $_.SelectSingleNode('defName').InnerText
})
Assert-True (@($identities | Group-Object | Where-Object Count -gt 1).Count -eq 0) 'Unique defNames within each Def type'
$meta = [xml](Get-Content (Join-Path $modRoot 'About/About.xml') -Raw)
$repoUrl = 'https://github.com/vbardales/Rimworld-Adaptive-Storage-Neolithic-Renew'
Assert-True ($meta.ModMetaData.url -ceq $repoUrl) 'Repository URL in metadata'
Assert-True ($meta.ModMetaData.description.Contains($repoUrl)) 'Repository URL in published description'
Assert-True ($meta.ModMetaData.name -ceq 'Adaptive Storage Neolithic Renew') 'Distinct continuation title'
Assert-True ($meta.ModMetaData.modDependencies.li.packageId -contains 'adaptive.storage.framework') 'Framework dependency'
Assert-True ($meta.ModMetaData.loadAfter.li -contains 'adaptive.storage.framework') 'Framework load order'
Assert-True ($meta.ModMetaData.incompatibleWith.li -contains 'adaptive.storage.neolithic') 'Original mod incompatibility'

$textureRoot = (Resolve-Path (Join-Path $modRoot 'Textures')).Path
$textures = @(Get-ChildItem $textureRoot -Recurse -File | ForEach-Object {
    $_.FullName.Substring($textureRoot.Length + 1).Replace('\', '/')
})
foreach ($node in $defs.SelectNodes('//texPath | //uiIconPath')) {
    $path = $node.InnerText
    if ($node.Name -eq 'texPath' -and $node.ParentNode.SelectSingleNode('graphicClass').InnerText -eq 'Graphic_Multi') {
        foreach ($direction in 'north', 'east', 'south') {
            Assert-True ($textures -ccontains "${path}_${direction}.png") "Directional texture with exact case: ${path}_${direction}"
        }
    } else {
        Assert-True (($textures -ccontains "$path.png") -or ($textures -ccontains "${path}_south.png")) "Texture with exact case: $path"
    }
}
foreach ($language in Get-ChildItem (Join-Path $modRoot 'Languages') -Directory) {
    Assert-True (@(Get-ChildItem $language.FullName -Directory | Where-Object Name -ceq 'DefInjected').Count -eq 1) "DefInjected casing: $($language.Name)"
    foreach ($file in Get-ChildItem $language.FullName -Recurse -Filter *.xml) {
        $translation = [xml](Get-Content $file.FullName -Raw)
        $keys = @($translation.SelectNodes('/LanguageData/*') | ForEach-Object Name)
        Assert-True (@($keys | Group-Object | Where-Object Count -gt 1).Count -eq 0) "Unique translation keys: $($file.FullName)"
    }
}

$patches = @(Get-ChildItem (Join-Path $modRoot 'Patches') -Filter *.xml)
Assert-True ($patches.Count -eq 3) 'Three stone generators covered'
# Independent expected output counts for Core, Odyssey and an extra third-party stone.
foreach ($scenario in @(
    @{ Stones = @('Granite','Sandstone','Limestone','Slate','Marble'); Count = 15 },
    @{ Stones = @('Granite','Sandstone','Limestone','Slate','Marble','Vacstone'); Count = 18 },
    @{ Stones = @('Granite','Sandstone','Limestone','Slate','Marble','Vacstone','TestStone'); Count = 21 }
)) {
    $working = $defs.CloneNode($true)
    foreach ($stone in $scenario.Stones) {
        $fixture = [xml]"<ThingDef ParentName='ChunkRockBase'><defName>Chunk$stone</defName><label>$stone chunk</label><graphicData><color>(0.2,0.4,0.6)</color></graphicData></ThingDef>"
        [void]$working.DocumentElement.AppendChild($working.ImportNode($fixture.DocumentElement, $true))
    }
    $unrelated = [xml]'<ThingDef ParentName="ResourceBase"><defName>UnrelatedResource</defName></ThingDef>'
    [void]$working.DocumentElement.AppendChild($working.ImportNode($unrelated.DocumentElement, $true))
    $generated = @()
    foreach ($patch in $patches) {
        $xml = [xml](Get-Content $patch.FullName -Raw)
        foreach ($operation in $xml.Patch.Operation) {
            $sources = @($working.SelectNodes($operation.xpath))
            Assert-True ($sources.Count -eq $scenario.Stones.Count) "Stone selector excludes unrelated defs: $($patch.Name)"
            foreach ($source in $sources) {
                $expanded = [xml](Expand-Template $operation.SelectSingleNode('value').InnerText $source)
                if ($operation.Class -eq 'GeneratorOperation.DefGenerator') {
                    $building = $expanded.DocumentElement
                    $name = $building.defName
                    Assert-True ($name -ceq "ASNeolithic$($patch.BaseName)$($source.defName)") "Generated identity: $name"
                    Assert-True ($null -ne $working.SelectSingleNode("/Defs/ThingDef[@Name='$($building.ParentName)']")) "Generated parent: $name"
                    Assert-True ($building.label.Contains($source.label)) "Generated label: $name"
                    Assert-True ($building.uiIconColor -ceq $source.graphicData.color) "Generated icon tint: $name"
                    $cost = $building.SelectSingleNode('costList/*')
                    $expectedCost = if ($patch.BaseName -eq 'LargePot') { '1' } else { '2' }
                    Assert-True ($cost.Name -ceq $source.defName -and $cost.InnerText -ceq $expectedCost) "Stone construction cost: $name"
                    if ($patch.BaseName -eq 'ChunkStorage') {
                        Assert-True ($building.building.fixedStorageSettings.filter.thingDefs.li -ceq $source.defName) "Chunk-only storage filter: $name"
                    } else {
                        Assert-True ($building.graphicData.color -ceq $source.graphicData.color) "Stone graphic tint: $name"
                    }
                    Assert-True ($null -eq $working.SelectSingleNode("/Defs/ThingDef[defName='$name']")) "No generated collision: $name"
                    [void]$working.DocumentElement.AppendChild($working.ImportNode($building, $true))
                    $generated += $name
                } elseif ($operation.Class -eq 'GeneratorOperation.PatchGenerator') {
                    Assert-True ($expanded.Operation.Class -ceq 'PatchOperationAdd') 'Supported generated patch operation'
                    $targets = @($working.SelectNodes($expanded.Operation.xpath))
                    Assert-True ($targets.Count -gt 0) "Graphics patch matches: $($patch.Name)"
                    foreach ($target in $targets) {
                        [void]$target.AppendChild($working.ImportNode($expanded.SelectSingleNode('/Operation/value/li'), $true))
                    }
                } else { throw "Untested operation: $($operation.Class)" }
            }
        }
    }
    Assert-True ($generated.Count -eq $scenario.Count) "Expected $($scenario.Count) generated buildings"
    foreach ($name in $generated) {
        Assert-True ($null -ne $working.SelectSingleNode("/Defs/AdaptiveStorage.GraphicsDef/targetDefs/li[text()='$name']")) "Generated graphics binding: $name"
    }
}
Write-Output "PASS: $script:checks assertions (static XML and generator contract tests)."
