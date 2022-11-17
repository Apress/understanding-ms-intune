$companyName = 'Yum Yum Dog Foods Inc'
$name = 'MyApp'
$value = '1'

$registryPath = Join-Path -Path "HKLM:\SOFTWARE" -ChildPath "$companyName\Custom Detection"
    
if (!(Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null