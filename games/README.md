# Cardputer ADV games

Curated on 2026-09-11. This index records upstream projects and compatibility claims; it does not bundle firmware binaries, ROMs, music, or game assets. The earlier collection already included Raising Hell, Game & Watch, and GLIDE. The projects below are additional finds.

## Strong ADV matches

| Project | Type | Why it is interesting | Status and caveats |
|---|---|---|---|
| [Cypher-Gamer](https://github.com/dkyazzentwatwa/cardputer-games) | 53-game collection | Pong, Snake, Breakout, racers, shooters, puzzles, board games, and reflex games in one offline firmware | Explicit Cardputer ADV/Stamp-S3A target with TCA8418 keyboard profile; source available. |
| [cardputer-atari800](https://github.com/falkenhawk/cardputer-atari800) | Atari 8-bit emulator | Atari 800XL, 65XE, 130XE, and XEGS emulation with SD browser, keyboard/joystick mapping, audio, and host tests | Explicit ADV target. Save states and final polish remain on its roadmap. Supply only software images you may legally use. |
| [MiniMaze for Cardputer ADV](https://github.com/chillyc0de/MiniMaze-for-Cardputer-ADV) | Maze/puzzle | Infinite mazes, invisible-wall mode, and automatic play | Explicit ADV target, MIT license, M5Launcher/M5Burner instructions. |
| [Alchemy ADV](https://github.com/Zeloksa/Cardputer-Alchemy-ADV-Game) | Combination puzzle | Combine four starting elements into a catalog of 186 discoveries, with hints and SD saves | Explicit ADV target. Proprietary, binary-only distribution; microSD required for saves. |
| [Piano Tiles ADV](https://github.com/Zeloksa/Piano-Tiles-ADV) | Rhythm | Three keyboard lanes, hold notes, difficulty progression, and score persistence | ADV-branded release. Proprietary, binary-only; README claims 54 included tracks, so review music rights before redistribution. |
| [Silicon Casino](https://github.com/chatelp/geek-casino-cardputeradv) | Casino minigames | Five games using virtual chips | Explicit Cardputer ADV project. Gambling is simulated; review its README and license before reuse. |

## Emulation collections to evaluate

| Project | Systems/features | Compatibility caution |
|---|---|---|
| [Cardputer Game Station Emulators](https://github.com/bomberman30/Cardputer-Game-Station-Emulators) | NES, GB/GBC, Master System, Game Gear, Mega Drive, Atari, MSX, and other cores from SD | The README says Cardputer and describes a sub-256 KB RAM design, but does not clearly promise ADV keyboard/audio support. Treat it as a porting/test candidate until verified on ADV. |
| [m5gbcemu](https://github.com/jedld/Gameboy-Enhanced-Firmware-m5stack-cardputer-) | Game Boy and Game Boy Color, audio, palettes, saves, save states, screenshots | Cardputer-native, but the README does not explicitly confirm ADV. Its custom partition layout must accompany Launcher installs. Hardware-test keyboard and audio before marking ADV-ready. |

## Ecosystem leads

- [MicroHydra Apps](https://github.com/echo-lalia/MicroHydra-Apps) includes small games such as Flappy Stamp. The ADV MicroHydra port is separate, so test each app with that runtime.
- [LauncherHub](https://bmorcelli.github.io/Launcher/) exposes a larger Cardputer firmware catalog. Names in a catalog are leads, not proof that a build supports the ADV.
- [Sparks](https://github.com/KyleBing/m5stack-cardputer-sparks) includes a built-in collection of 14 minigames, but it is a complete utility firmware rather than a standalone game pack.

## Selection recommendation

Start with Cypher-Gamer for breadth, MiniMaze for a small open-source native game, and cardputer-atari800 for an emulator whose ADV support is documented. Keep proprietary binary-only games in a links-only section. Do not copy ROMs, commercial music, or copyrighted assets into this repository.

## Verification checklist

Before flashing or importing any project:

1. Confirm the release is built specifically for Cardputer ADV.
2. Confirm whether the image is full-flash or Launcher app-only and use its documented offset/partition table.
3. Check the license for source and every bundled asset.
4. Back up saves and configuration.
5. Test the TCA8418 keyboard, ES8311 audio, SD access, exit controls, and recovery path on the physical device.
