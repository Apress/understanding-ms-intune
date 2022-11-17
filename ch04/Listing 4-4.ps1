$fileOrFolderName = "Important Folder"
$path = "c:\ohtemp"

If (Test-Path (Join-Path -Path $path -ChildPath $fileOrFolderName)) {
    Write-Host "Detected!"
}