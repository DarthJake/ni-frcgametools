$ErrorActionPreference = 'Stop'; # stop on all errors
# Note: Install programming environments such as NI LabVIEW or Microsoft Visual Studio before installing this product.

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = "https://download.ni.com/support/nipkg/products/ni-f/ni-frc-2022-game-tools/22.0/offline/ni-frc-2022-game-tools_22.0.0_offline.iso"

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'NISoftware*'
  fileType       = 'EXE'
  Url            = $url
  file           = 'Install.exe'
  checksum       = 'f261a2d051d54f5f272764461d44f05f5033bde734f90ca0fb41c28c94723982'
  checksumType   = 'sha256'
  silentArgs     = '--passive --accept-eulas --prevent-reboot --prevent-activation'
  validExitCodes = @(0, -125071, -126300)
}

Install-ChocolateyIsoPackage @packageArgs #https://docs.chocolatey.org/en-us/guides/create/mount-an-iso-in-chocolatey-package