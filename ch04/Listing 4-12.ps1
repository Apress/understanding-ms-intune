$fileOrFolderName = "System32"
$path = $env:windir

If (Test-Path (Join-Path -Path $path -ChildPath $fileOrFolderName)) {
	Write-Host "Detected!"
}