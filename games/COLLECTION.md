# Cardputer ADV Game Collection

This folder contains pinned upstream game projects for the M5Stack Cardputer ADV. Clone this repository with submodules to pull the actual source trees:

```bash
git clone --recurse-submodules https://github.com/ZeusGriffin/CIRD-PURTR.git
```

Or, inside an existing clone:

```bash
git submodule update --init --recursive
```

## Added projects

- **CardPuterAdvancedDoom** — DOOM port for Cardputer ADV.
- **Cypher-Gamer** — 53 built-in games including Pong, Snake, Breakout, Asteroids, Invaders, 2048, Connect Four, and many more.
- **cardputer-puzzles** — all 40 Simon Tatham puzzle games in one ADV firmware.
- **cardputer-chess** — chess, Chess960, AI, puzzles, timed play, and ESP-NOW multiplayer.
- **Raising Hell** — virtual-pet game with mini-games for Cardputer ADV.
- **MiniMaze** — native maze game for Cardputer ADV.
- **Alchemy ADV** — combination/discovery puzzle game.
- **Piano Tiles ADV** — rhythm game.
- **Geek Casino / Silicon Casino** — collection of simulated casino mini-games using virtual chips.
- **cardputer-atari800** — Atari 8-bit emulator for 800XL/65XE/130XE/XEGS software on Cardputer ADV.

## Nintendo 64 check

A project called **Retro-Zero** supports Nintendo 64 through Mupen64Plus, but it targets **Cardputer Zero / ARM64 Linux**, not the ESP32-S3 Cardputer ADV. It is therefore *not* included in the ADV submodule set.

Reference only: https://github.com/geo-tp/Retro-Zero

Do not add commercial ROM images to this repository. Use only game images you are legally permitted to use.
