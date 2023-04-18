# FLA scripts

Scripts to hopefully simplify the Fab Lab life. 

The scripts are aimed at the machines in our computer lab, all Windows machines.

Adjust to your needs, feel free to create pull requests or be in contact for improvements.

##  Recommended usage

Clone the repo, enter directory.

Run from within the directory, so scripts can update the repo when run.

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
|   PrusaSlicer Alpha       |                   |               
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

###  Additional programs requiring manual install: 

[Link](https://drive.google.com/drive/folders/1GQG6Sf1yN15UQpGPBuxfRedFp_9DX9xc) to Fab Lab Google drive folder with the additional programs for prosperity. (Closed folder)

Offical links here:

- [VCarve](https://www.vectric.com/products/vcarve-pro) for Shopbot (+clipart, post-processors) - Proprietary software, needs a licence
- [Arudino IDE 1.8](https://www.arduino.cc/en/software/OldSoftwareReleases) (Old, needed?)
- [DigitalMicroscopeSuite2](https://www.celestron.com/pages/drivers-and-software)
- [ESP32.MPY-Jama](https://github.com/jczic/ESP32-MPY-Jama)
- [Flatcam](https://github.com/jczic/ESP32-MPY-Jama)
- [Wegstr](https://wegstr.com/) (PCB milling machines)

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