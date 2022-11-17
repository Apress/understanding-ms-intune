Clear-Host

set-location $PSScriptRoot

Write-host "The current location is: $(Get-Location)" -ForegroundColor Cyan

Write-host "Making changes to the registry..." -ForegroundColor DarkCyan

New-ItemProperty -Path "HKLM:\Software\MyCompany" -Name "EmpNo01" -Value 001 | Out-Null
New-ItemProperty -Path "HKLM:\Software\MyCompany" -Name "EmpNo02" -Value 002 | Out-Null
New-ItemProperty -Path "HKLM:\Software\MyCompany\Attributes" -Name "New01" -Value 001 | Out-Null
New-ItemProperty -Path "HKLM:\Software\MyCompany\Attributes" -Name "New02" -Value 002 | Out-Null

Write-host "Registry changes have been made." -ForegroundColor DarkCyan

Write-host "The current location is: $(Get-Location)" -ForegroundColor Cyan