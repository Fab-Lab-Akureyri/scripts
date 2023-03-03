# Run the script with admin powershell
# Run following command before running the script

# Set-ExecutionPolicy Bypass

function IsNuGetAvailable {
    if(Get-PackageProvider -ListAvailable -Name NuGet){
        return $true
    } else {
        return $false
    }
}

function IsPSWUAvailable {
    if (Get-Module -ListAvailable -Name PSWindowsUpdate) {
        return $true
    } 
    return $false
}

function IsChocoAvailable {
    if(test-path "C:\ProgramData\chocolatey\choco.exe"){
        return $true
    }
    return $false
}

function CheckAndInstallUpdates{
    Write-Host "Checking for all updates"
    ## Start by upgrading winget & choco packages
    winget upgrade --all
    choco upgrade chocolatey
    choco upgrade all --acceptlicense --yes --limitoutput
    ## Install Windows updates
    Install-WindowsUpdate -AcceptAll -AutoReboot
}

function InstallPSWindowsUpdate{
    Write-Host "Installing PSWindowsUpdate"
    Install-Module -Name PSWindowsUpdate -Force
    Write-Host "Importing module to session"
    Import-Module PSWindowsUpdate
}

function InstallNuGet{
    Write-Host "Installing NuGet"
    #https://stackoverflow.com/questions/51406685/powershell-how-do-i-install-the-nuget-provider-for-powershell-on-a-unconnected
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Install-PackageProvider -Name Nuget -Force
}

function InstallChocolatey{
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

if(IsNuGetAvailable){
    Write-Host "NuGet exitst"
} else {
    Write-Host "Nuget does not exist"
    InstallNuGet
}

if(IsPSWUAvailable){
    Write-Host "PSWindowsUpdate exists"
} else {
    Write-Host "PSWindowsUpdate does not exist"
    InstallPSWindowsUpdate
}

if(IsChocoAvailable){
    $testchoco = powershell choco -v
    Write-Output "Chocolatey Version $testchoco is already installed, continuing" 
} else {    
    Write-Output "Seems Chocolatey is not installed, installing now"
    InstallChocolatey
}

# Check for and install Windows Updates
CheckAndInstallUpdates

Write-Host "Setting exection policy to Restricted"
Set-ExecutionPolicy Restricted
