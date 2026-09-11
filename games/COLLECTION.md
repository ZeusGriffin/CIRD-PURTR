# Cardputer ADV Game Collection

This folder tracks verified or strongly matched Cardputer ADV game projects as pinned Git submodules. Clone with:

```bash
git clone --recurse-submodules https://github.com/ZeusGriffin/CIRD-PURTR.git
```

Or initialize after cloning:

```bash
git submodule update --init --recursive
```

## Main game projects

- **Cypher-Gamer** — 53 built-in games including Pong, Snake, Breakout, Asteroids, Invaders, 2048, Connect Four, racers, shooters, board games, puzzles and reflex games.
- **cardputer-puzzles** — all 40 Simon Tatham puzzle games in one Cardputer ADV firmware.
- **cardputer-chess** — chess, Chess960, AI, puzzles, timed play, profiles and ESP-NOW multiplayer.
- **Raising Hell** — Cardputer ADV virtual-pet game with mini-games.
- **MiniMaze** — native Cardputer ADV maze game.
- **Alchemy ADV** — combination/discovery puzzle game.
- **Piano Tiles ADV** — rhythm game.
- **Geek Casino** — simulated casino mini-games using virtual chips.
- **cardputer-atari800** — Atari 8-bit emulator for 800XL/65XE/130XE/XEGS software on Cardputer ADV.
- **Gameboy4cardputerADV-DualScreen** — Game Boy / Game Boy Color emulator for Cardputer ADV. See `POKEMON.md`.
- **M5 ADV Basketball** — Cardputer ADV basketball game.
- **M5Cardputer ADV Tic-Tac-Toe** — native tic-tac-toe project.
- **Battleship** — PlatformIO/M5Cardputer Battleship project targeting the StampS3/Cardputer hardware family.
- **cardputer-game-os** — game-focused firmware with original titles including the Signal Rat cyberdeck RPG.

## Existing DOOM project

DOOM was already present in this repository, so it is not counted as a new find in this pass.

## Pokémon

The verified Cardputer ADV Game Boy / Game Boy Color emulator explicitly lists support/enhancement profiles for **Pokémon Red, Blue, Yellow, Gold and Silver**. The emulator is included; commercial Pokémon ROM files are not.

See `POKEMON.md` for setup.

## Nintendo 64 check

**Retro-Zero** supports Nintendo 64 through Mupen64Plus, but it targets **Cardputer Zero / ARM64 Linux**, not the ESP32-S3 Cardputer ADV. It is not included in the ADV install set.

Reference only: https://github.com/geo-tp/Retro-Zero

## Excluded after verification

- **Shadow-Games** — excluded because its own latest commit says the firmware does not work yet and is only a concept.

Use only ROM/game images you are legally permitted to use.
