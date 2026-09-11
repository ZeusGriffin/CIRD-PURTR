# Video Pack — Cardputer ADV Review

Source video: **The $30 Viral Gadget Hackers Are Buying! Cardputer ADV Review** by Intriguing Tech

YouTube: https://www.youtube.com/watch?v=7ZQ-5kvH9Zc

This folder turns the video into a reusable Cardputer ADV source pack. It keeps the original upstream projects separate so they can be updated without overwriting this repository.

## What the video covers

| Time | Topic | Repository / source to keep |
|---|---|---|
| 00:00 | Cardputer ADV overview | M5Stack Cardputer ADV hardware |
| 02:45 | Factory demo vs. custom firmware | M5Launcher / Launcher |
| 06:07 | M5Burner firmware installer | Official M5Stack M5Burner download |
| 08:10 | Bruce / Evil Portal demonstration | BruceDevices/firmware |
| 09:44 | RF / CC1101 home-alarm keyfob demo | Bruce + CC1101 hardware/tutorial material |
| 14:44 | RFID / loyalty-card reading | Bruce RFID/NFC tools |
| 16:37 | Meshtastic / LoRa messaging | meshtastic/firmware |
| 19:36 | Retro gaming / emulators | geo-tp/Cardputer-Game-Station-Emulators |
| 21:57 | DOOM | MAXXTANG/CardPuterAdvancedDoom |
| 22:20 | Bus Pirate-style hardware debugging | geo-tp/ESP32-Bus-Pirate |

## Upstream projects

### Launcher / firmware management
- https://github.com/bmorcelli/Launcher
- Cardputer ADV support is documented in the upstream project.

### Bruce
- https://github.com/BruceDevices/firmware
- Multi-tool firmware used in the video for Wi-Fi/RF/RFID demonstrations.

### Meshtastic
- https://github.com/meshtastic/firmware
- Off-grid LoRa mesh firmware. Cardputer use also requires compatible LoRa hardware.

### DOOM — Cardputer ADV build
- https://github.com/MAXXTANG/CardPuterAdvancedDoom
- ADV-specific port with TCA8418 keyboard support and prebuilt binaries.

### Retro emulators
- https://github.com/geo-tp/Cardputer-Game-Station-Emulators
- Multi-system emulator collection for Cardputer-class hardware.

### ESP32 Bus Pirate
- https://github.com/geo-tp/ESP32-Bus-Pirate
- Standalone/serial/web hardware-interface firmware with Cardputer support.

### Large community firmware collection
- https://github.com/mgwein/cardputer
- Community collection that indexes or packages many of the same firmware families shown in the video, including Bruce, Meshtastic, DOOM, Game Station emulators and Bus Pirate.

## Pull everything

Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\pull-video-7ZQ-5kvH9Zc.ps1
```

macOS / Linux:

```bash
bash ./tools/pull-video-7ZQ-5kvH9Zc.sh
```

Both scripts clone the upstream source into `upstream/`. Re-running them updates existing clones instead of creating duplicates.

## Cardputer ADV compatibility checks

Before flashing a build, verify that it explicitly supports the **Cardputer ADV**, not only the original Cardputer. The ADV uses a TCA8418 keyboard controller and has hardware differences that can leave older builds with a dead keyboard, broken audio, or SD-card problems.

For every firmware image:

1. Confirm the target is Cardputer ADV / Stamp-S3A.
2. Read the upstream install instructions and partition/offset requirements.
3. Keep a known-good recovery path such as Launcher/M5Burner.
4. Back up SD-card saves/configuration before changing firmware.
5. Test keyboard, audio, SD access and exit/recovery controls after flashing.

## Usage note

Wireless/RF/security features are included here for owned devices, lab work, learning, and authorized testing. Do not use credential-capture, RF replay, deauthentication, or other intrusive functions against systems you do not own or have explicit permission to test.

## Repository layout after pulling

```text
CIRD-PURTR/
├─ games/
├─ video-packs/
│  └─ 7ZQ-5kvH9Zc/
│     ├─ README.md
│     └─ sources.json
├─ tools/
│  ├─ pull-video-7ZQ-5kvH9Zc.ps1
│  └─ pull-video-7ZQ-5kvH9Zc.sh
└─ upstream/                  # created by the pull scripts
   ├─ Launcher/
   ├─ Bruce/
   ├─ Meshtastic/
   ├─ CardPuterAdvancedDoom/
   ├─ Cardputer-Game-Station-Emulators/
   ├─ ESP32-Bus-Pirate/
   └─ cardputer-community-pack/
```
