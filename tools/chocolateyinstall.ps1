$packageName = 'WinAuth'
$url = 'https://github.com//winauth/winauth/releases/download/3.6.2/WinAuth-3.6.2.zip'
$checksum = '3f34eb1ca342ad0783cd57c84f2f73c37df3ea880768dd415f509bfdbf02a785'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Install-ChocolateyShortcut -shortcutFilePath "$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs\winauth.lnk" "$unzipLocation\winauth.exe"