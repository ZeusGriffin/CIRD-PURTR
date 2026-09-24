# Video Pack: Cardputer ADV External / Dual Display

Source video: [Connecting External Display and Dual Display Setup on M5Stack Cardputer-Adv | ESP32-S3 Tutorial](https://www.youtube.com/watch?v=Vdh4GY4ra2k)

Creator: AndyAiCardputer  
Published: November 20, 2025  
Video ID: `Vdh4GY4ra2k`

## Why this reference matters

The video demonstrates a working dual-display approach for the M5Stack Cardputer ADV:

- built-in 240 x 135 display;
- external ILI9488 480 x 320 display;
- separate SPI hosts to prevent display conflicts;
- external display initialized before the internal display.

## Video wiring: Cardputer ADV EXT connector

The creator names physical EXT pin numbers. The corresponding GPIOs below are verified against the official Cardputer ADV EXT 2.54-14P pin map.

| External display label | EXT physical pin | Cardputer signal |
|---|---:|---|
| VCC | 6 | 5VOUT |
| GND | 4 | GND |
| CS | 13 | G5 |
| RST | 1 | G3 |
| DC / RS | 5 | G6 |
| MOSI / SDI | 9 | G14 |
| SCK / CLK | 7 | G40 |
| LED / BL | 6 | 5VOUT |
| MISO / SDO | 11 | G39 |

> Safety: EXT pin 2 is 5VIN. Do not use it as the screen's power output. Use EXT pin 6 (5VOUT).

## Zee's exact screen

Zee's module is the 2.8-inch 240 x 320 ILI9341V capacitive-touch SPI module. Its onboard level conversion accepts 5V module power while the Cardputer ADV provides 3.3V signal logic.

For the easiest first test, connect only the first nine display pins. Capacitive-touch pins 10-13 and the screen SD-card CS pin 14 are optional and should be added later.

The wiring positions above carry over to the ILI9341V, but the software driver must be configured as `ILI9341`, not `ILI9488`.

## Software architecture from the video

1. Initialize the external display first with TFT_eSPI on HSPI / SPI3.
2. Initialize the built-in display second with M5Cardputer / M5Unified on FSPI / SPI2.
3. Draw to the two display objects independently.

Suggested external-display GPIO constants:

```cpp
#define TFT_CS   5
#define TFT_RST  3
#define TFT_DC   6
#define TFT_MOSI 14
#define TFT_SCLK 40
#define TFT_MISO 39
```

## Verified references

- [M5Stack Cardputer ADV official product and EXT pin map](https://docs.m5stack.com/en/core/Cardputer-Adv)
- [MSP2833 / MSP2834 2.8-inch ILI9341V module manual](https://manuals.plus/m/b0a1a8d51cf1e965156b40c790dec228d2892766a33de6a4fa6441d1ce062b81)
- [AndyAiCardputer ILI9341 example repository](https://github.com/AndyAiCardputer/zx-spectrum-cardputer-ili9341)

## Verification status

- Video title, description, transcript, wiring narration, libraries, and initialization order checked.
- Official Cardputer ADV EXT physical-pin-to-GPIO mapping checked.
- Exact screen family and module pin names checked against Zee's photo and the matching module manual.
- Physical hookup still requires a final visual check of pin 1 orientation before power is applied.
