# Run the script with admin powershell
# Run following command before running the script

# Set-ExecutionPolicy Bypass

# Install winget programs
winget install --id=ArduinoSA.IDE.stable -e
winget install --id=Autodesk.EAGLE -e
winget install --id=GIMP.GIMP -e
winget install --id=Git.Git -e
winget install --id=KiCad.KiCad -e
winget install --id=TheDocumentFoundation.LibreOffice -e
winget install --id=Prusa3D.PrusaSlicer -e
winget install --id=SyncTrayzor.SyncTrayzor -e
winget install --id=AivarAnnamaa.Thonny -e
winget install --id=Ultimaker.Cura -e
winget install --id=Microsoft.VisualStudioCode -e
winget install --id=BlenderFoundation.Blender -e
winget install --id=Google.Chrome -e
winget install --id=Mozilla.Firefox.DeveloperEdition  -e
winget install --id=FreeCAD.FreeCAD -e
winget install --id=Inkscape.Inkscape -e
winget install --id=OpenSCAD.OpenSCAD -e
winget install --id=Microsoft.DotNet.Framework.DeveloperPack_4  -e
winget install --id=Notepad++.Notepad++ -e  
winget install --id=7zip.7zip -e 
winget install --id=VideoLAN.VLC -e 

# Install choco programs
choco feature enable -n=allowGlobalConfirmation

choco install meshmixer
choco install autodesk-fusion360
choco install slic3r

choco feature disable -n=allowGlobalConfirmation

Write-Host "Setting exection policy to Restricted"
Set-ExecutionPolicy Restricted
