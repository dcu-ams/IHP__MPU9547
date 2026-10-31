# MPU9547 Datasheet

Chip consists of a reduced functionality Z80 based processor (pins 1-3, 6-11, 14-19, 22-32) and a divided down ring oscillator (pins 12,13). VDDIO, VSSIO, VSS, and VDD are on pins 4, 5, 20 and 21, respectively. 

## Pin out
IC pins map 1:1 to QFN32 package pins 

|--------|-------------|---------------|
| IC Pin | IC function | IO type       |
|--------|-------------|---------------|
| 1      | A4          | IOPadOut4mA   |
| 2      | A5          | IOPadOut4mA   |
| 3      | A6          | IOPadOut4mA   |
| 4      | VDD3V3      | IOPadIOVdd    |
| 5      | GND         | IOPadIOVss    |
| 6      | A7          | IOPadOut4mA   |
| 7      | A8          | IOPadOut4mA   |
| 8      | A9          | IOPadOut4mA   |
| 9      | IORQ        | IOPadOut4mA   |
| 10     | M1          | IOPadOut4mA   |
| 11     | RESET       | IOPadIn       |
| 12     | OSC         | IOPadOut4mA   |
| 13     | EN          | IOPadIn       |
| 14     | CLK         | IOPadIn       |
| 15     | INT         | IOPadIn       |
| 16     | MREQ        | IOPadOut4mA   |
| 17     | WR          | IOPadOut4mA   |
| 18     | RD          | IOPadOut4mA   |
| 19     | D7          | IOPadInOut4mA |
| 20     | GND         | IOPadVss      |
| 21     | VDD1V8      | IOPadVdd      |
| 22     | D6          | IOPadInOut4mA |
| 23     | D5          | IOPadInOut4mA |
| 24     | D4          | IOPadInOut4mA |
| 25     | D3          | IOPadInOut4mA |
| 26     | D2          | IOPadInOut4mA |
| 27     | D1          | IOPadInOut4mA |
| 28     | D0          | IOPadInOut4mA |
| 29     | A0          | IOPadOut4mA   |
| 30     | A1          | IOPadOut4mA   |
| 31     | A2          | IOPadOut4mA   |
| 32     | A3          | IOPadOut4mA   |
|--------|-------------|---------------|

