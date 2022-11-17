$versionNumber = '103.0.2'
$buildNumber = '8255'
$executable = "firefox.exe"
$path = "$Env:ProgramFiles\Mozilla Firefox"

If ((Get-item (Join-Path -Path $path -ChildPath $executable) -ErrorAction SilentlyContinue).VersionInfo.FileVersion -eq $versionNumber -and (Get-item (Join-Path -Path $path -ChildPath $executable) -ErrorAction SilentlyContinue).VersionInfo.FilePrivatePart -eq $buildNumber) {
    Write-Host "Detected!"
}