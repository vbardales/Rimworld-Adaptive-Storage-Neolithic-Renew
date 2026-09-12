param(
    [string]$Managed = 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\RimWorldWin64_Data\Managed',
    [string]$Harmony = 'C:\Program Files (x86)\Steam\steamapps\workshop\content\294100\2009463077\Current\Assemblies\0Harmony.dll'
)
$ErrorActionPreference = 'Stop'
$output = Join-Path $PSScriptRoot '../Mod/Assemblies'
[void](New-Item $output -ItemType Directory -Force)
$compiler = Join-Path $env:WINDIR 'Microsoft.NET/Framework64/v4.0.30319/csc.exe'
& $compiler /nologo /target:library /optimize+ "/out:$output/NeolithicRenew.dll" `
    "/reference:$Managed/Assembly-CSharp.dll" "/reference:$Managed/UnityEngine.CoreModule.dll" `
    "/reference:$Harmony" (Join-Path $PSScriptRoot 'GeneratedTranslations.cs')
if ($LASTEXITCODE -ne 0) { throw 'Translation assembly compilation failed.' }
