﻿Start-Process -FilePath "$ENV:SystemRoot\System32\msiexec.exe" -ArgumentList "/i $PSScriptRoot\jre1.8.0_191.msi /qn JAVAUPDATE=0 AUTOUPDATECHECK=0 IEXPLORER=1 REBOOT=Suppress" -NoNewWindow -Wait