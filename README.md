# GottaGoFastRAM200 8MB Autoconfig Fast RAM

This is an 8MB Autoconfig Fast RAM for the Amiga 2000 

![PCB](Docs/PCB.PNG?raw=True)

## Table of contents
1. [Status](#status)
1. [Features](#features)
1. [PCB Ordering](#ordering-pcbs)
4. [Jumpers](#jumpers)
7. [Bill of materials](#bill-of-materials)

## Status

This is tested and working

## Features

* 8MB of Fast RAM
* Auto-sizing - The RAM board will coexist with other devices by autosizing to fit the remaining free Zorro II memory space

## PCB Ordering

For best results the boards should be manufactured with the "Gold Fingers" option so that the edge connector will survive many insertion/removal cycles

## Jumpers

4MB: Forces the board to appear as a 4MB board rather than 8MB

### Bill of materials

|Component|Location|QTY|Link|
|---------|--------|---|------|
|LM1117-3.3 SOT-223|U1|1|[Mouser](https://www.mouser.com/ProductDetail/926-LM1117IMP3.3NOPB)|
|XC9572XL-10TQ100C|U5|1|[Mouser](https://www.mouser.com/ProductDetail/217-C9572XL-10TQ100C)|
|74LS245 SOIC|U3,U4|2|[Mouser](https://www.mouser.com/ProductDetail/595-SN74LS245DBR)|
|74LVC2G07|U2|1|[Mouser](https://www.mouser.com/ProductDetail/595-SN74LVC2G07DBVR)|
|5v 1MBx16 DRAM, SOJ-42  i.e K4E151611, MT4C1M16E5 etc.|U6,U7,U8,U9|4|Aliexpress, Ebay etc|
|0.1uF Ceramic capacitor, 0805|C4-25|22|[Mouser](https://www.mouser.com/ProductDetail/581-08055C104K)|
|10uF Ceramic capacitor, 1206|C2,C3|2|[Mouser](https://www.mouser.com/ProductDetail/80-C1206C106K4R)|
|100uF Electrolytic Capacitor|C1|1|[Mouser](https://www.mouser.com/ProductDetail/667-16SEPC100M)|
