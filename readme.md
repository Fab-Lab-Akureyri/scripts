# FLA scripts

Scripts to hopefully simplify the Fab Lab life. 

The scripts are aimed at the machines in the computer lab, all Windows machines. 

## Usage

Download or clone the repo. Enter directory. 

You need to set Windows Execution Policy to either 'RemoteSigned' or 'Bypass' 

Using Administrative PowerShell, run: 

    Set-ExecutionPolicy RemoteSigned

or 

    Set-ExecutionPolicy Bypass

Note: If you need to use `Bypass`, it's recommended to set the policy to RemoteSigned for security reasons. 

## Scripts:

###  fabupdate.ps1

Installs the needed packages to automatically update Windows.
Also updates any Winget and Chocolatey packages. 

### fabprogs.ps1

Installs/upgrades the following programs automatically:

|   Via Winstall/Winget     | Via Chocolatey    |
|           ---             |       ---         |
|   Acrobat Reader          |                   |
|   Arduino IDE (>2.0)      |   MeshMixer       |                       
|   Autodesk Eagle          |   Fusion360       |                   
|   Gimp                    |                   |           
|   Git                     |                   |       
|   KiCad (>7)              |                   |               
|   LibreOffice             |                   |               
|   PrusaSlicer             |                   |               
|   SyncTrayzor             |                   |               
|   Thonny (>4)             |                   |               
|   Ultimaker Cura          |                   |                   
|   MS VSCode               |                   |               
|   Blender                 |                   |           
|   Chrome                  |                   |           
|   Firefox                 |                   |           
|   FreeCAD                 |                   |           
|   Inkscape                |                   |               
|   OpenSCAD                |                   |               
|   MS DotNet Framework 4   |                   |                           
|   Notepad++               |                   |               
|   7zip                    |                   |           
|   VLC                     |                   |       
|   WinZip                  |                   |           

###  Additional programs requiring manual install: 

- VCarve for Shopbot (+clipart, post-processors)
- Arudino IDE 1.8 (needed?)
- DigitalMicroscopeSuite2
- ESP32.MPY-Jama
- Flatcam
- Wegstr (PCB milling machines)

### Further addons for Fab Lab setup

#### Inkscape

- [Inkstitch](https://inkstitch.org/) for the embroidery machine

#### Additinal boards for Arduino IDE
File -> Preferences -> Additional boards manager: 

    https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json
    
    https://github.com/earlephilhower/arduino-pico/releases/download/global/package_rp2040_index.json

Tool -> Boards ->Board manager -> Search for:
    
    esp32 -> by espressif
    
    rp2040 -> Raspberry PI pico / rp2040 by Earle

#### Additional libraries for Arduino IDE

- Update libraries
- Update boards
- Add any common libraries, such as Adafruit-Neopixel

#### Fab library for Kicad

- https://gitlab.fabcloud.org/pub/libraries/electronics/kicad (Use the git method for easy updates)