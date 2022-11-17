Clear-Host

set-location $PSScriptRoot

Write-host "The current location is: $(Get-Location)" -ForegroundColor Cyan

Write-host "Changing location to the relevant registry key in HKLM." -ForegroundColor Cyan
push-location "HKLM:\software\MyCompany"

Write-host "Push-Location. Current location is: $(Get-Location)" -ForegroundColor Yellow

Write-host "Making changes to the registry..." -ForegroundColor DarkCyan

New-ItemProperty -Path . -Name "EmpNo01" -Value 001 | Out-Null
New-ItemProperty -Path . -Name "EmpNo02" -Value 002 | Out-Null
New-ItemProperty -Path ".\Attributes" -Name "New01" -Value 001 | Out-Null
New-ItemProperty -Path ".\Attributes" -Name "New02" -Value 002 | Out-Null

Write-host "Registry changes have been made." -ForegroundColor DarkCyan

Pop-Location

Write-host "Pop-Location. The current location is: $(Get-Location)" -ForegroundColor Cyan