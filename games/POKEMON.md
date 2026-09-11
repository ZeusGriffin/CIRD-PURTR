# Pokémon on Cardputer ADV

The included `Gameboy4cardputerADV-DualScreen` project is a Game Boy / Game Boy Color emulator for Cardputer ADV. Its compatibility/enhancement list explicitly names:

- Pokémon Red
- Pokémon Blue
- Pokémon Yellow
- Pokémon Gold
- Pokémon Silver

The emulator browses `.gb` and `.gbc` files from storage and supports saves/save states.

## Folder suggestion

On your microSD card, create:

```text
/roms/gameboy/
/roms/gameboy-color/
```

Place your own dumped cartridge images there, for example:

```text
/roms/gameboy/Pokemon Red.gb
/roms/gameboy/Pokemon Blue.gb
/roms/gameboy/Pokemon Yellow.gb
/roms/gameboy-color/Pokemon Gold.gbc
/roms/gameboy-color/Pokemon Silver.gbc
```

Then browse to the file from the emulator.

## What is not included

This repository does not include Nintendo/Game Freak commercial ROM files or links to unauthorized ROM downloads. The emulator code/project is included so legally dumped cartridges can be used.

## GBA note

I did not find a Cardputer ADV GBA emulator I could verify strongly enough to add. The existing Game Station project covers GB/GBC and many older systems, but its documented supported list does not include GBA. So FireRed, LeafGreen, Ruby, Sapphire and Emerald are not marked as supported here.
