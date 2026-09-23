param(
    [string]$EvidenceDir = 'AdaptiveStorageNeolithicRenew/tests/Pickle/Evidence/core-en-integrated'
)

$ErrorActionPreference = 'Stop'
$launcher = Join-Path (Resolve-Path (Join-Path $PSScriptRoot '../../..')).Path 'scripts/Run-PickleWsl.ps1'

& $launcher -Mod AdaptiveStorageNeolithicRenew `
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
