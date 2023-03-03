# FLA scripts

Scripts to hopefully simplify the Fab Lab life. 

The scripts are aimed at the machines in the computer lab, all Windows machines. 

## Scripts:

###  fabupdate.ps1

Installes the needed packages to automatically update Windows.
Also updates any Winget and Chocolatey packages. 

### fabprogs.ps1

Installs the following programs automatically:

#### Using Winger

- Arduino IDE (>2.0)
- Autodesk Eagle
- Gimp
- Git
- KiCad (>7)
- LibreOffice
- PrusaSlicer
- SyncTrayzor
- Thonny (>4)
- Ultimaker Cura
- MS VSCode
- Blender
- Chrome
- Freecad
- Inkscape
- OpenSCAD

#### Using Chocolatey

- Meshmixer
- Fusion360

###  Programs requiring manual install: 

- VCarve for Shopbot (+clipart, postprocessors)
- Arudino IDE 1.8 (needed?)
- DigitalMicroscopeSuite2
- ESP32.MPY-Jama
- Flatcam
- Wegstr (PCB milling machines)

### Further tuning for Lab setup

#### Inkscape

- Inkstich

#### Additinal boards for Arduino IDE
File -> Preferences -> Additional boards manager: 

    https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json
    
    https://github.com/earlephilhower/arduino-pico/releases/download/global/package_rp2040_index.json

Tool -> Boards ->Board manager -> Search for:
    
    esp32 -> by espressif
    
    rp2040 -> Raspberry PI pico / rp2040 by Earle

#### Additional libraries for Arduino IDE

- Add adafruit-neopixel to libraries
- Update libraries
- Update boards

#### Fab library for Kicad

- https://gitlab.fabcloud.org/pub/libraries/electronics/kicad (Use git or KiCAD autoupdate(?))