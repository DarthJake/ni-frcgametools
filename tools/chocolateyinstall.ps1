$ErrorActionPreference = 'Stop'; # stop on all errors
# Note: Install programming environments such as NI LabVIEW or Microsoft Visual Studio before installing this product.

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'download.ni.com/support/nipkg/products/ni-f/ni-frc-2020-game-tools/19.0/offline/ni-frc-2020-game-tools_19.0.0_offline.iso'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'NISoftware*'
  fileType       = 'EXE' 
  Url            = $url
  checksum       = '63da2e87bd66c6003daa2e31283207eecaf2a91dbdae2b060848ad95ab63c094'
  checksumType   = 'sha256'
  silentArgs     = '--passive --accept-eulas --prevent-reboot --prevent-activation'
  validExitCodes = @(0, -125071)
}

Install-ChocolateyIsoPackage @packageArgs #https://docs.chocolatey.org/en-us/guides/create/mount-an-iso-in-chocolatey-package