# Run the following before running the script
# Set-ExecutionPolicy Bypass

## Start by upgrading winget & choco packages
winget upgrade --all
choco upgrade chocolatey
choco upgrade all --acceptlicense --yes --limitoutput

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

function CheckAndInstallUpdates{
    Write-Host "Checking for updates"
    #Get-WindowsUpdate
    Install-WindowsUpdate -AcceptAll -AutoReboot
    Get-WURebootStatus
}

function InstallPSWindowsUpdate{
    Write-Host "Installing PSWindowsUpdate"
    #Write-Host "Setting exection policy to RemoteSigned"
    #Set-ExecutionPolicy RemoteSigned
    Install-Module -Name PSWindowsUpdate -Force
    Write-Host "Importing module to session"
    Import-Module PSWindowsUpdate
}

function InstallNuGet{
    Write-Host "Installing NuGet"
    #Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force

    #https://stackoverflow.com/questions/51406685/powershell-how-do-i-install-the-nuget-provider-for-powershell-on-a-unconnected
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    #Install-PackageProvider -Name NuGet
    Install-PackageProvider -Name Nuget -Force
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

CheckAndInstallUpdates

Write-Host "Setting exection policy to Restricted"
Set-ExecutionPolicy Restricted
