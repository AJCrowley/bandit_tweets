# Directory containing this script
$scriptDir = $PSScriptRoot

# Copy utilitylimb to APPDATA
$source  = Join-Path $scriptDir "utilitylimb"
$destDir = Join-Path $env:APPDATA "utilitylimb"
$dest    = Join-Path $destDir "utilitylimb"

if (-not (Test-Path -LiteralPath $source)) {
    throw "Source file not found: $source"
}

if (-not (Test-Path -LiteralPath $dest)) {
    New-Item -ItemType Directory -Path $destDir -Force | Out-Null
    Copy-Item -LiteralPath $source -Destination $dest -Recurse
}

# The block that goes into the profile (single-quoted here-string: nothing is expanded now)
$block = @'

# --- fortune (utilitylimb) ---
function fortune {
    $path = "$env:APPDATA\utilitylimb\utilitylimb"
    if (Test-Path -LiteralPath $path) {
        $lines = Get-Content -LiteralPath $path |
            Where-Object {
                -not [string]::IsNullOrWhiteSpace($_) -and $_.Trim() -ne '%'
            }
        if ($lines) {
            Write-Host ""
            Write-Host (Get-Random -InputObject $lines) -ForegroundColor Cyan
            Write-Host ""
        }
    }
}

fortune
# --- end fortune ---
'@

# Make sure the profile file (and its folder) exist
if (-not (Test-Path -LiteralPath $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force | Out-Null
}

# Add to the profile only if not already there
if (-not (Select-String -LiteralPath $PROFILE -Pattern '# --- fortune \(utilitylimb\) ---' -Quiet)) {
    Add-Content -LiteralPath $PROFILE -Value $block
}

# Run it now
Invoke-Expression $block