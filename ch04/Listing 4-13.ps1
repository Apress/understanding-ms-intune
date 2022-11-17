$companyName = 'Yum Yum Dog Foods Inc'
$fileName = 'MyApp-001.log'

$detectionPath = Join-Path -Path "$env:SystemRoot" -ChildPath "$CompanyName\Custom Detection"

if (!(Test-Path $DetectionPath)) {
	New-Item -Path $DetectionPath -ItemType Directory | Out-Null
}

New-Item -Path $DetectionPath -Name $FileName -ItemType File -Force | Out-Null