#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
UPSTREAM="$ROOT/upstream"
mkdir -p "$UPSTREAM"

if ! command -v git >/dev/null 2>&1; then
  echo "Git is not installed or is not available in PATH." >&2
  exit 1
fi

clone_or_update() {
  local name="$1"
  local url="$2"
  local dest="$UPSTREAM/$name"

  if [[ -d "$dest/.git" ]]; then
    echo "Updating $name..."
    git -C "$dest" pull --ff-only
  elif [[ -e "$dest" ]]; then
    echo "Skipping $dest because it exists but is not a Git clone." >&2
  else
    echo "Cloning $name..."
    git clone --depth 1 "$url" "$dest"
  fi
}

clone_or_update "Launcher" "https://github.com/bmorcelli/Launcher.git"
clone_or_update "Bruce" "https://github.com/BruceDevices/firmware.git"
clone_or_update "Meshtastic" "https://github.com/meshtastic/firmware.git"
clone_or_update "CardPuterAdvancedDoom" "https://github.com/MAXXTANG/CardPuterAdvancedDoom.git"
clone_or_update "Cardputer-Game-Station-Emulators" "https://github.com/geo-tp/Cardputer-Game-Station-Emulators.git"
clone_or_update "ESP32-Bus-Pirate" "https://github.com/geo-tp/ESP32-Bus-Pirate.git"
clone_or_update "cardputer-community-pack" "https://github.com/mgwein/cardputer.git"

echo
echo "Cardputer ADV video pack sources are ready under upstream/."
echo "Read video-packs/7ZQ-5kvH9Zc/README.md before flashing anything."
