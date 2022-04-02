# GottaGoFastRAM200 8MB Autoconfig Fast RAM

This is an 8MB Autoconfig Fast RAM for the Amiga 2000 

Special thanks to [GadgetUK164](https://www.youtube.com/user/GadgetUK164) and sparxUK for their help testing this.

![PCB](Docs/PCB.PNG?raw=True)

## Table of contents
1. [Status](#status)
1. [Features](#features)
1. [PCB Ordering](#ordering-pcbs)
1. [Jumpers](#jumpers)
1. [Bill of materials](#bill-of-materials)
1. [Troubleshooting](#troubleshooting)

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

|Component|Location|QTY|Link|Note|
|---------|--------|---|----|----|
|LM1117-3.3 SOT-223|U1|1|[Mouser](https://www.mouser.com/ProductDetail/926-LM1117IMP3.3NOPB)||
|XC9572XL-10TQ100C|U5|1|[Mouser](https://www.mouser.com/ProductDetail/217-C9572XL-10TQ100C)||
|74LS245 SOIC|U3,U4|2|[Mouser](https://www.mouser.com/ProductDetail/595-SN74LS245DWR)||
|74LVC2G07|U2|1|[Mouser](https://www.mouser.com/ProductDetail/595-SN74LVC2G07DBVR)|*Optional - See below|
|5v 1MBx16 DRAM, SOJ-42  i.e  <br/>K4E151611<br/>K4F151611<br/>MT4C1M16E5<br/>GM71C18163C<br/>AS4C1M16E5 etc.|U6,U7,U8,U9|4|Aliexpress, Ebay etc||
|0.1uF Ceramic capacitor, 0805|C4-25|22|[Mouser](https://www.mouser.com/ProductDetail/581-08055C104K)||
|10uF Ceramic capacitor, 1206|C2,C3|2|[Mouser](https://www.mouser.com/ProductDetail/80-C1206C106K4R)||
|100uF Electrolytic Capacitor|C1|1|[Mouser](https://www.mouser.com/ProductDetail/667-16SEPC100M)||
|10K Resistor, 0805|R1|1|[Mouser](https://www.mouser.com/ProductDetail/754-RR1220P-103D)|


\* U2 buffers the cards generated DTACK and OVR signals - In a pinch this can be left out but you will run into problems with the A2091 and some other devices so it is best to fit this and save yourself the headache

## Troubleshooting
* Symptom: System does not boot, the power LED does not change brightness  
  Solution: Possible incorrect orientation/faulty ic in U2 - check orientation and/or remove this IC and try again