#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if ! command -v git >/dev/null 2>&1; then
  echo "Git is not installed or is not available in PATH." >&2
  exit 1
fi

if [[ ! -f "$ROOT/.gitmodules" ]]; then
  echo "No .gitmodules file was found. Run this script from the CIRD-PURTR repository." >&2
  exit 1
fi

echo "Syncing Cardputer ADV upstream sources..."
git -C "$ROOT" submodule sync --recursive
git -C "$ROOT" submodule update --init --recursive

echo
echo "Cardputer ADV video pack sources are ready under upstream/."
echo "These are the commits pinned by this repository for a reproducible setup."
echo "Read video-packs/7ZQ-5kvH9Zc/README.md before flashing anything."
