$fileOrFolderName = "MyApp-001.log"
$path = "$env:SystemRoot\Yum Yum Dog Foods Inc\Custom Detection"

If (Test-Path (Join-Path -Path $path -ChildPath $fileOrFolderName)) {
    Write-Host "Detected!"
}