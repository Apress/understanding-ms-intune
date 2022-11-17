$OfficePath = 'HKLM:\Software\Microsoft\Office'
$OfficeVersions = @('14.0','15.0','16.0')

foreach ($Version in $OfficeVersions) {
    try {
	    Set-Location "$OfficePath\$Version\Outlook" -ea stop -ev x
	    $LocationSet = $true
	    break
	} catch {
	    $LocationSet = $false
	}
}

if ($locationSet) {
	switch (Get-ItemPropertyValue -Name "Bitness") {	
	"x86" { if ( <# Detect something here - file existence, file version etc #> ) { Write-host "Installed!"}}
	"x64" { if ( <# Detect something here - file existence, file version etc #> ) { Write-host "Installed!"}}
	}
}