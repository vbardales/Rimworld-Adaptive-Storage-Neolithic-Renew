# Core-only English pass. Needs the collection's scripts/Run-PickleWsl.ps1, so it runs from inside the monorepo checkout only.
param(
    [string]$EvidenceDir = ('AdaptiveStorageNeolithicRenew/tests/Pickle/Evidence/core-en-' + (Get-Date -Format 'yyyy-MM-dd-HHmm'))
)

$ErrorActionPreference = 'Stop'
$launcher = Join-Path $PSScriptRoot '../../../scripts/Run-PickleWsl.ps1'
if (-not (Test-Path $launcher)) {
    Write-Error "Run-PickleWsl.ps1 not found at $launcher: this wrapper only works inside the monorepo checkout."
    exit 1
}

& (Resolve-Path $launcher).Path -Mod AdaptiveStorageNeolithicRenew `
    -DepMap wsl-deps.core.map `
    -Language English `
    -Filter 01-loads-on-the-framework.feature `
    -Then @(
        '02-generated-stones.feature',
        '03-contents-review.feature',
        '04-save-reload.feature',
        '08-pickletools-research.feature'
    ) `
    -EvidenceDir $EvidenceDir `
    -Label 'AS Neolithic integrated Core English validation'

exit $LASTEXITCODE
