$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$upstream = Join-Path $root 'upstream'
New-Item -ItemType Directory -Force -Path $upstream | Out-Null

$repos = @(
    @{ Name='Launcher'; Url='https://github.com/bmorcelli/Launcher.git' },
    @{ Name='Bruce'; Url='https://github.com/BruceDevices/firmware.git' },
    @{ Name='Meshtastic'; Url='https://github.com/meshtastic/firmware.git' },
    @{ Name='CardPuterAdvancedDoom'; Url='https://github.com/MAXXTANG/CardPuterAdvancedDoom.git' },
    @{ Name='Cardputer-Game-Station-Emulators'; Url='https://github.com/geo-tp/Cardputer-Game-Station-Emulators.git' },
    @{ Name='ESP32-Bus-Pirate'; Url='https://github.com/geo-tp/ESP32-Bus-Pirate.git' },
    @{ Name='cardputer-community-pack'; Url='https://github.com/mgwein/cardputer.git' }
)

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw 'Git is not installed or is not available in PATH.'
}

foreach ($repo in $repos) {
    $dest = Join-Path $upstream $repo.Name
    if (Test-Path (Join-Path $dest '.git')) {
        Write-Host "Updating $($repo.Name)..."
        git -C $dest pull --ff-only
    }
    elseif (Test-Path $dest) {
        Write-Warning "$dest exists but is not a Git clone; skipping to avoid overwriting files."
    }
    else {
        Write-Host "Cloning $($repo.Name)..."
        git clone --depth 1 $repo.Url $dest
    }
}

Write-Host ''
Write-Host 'Cardputer ADV video pack sources are ready under upstream/.'
Write-Host 'Read video-packs/7ZQ-5kvH9Zc/README.md before flashing anything.'
