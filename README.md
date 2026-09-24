# Cardputer ADV

Cardputer ADV firmware management, game research, M5Launcher setup, and app-design workspace.

## Collections

- [Games](games/README.md) — curated ADV games, emulator candidates, compatibility notes, and verification checks.
- [Video pack: Intriguing Tech Cardputer ADV review](video-packs/7ZQ-5kvH9Zc/README.md) — M5Launcher/M5Burner, Bruce, RF/CC1101, RFID, Meshtastic, retro emulators, DOOM, Bus Pirate, source manifest, and one-command pull scripts.
- [Video pack: external / dual display wiring](video-packs/Vdh4GY4ra2k/README.md) — verified Cardputer ADV EXT pin map, ILI9488 video notes, and ILI9341V adaptation for Zee's 2.8-inch screen.

## Pull the full video source pack

Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\pull-video-7ZQ-5kvH9Zc.ps1
```

macOS / Linux:

```bash
bash ./tools/pull-video-7ZQ-5kvH9Zc.sh
```

The pull scripts keep each upstream project in its own `upstream/` folder and update existing clones instead of duplicating them.

The repository is currently named `CIRD-PURTR` on GitHub. Rename it to `Cardputer-ADV` from repository settings when signed in.
