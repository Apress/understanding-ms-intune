$registryKey = 'HKLM:\SOFTWARE\GitForWindows'
$value = 'CurrentVersion'
$data = '2.32.0.2'

if ((Get-ItemPropertyValue -Path $RegistryKey -Name $Value -ErrorAction SilentlyContinue) -eq $data) {
    Write-Host "Detected!"
}