param(
    [Parameter(Mandatory = $true)]
    [string]$SourceDirectory
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing

$destinationDirectory = Join-Path $PSScriptRoot 'Gallery'
$shots = @(
    @{ Source = 'manual--workshop-1---the-whole-set--step0.png'; Target = '1-the-whole-set.png'; X = 730; Y = 436; Width = 480; Height = 274 },
    @{ Source = 'manual--workshop-2---a-basket-fills-up--step0.png'; Target = '2-a-basket-fills-up.png'; X = 785; Y = 440; Width = 350; Height = 250 },
    @{ Source = 'manual--workshop-3---chunk-stacks--step0.png'; Target = '3-chunk-stacks.png'; X = 690; Y = 440; Width = 560; Height = 200 },
    @{ Source = 'manual--workshop-4---large-pots--step0.png'; Target = '4-large-pots.png'; X = 700; Y = 440; Width = 540; Height = 200 },
    @{ Source = 'manual--workshop-5---plinths--step0.png'; Target = '5-plinths.png'; X = 790; Y = 440; Width = 350; Height = 250 },
    @{ Source = 'manual--workshop-6---a-stone-from-another-mod--step0.png'; Target = '6-a-stone-from-another-mod.png'; X = 770; Y = 440; Width = 500; Height = 200 }
)

foreach ($shot in $shots) {
    $source = Join-Path $SourceDirectory $shot.Source
    if (-not (Test-Path -LiteralPath $source -PathType Leaf)) {
        throw "Missing Pickle capture: $source"
    }
}

foreach ($shot in $shots) {
    $source = Join-Path $SourceDirectory $shot.Source
    $target = Join-Path $destinationDirectory $shot.Target
    $temporaryTarget = "$target.tmp.png"
    $bitmap = [System.Drawing.Bitmap]::new($source)
    try {
        if ($bitmap.Width -ne 1920 -or $bitmap.Height -ne 1080) {
            throw "Unexpected source size for $source`: $($bitmap.Width)x$($bitmap.Height)"
        }
        $rectangle = [System.Drawing.Rectangle]::new($shot.X, $shot.Y, $shot.Width, $shot.Height)
        if ($rectangle.Right -gt $bitmap.Width -or $rectangle.Bottom -gt $bitmap.Height) {
            throw "Crop lies outside $source"
        }
        $crop = $bitmap.Clone($rectangle, $bitmap.PixelFormat)
        try {
            $crop.Save($temporaryTarget, [System.Drawing.Imaging.ImageFormat]::Png)
        }
        finally {
            $crop.Dispose()
        }
    }
    finally {
        $bitmap.Dispose()
    }
    Move-Item -LiteralPath $temporaryTarget -Destination $target -Force
    $result = Get-Item -LiteralPath $target
    "{0}: {1}x{2}, {3} bytes, SHA-256 {4}" -f $shot.Target, $shot.Width, $shot.Height, $result.Length, (Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash
}
