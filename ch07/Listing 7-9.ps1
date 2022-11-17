function Show-Text {
    [CmdletBinding()]

	param (
	[parameter (Mandatory=$true)]
	[string]$textToDisplay
	)

	Process {
	    write-output "I'm doing something really cool using the supplied parameter of: $textToDisplay"
	}
}