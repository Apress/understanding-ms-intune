$registryKey = 'HKLM:\SOFTWARE\Yum Yum Dog Foods Inc\Custom Detection'
$value = 'MyApp'
$data = '1'

if ((Get-ItemProperty -Path $registryKey | Select-Object $value -ExpandProperty $value -ErrorAction SilentlyContinue) -eq $data) {
    Write-Host "Detected!"
}