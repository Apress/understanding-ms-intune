$executable = "java.exe"
$path = "${env:ProgramFiles(x86)}\java\jre1.8.0_333\bin"

If (Test-Path (Join-Path -Path $path -ChildPath $executable)) {
    Write-Host "Detected!"
}