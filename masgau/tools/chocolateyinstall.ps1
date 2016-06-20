
$ErrorActionPreference = 'Stop';


$packageName= 'masgau'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://masgau.org/downloads/MASGAU-1.0.6-Release-Setup.exe'
$url64      = $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'masgau*'
  checksum      = '406C25722B02B7694208385DA1BF6345'
  checksumType  = 'md5'
  checksum64    = '406C25722B02B7694208385DA1BF6345'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs


















