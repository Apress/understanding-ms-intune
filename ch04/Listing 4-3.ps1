$fileOrFolderName = "All Servers.txt"
$path = "C:\ohtemp"

If (Test-Path (Join-Path -Path $path -ChildPath $fileOrFolderName)) {
    Write-Host "Detected!"
}