$executable = "cmd.exe"
$path = "$env:SystemRoot\system32"

If (Test-Path (Join-Path -Path $path -ChildPath $executable)) {
    Write-Host "Detected!"
}