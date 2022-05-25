# GottaGoFastRAM200 8MB Autoconfig Fast RAM

This is an 8MB Autoconfig Fast RAM for the Amiga 2000 

Special thanks to [GadgetUK164](https://www.youtube.com/user/GadgetUK164) and sparxUK for their help testing this.

![PCB](Docs/PCB.PNG?raw=True)

## Table of contents
1. [Status](#status)
1. [Features](#features)
1. [Firmware](#firmware)
1. [PCB Ordering](#ordering-pcbs)
1. [Jumpers](#jumpers)
1. [Bill of materials](#bill-of-materials)
1. [Troubleshooting](#troubleshooting)

## Status

This is tested and working

## Features

* 8MB of Fast RAM
* Auto-sizing - The RAM board will coexist with other devices by autosizing to fit the remaining free Zorro II memory space

## Firmware

There are two different firmwares available for this card.
1. [Standard autosizing](https://github.com/LIV2/GottaGoFastRAM2000/raw/master/Binary/gottagofast2000.jed) - This Firmware will autosize trying in this order: 8MB -> 4MB -> 2MB -> 1MB until it can fit in the remaining space
2. [6MB autosizing](https://github.com/LIV2/GottaGoFastRAM2000/raw/master/Binary/gottagofast2000-6MB.jed) - This will try to offer 8MB then 6MB (in a block of 2MB + 4MB) to maximize space i.e when using a bridgeboard that needs 512K itself

## PCB Ordering

For best results the boards should be manufactured with the "Gold Fingers" option so that the edge connector will survive many insertion/removal cycles

## Jumpers

4MB: Forces the board to appear as a 4MB board rather than 8MB

### Bill of materials

|Component|Location|QTY|Link|Note|
|---------|--------|---|----|----|
|LM1117-3.3 SOT-223|U1|1|[Mouser](https://www.mouser.com/ProductDetail/926-LM1117IMP3.3NOPB)||
|XC9572XL-10TQ100C|U5|1|[Mouser](https://www.mouser.com/ProductDetail/217-C9572XL-10TQ100C)|Can be substituted with XC95144XL-10-TQ100|
|74LS245 SOIC|U3,U4|2|[Mouser](https://www.mouser.com/ProductDetail/595-SN74LS245DWR)||
|74LVC2G07|U2|1|[Mouser](https://www.mouser.com/ProductDetail/595-SN74LVC2G07DBVR)|*Optional - See below|
|5v 1MBx16 DRAM, SOJ-42  i.e  <br/>K4E151611<br/>K4F151611<br/>MT4C1M16E5<br/>GM71C18163C<br/>AS4C1M16E5 etc.|U6,U7,U8,U9|4|Aliexpress, Ebay etc||
|0.1uF Ceramic capacitor, 0805|C4-25|22|[Mouser](https://www.mouser.com/ProductDetail/581-08055C104K)||
|10uF Ceramic capacitor, 1206|C2,C3|2|[Mouser](https://www.mouser.com/ProductDetail/80-C1206C106K4R)||
|100uF Electrolytic Capacitor|C1|1|[Mouser](https://www.mouser.com/ProductDetail/667-16SEPC100M)||
|10K Resistor, 0805|R1|1|[Mouser](https://www.mouser.com/ProductDetail/754-RR1220P-103D)|


\* U2 buffers the cards generated DTACK and OVR signals - In a pinch this can be left out but you will run into problems with the A2091 and some other devices so it is best to fit this and save yourself the headache

## Troubleshooting
* **Problem**: System does not boot, the power LED does not change brightness  
  **Solution**: Possible incorrect orientation/faulty ic in U2 - check orientation and/or remove this IC and try again

* **Problem**: My bridgeboard doesn't work when this card is installed  
  **Solution**: The bridgeboard needs 512K of the 8MB expansion space for its own use, you will need to move the ram board to the leftmost slot and I recommend flashing the [6MB Firmware](https://github.com/LIV2/GottaGoFastRAM2000/raw/master/Binary/gottagofast2000-6MB.jed) to maximise the amount of memory offered when used with the bridgeboard

* **Problem**: My system is unstable / graphical corruption when using this board but it passes a memory test in ATK/DiagROM etc  
  **Solution**: Check that your Amiga 2000 has the correct buffers installed in U600-605. U600,601,603,604 __must__ be 74LS245 and U602/605 should be 74ALS245 but might be 74LS245 in some A2000 revisions.  
  If you have used anything else (like 74HCT245) for these you will run into issues with this board and many others.

* **Problem**: When used with a bridgeboard/other cards I get a gray screen telling me the card has been "SHUT"  
  **Solution**: Some other board is using some of the 8MB space, so the card will be told to shutup and will reappear offering 4MB then 2, 1 etc.  
  On Kick 1.3-3.1 the system will not alert you to this happening and will continue to boot (this is used to do the autosizing) but newer versions "helpfully" tell you about this condition.  
  If using one of these newer kickstart versions with a Bridgeboard I'd recommend flashing the [6MB Firmware](https://github.com/LIV2/GottaGoFastRAM2000/raw/master/Binary/gottagofast2000-6MB.jed)  
  Another option would be to write the firmware to offer multiple 2MB blocks until it is shut up which unfortunately doesn't work, because Kickstart 1.3-3.1 will throw a yellow screen if the last board in the chain was shut up, and newer versions will throw the gray screen telling us the board has been shut-up.
  