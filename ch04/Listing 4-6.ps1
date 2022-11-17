$versionNumber = '8.0.3330.2'
$executable = "java.exe"
$path = "${env:ProgramFiles(x86)}\java\jre1.8.0_333\bin"

If ((Get-item (Join-Path -Path $path -ChildPath $executable) -ErrorAction SilentlyContinue).VersionInfo.ProductVersion -eq $VersionNumber) {
    Write-Host "Detected!"
}