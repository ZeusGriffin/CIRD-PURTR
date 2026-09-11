$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw 'Git is not installed or is not available in PATH.'
}

if (-not (Test-Path (Join-Path $root '.gitmodules'))) {
    throw 'No .gitmodules file was found. Run this script from the CIRD-PURTR repository.'
}

Write-Host 'Syncing Cardputer ADV upstream sources...'
git -C $root submodule sync --recursive

git -C $root submodule update --init --recursive

if ($LASTEXITCODE -ne 0) {
    throw 'Git could not initialize one or more upstream submodules.'
}

Write-Host ''
Write-Host 'Cardputer ADV video pack sources are ready under upstream/.'
Write-Host 'These are the commits pinned by this repository for a reproducible setup.'
Write-Host 'Read video-packs/7ZQ-5kvH9Zc/README.md before flashing anything.'
