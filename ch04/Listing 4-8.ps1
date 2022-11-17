$registrySubKey = "HKLM:\SOFTWARE\Google\Chrome"

If (Test-Path $registrySubKey) {
    Write-Host "Detected!"
}