$ErrorActionPreference = 'Stop'; # stop on all errors
# Note: Install programming environments such as NI LabVIEW or Microsoft Visual Studio before installing this product.

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://download.ni.com/support/nipkg/products/ni-f/ni-frc-2020-game-tools/20.0/offline/ni-frc-2020-game-tools_20.0.1_offline.iso"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'NISoftware*'
  fileType       = 'EXE' 
  Url            = $url
  file           = 'Install.exe'
  checksum       = '6bb49ad274d75a3eed4a89586569d69cb68ee2a7a21ed4e1258bc948490b265b'
  checksumType   = 'sha256'
  silentArgs     = '--passive --accept-eulas --prevent-reboot --prevent-activation'
  validExitCodes = @(0, -125071, -126300)
}

Install-ChocolateyIsoPackage @packageArgs #https://docs.chocolatey.org/en-us/guides/create/mount-an-iso-in-chocolatey-package