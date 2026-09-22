# Builds the Pickle step assembly of the companion test mod, with the Windows .NET Framework compiler
# as Source/Build.ps1 does for the mod itself. The output goes under tests/Pickle/Mod/Pickle/Assemblies,
# never under Mod/: Mod/ is what Steam receives. Pickle finds it there and loads its steps.
param(
    [string]$Managed = 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\RimWorldWin64_Data\Managed',
    [string]$Pickle = 'C:\Program Files (x86)\Steam\steamapps\workshop\content\294100\3791648678\Assemblies'
)
$ErrorActionPreference = 'Stop'
$output = Join-Path $PSScriptRoot '../Mod/Pickle/Assemblies'
[void](New-Item $output -ItemType Directory -Force)
$compiler = Join-Path $env:WINDIR 'Microsoft.NET/Framework64/v4.0.30319/csc.exe'
& $compiler /nologo /target:library /optimize+ "/out:$output/AdaptiveStorageNeolithicRenew.PickleSteps.dll" `
    "/reference:$Managed/Assembly-CSharp.dll" "/reference:$Managed/UnityEngine.CoreModule.dll" `
    "/reference:$Pickle/RimWorks.Pickle.dll" "/reference:$Pickle/RimWorks.Pickle.Core.dll" `
    (Join-Path $PSScriptRoot 'ResearchTabSteps.cs') (Join-Path $PSScriptRoot 'PublicationSteps.cs') `
    (Join-Path $PSScriptRoot 'StuffSteps.cs')
if ($LASTEXITCODE -ne 0) { throw 'Pickle step assembly compilation failed.' }
