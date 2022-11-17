$registryKey = 'HKLM:\SOFTWARE\GitForWindows'
$value = 'CurrentVersion'
$data = '2.32.0.2'

if ((Get-ItemProperty -Path $registryKey | Select-Object $value -ExpandProperty $value -ErrorAction SilentlyContinue) -eq $data) {
    Write-Host "Detected!"
}