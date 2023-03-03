if(test-path "C:\ProgramData\chocolatey\choco.exe"){
    $testchoco = powershell choco -v
    Write-Output "Chocolatey Version $testchoco is already installed, continuing" 
} else {
    Write-Output "Seems Chocolatey is not installed, installing now"
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install winget programs
winget install --id=ArduinoSA.IDE.stable  -e
winget install --id=Autodesk.EAGLE  -e
winget install --id=GIMP.GIMP -e
winget install --id=Git.Git -e
winget install --id=KiCad.KiCad -e
winget install --id=TheDocumentFoundation.LibreOffice -e
winget install --id=Prusa3D.PrusaSlicer -e
winget install --id=SyncTrayzor.SyncTrayzor -e
winget install --id=AivarAnnamaa.Thonny -e
winget install --id=Ultimaker.Cura -e
winget install --id=Microsoft.VisualStudioCode -e
winget install --id=BlenderFoundation.Blender  -e
winget install --id=Google.Chrome  -e
winget install --id=FreeCAD.FreeCAD  -e
winget install --id=Inkscape.Inkscape  -e
winget install --id=OpenSCAD.OpenSCAD  -e

# Install choco programs
choco feature enable -n=allowGlobalConfirmation

choco install meshmixer
choco install autodesk-fusion360

choco feature disable -n=allowGlobalConfirmation