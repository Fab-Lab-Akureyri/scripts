# Fetch updates, if any. 
git pull

# Run the script with admin powershell

# Remove and clean Prusa Slicer Alpha
# winget uninstall Prusa3D.PrusaSlicer.Alpha
# $prusaAlphaPath = $env:LOCALAPPDATA + "\Microsoft\WinGet\Packages\Prusa3D.PrusaSlicer.Alpha*"
# Remove-Item $prusaAlphaPath -Verbose -Recurse

# Remove Libre office
# winget uninstall TheDocumentFoundation.LibreOffice

# Install winget programs
winget install --id=Adobe.Acrobat.Reader.64-bit -e
winget install --id=ArduinoSA.IDE.stable -e
winget install --id=Autodesk.EAGLE -e
winget install --id=GIMP.GIMP -e
winget install --id=Git.Git -e
winget install --id=KiCad.KiCad -e
winget install --id=Prusa3D.PrusaSlicer -e
winget install --id=SyncTrayzor.SyncTrayzor -e
winget install --id=AivarAnnamaa.Thonny -e
winget install --id=Ultimaker.Cura -e
winget install --id=Microsoft.VisualStudioCode -e
winget install --id=BlenderFoundation.Blender -e
winget install --id=Google.Chrome -e
winget install --id=Mozilla.Firefox -e
winget install --id=FreeCAD.FreeCAD -e
winget install --id=Inkscape.Inkscape -e
winget install --id=OpenSCAD.OpenSCAD -e
winget install --id=Microsoft.DotNet.Framework.DeveloperPack_4  -e
winget install --id=Notepad++.Notepad++ -e  
winget install --id=7zip.7zip -e 
winget install --id=VideoLAN.VLC -e
winget install --id=KDE.Krita -e

# Install choco programs
choco install meshmixer -y
choco install autodesk-fusion360 -y