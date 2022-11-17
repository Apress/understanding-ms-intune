$programFiles32 = (get-item "${env:ProgramFiles(x86)}\Mimecast\Mimecast Outlook Add-In\musepkg32.exe" -ErrorAction SilentlyContinue).VersionInfo.FileVersion
$programFiles64 = (get-item "$ENV:ProgramFiles\Mimecast\Mimecast Outlook Add-In\musepkg32.exe" -ErrorAction SilentlyContinue).VersionInfo.FileVersion

if ($programFiles64 -eq '19.0.0.60' -or $programFiles32 -eq '10.0.19041.1') {
    Write-Host "Installed!"
}