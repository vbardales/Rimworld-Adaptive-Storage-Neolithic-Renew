param(
    [string]$Managed = 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\RimWorldWin64_Data\Managed',
    [string]$Framework = 'C:\Program Files (x86)\Steam\steamapps\workshop\content\294100\3033901359',
    [string]$Harmony = 'C:\Program Files (x86)\Steam\steamapps\workshop\content\294100\2009463077\Current\Assemblies\0Harmony.dll'
)
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
[void][Reflection.Assembly]::LoadFrom("$Managed/UnityEngine.CoreModule.dll")
[void][Reflection.Assembly]::LoadFrom("$Managed/Assembly-CSharp.dll")
[void][Reflection.Assembly]::LoadFrom($Harmony)
$generator = [Reflection.Assembly]::LoadFrom("$Framework/1.6/Assemblies/GeneratorOperation.dll")
[void][Reflection.Assembly]::LoadFrom("$root/Mod/Assemblies/NeolithicRenew.dll")
$script:checks = 0
function Check($condition, $message) {
    $script:checks++
    if (-not $condition) { throw $message }
}
# Isolate field tests from Unity native constructors, using real game types and mod code.
$compiler = Join-Path $env:WINDIR 'Microsoft.NET/Framework64/v4.0.30319/csc.exe'
[void](New-Item "$root/.build" -ItemType Directory -Force)
& $compiler /nologo /target:library "/out:$root/.build/TranslationChecks.dll" `
    "/reference:$Managed/Assembly-CSharp.dll" "/reference:$Managed/UnityEngine.CoreModule.dll" `
    "/reference:$root/Mod/Assemblies/NeolithicRenew.dll" (Join-Path $root 'tests/TranslationChecks.cs')
if ($LASTEXITCODE -ne 0) { throw 'Test compilation failed.' }
[void][Reflection.Assembly]::LoadFrom("$root/.build/TranslationChecks.dll")
$script:checks += [TranslationChecks]::Run($root)
# Materialize the actual installed generator output for the shared injection-path checker.
$materialized = Join-Path $root '.build/translation-targets'
[void](New-Item "$materialized/Defs" -ItemType Directory -Force)
$tree = [xml]'<Defs/>'
foreach ($file in Get-ChildItem "$root/Mod/Defs" -Recurse -Filter *.xml) {
    foreach ($node in ([xml](Get-Content $file.FullName -Raw)).SelectNodes('/Defs/*')) {
        [void]$tree.DocumentElement.AppendChild($tree.ImportNode($node,$true))
    }
}
$gameData = Join-Path $Managed '../../Data'
foreach ($file in Get-ChildItem $gameData -Recurse -Filter *.xml | Where-Object FullName -match '[\\/]Defs[\\/]') {
    foreach ($node in ([xml](Get-Content $file.FullName -Raw)).SelectNodes('/Defs/ThingDef[@ParentName="ChunkRockBase"]')) {
        [void]$tree.DocumentElement.AppendChild($tree.ImportNode($node,$true))
    }
}
$stoneCount = $tree.SelectNodes('/Defs/ThingDef[@ParentName="ChunkRockBase"]').Count
Check ($stoneCount -ge 5) 'Installed Core chunks not found'
$beforeGeneration = $tree.SelectNodes('/Defs/ThingDef').Count
foreach ($file in Get-ChildItem "$root/Mod/Patches" -Filter *.xml) {
    $xml = [xml](Get-Content $file.FullName -Raw)
    $template = $xml.SelectSingleNode('/Patch/Operation[@Class="GeneratorOperation.DefGenerator"]')
    $operation = [Activator]::CreateInstance($generator.GetType('GeneratorOperation.DefGenerator'))
    $operation.value = $template.SelectSingleNode('value').InnerText
    $operation.GetType().BaseType.BaseType.GetField('xpath',[Reflection.BindingFlags]'Instance,NonPublic').SetValue($operation,$template.xpath)
    $method = $operation.GetType().GetMethod('ApplyWorker',[Reflection.BindingFlags]'Instance,NonPublic')
    Check ($method.Invoke($operation,@($tree))) "Installed generator failed: $($file.Name)"
}
Check (($tree.SelectNodes('/Defs/ThingDef').Count - $beforeGeneration) -eq (3 * $stoneCount)) 'Unexpected generated count'
# Chunks belong to Core/DLC targets, which the checker already loads separately.
foreach ($node in @($tree.SelectNodes('/Defs/ThingDef[@ParentName="ChunkRockBase"]'))) { [void]$tree.DocumentElement.RemoveChild($node) }
$tree.Save("$materialized/Defs/Materialized.xml")
Write-Output "PASS: $script:checks installed-assembly assertions; $stoneCount stones materialized at $materialized. No game UI was launched."
