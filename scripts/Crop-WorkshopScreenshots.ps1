<#
.SYNOPSIS
  Cuts the six Workshop pictures from the Pickle captures of feature 11 into Art/Gallery/1- to 6-.
.DESCRIPTION
  The captures are 1920x1080 frames of the `calm-zone-close` scene (about 10 x 5.6 cells, one cell about 190 px).
  Each picture keeps the whole frame (the animals walk about, so no band is cut away), then is resized to 1280 px wide.
  -SourceDirectory takes one or more screenshot folders, searched in order, because a scene replayed alone lives in its own run folder.
#>
param(
    [Parameter(Mandatory = $true)]
    [string[]]$SourceDirectory
)

$ErrorActionPreference = 'Stop'
# powershell.exe -File passes a comma list as one string.
$SourceDirectory = @($SourceDirectory | ForEach-Object { $_ -split ',' })
Add-Type -AssemblyName System.Drawing

$destinationDirectory = Join-Path (Split-Path $PSScriptRoot -Parent) 'Art/Gallery'
$outputWidth = 1280
# Y and Height are in source pixels; the width is always the full 1920.
$shots = @(
    @{ Source = 'manual--workshop-1---the-whole-set--step0.png'; Target = '1-the-whole-set.png'; Y = 0; Height = 1080 },
    @{ Source = 'manual--workshop-2---a-basket-fills-up--step0.png'; Target = '2-a-basket-fills-up.png'; Y = 0; Height = 1080 },
    @{ Source = 'manual--workshop-3---chunk-stacks--step0.png'; Target = '3-chunk-stacks.png'; Y = 0; Height = 1080 },
    @{ Source = 'manual--workshop-4---large-pots--step0.png'; Target = '4-large-pots.png'; Y = 0; Height = 1080 },
    @{ Source = 'manual--workshop-5---plinths--step0.png'; Target = '5-plinths.png'; Y = 0; Height = 1080 },
    @{ Source = 'manual--workshop-6---a-stone-from-another-mod--step0.png'; Target = '6-a-stone-from-another-mod.png'; Y = 0; Height = 1080 }
)

function Find-Capture([string]$name) {
    foreach ($directory in $SourceDirectory) {
        $path = Join-Path $directory $name
        if (Test-Path -LiteralPath $path -PathType Leaf) { return $path }
    }
    throw "Missing Pickle capture: $name in $($SourceDirectory -join ', ')"
}

$sources = @{}
foreach ($shot in $shots) { $sources[$shot.Source] = Find-Capture $shot.Source }

foreach ($shot in $shots) {
    $source = $sources[$shot.Source]
    $target = Join-Path $destinationDirectory $shot.Target
    $temporaryTarget = "$target.tmp.png"
    $bitmap = [System.Drawing.Bitmap]::new($source)
    try {
        if ($bitmap.Width -ne 1920 -or $bitmap.Height -ne 1080) {
            throw "Unexpected source size for $source`: $($bitmap.Width)x$($bitmap.Height)"
        }
        $outputHeight = [int][math]::Round($shot.Height * $outputWidth / 1920)
        $result = [System.Drawing.Bitmap]::new($outputWidth, $outputHeight)
        try {
            $graphics = [System.Drawing.Graphics]::FromImage($result)
            try {
                $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
                $graphics.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
                $graphics.DrawImage($bitmap, [System.Drawing.Rectangle]::new(0, 0, $outputWidth, $outputHeight), [System.Drawing.Rectangle]::new(0, $shot.Y, 1920, $shot.Height), [System.Drawing.GraphicsUnit]::Pixel)
            }
            finally { $graphics.Dispose() }
            $result.Save($temporaryTarget, [System.Drawing.Imaging.ImageFormat]::Png)
        }
        finally { $result.Dispose() }
    }
    finally { $bitmap.Dispose() }
    Move-Item -LiteralPath $temporaryTarget -Destination $target -Force
    $file = Get-Item -LiteralPath $target
    "{0}: {1}x{2}, {3} bytes, SHA-256 {4}" -f $shot.Target, $outputWidth, $outputHeight, $file.Length, (Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash
}
