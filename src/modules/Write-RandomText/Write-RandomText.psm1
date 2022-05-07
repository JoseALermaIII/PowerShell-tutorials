## Write-RandomText.ps1
## Creates files of an estimated size
## using GeneratePassword to create dummy text.
##
### FUNCTIONS
function Write-RandomText {
<#
.SYNOPSIS 
Generates dummy text file of given size.

.DESCRIPTION
Generates dummy text file of a given size with the given filename.
Uses System.Web.Security.Membership.GeneratePassword method to make 256 byte
lines. Multiplying the desired filesize in MiB by 1024*1024, then dividing
by the number of bytes per line produces the number of iterations for a MiB.

.PARAMETER Filename
String representing filename to put dummy text of a given size.
Defaults to RandTextOut.txt.

.PARAMETER Filesize
Integer representing the desired filesize in MiB. Defaults to 1 MiB.

.INPUTS
None. You cannot pipe objects to Write-RandomText.

.OUTPUTS
System.Void

.EXAMPLE
PS C:\> Write-RandomText -Filesize 18 -Filename dummy.txt

.EXAMPLE
PS C:\> Write-RandomText 18 dummy.txt

.EXAMPLE
PS C:\> Write-RandomText

.LINK
https://github.com/JoseALermaIII/PowerShell-tutorials

.NOTES
Author:  J. Lerma
Date: May 07, 2022
#>

    [CmdletBinding()]
    param (
        [ValidateNotNullOrEmpty()]
        [int]$Filesize=1,

        [ValidateNotNullOrEmpty()]
        [string]$Filename='RandTextOut.txt'
    )
    $Filesize *= 1024 * 1024
    $Count = $Filesize / 256
    Write-Verbose -Message "Iterations for ${Filesize}: $Count"

    $Output = for ($i=1; $i -le $Count; $i++) {
        [System.Web.Security.Membership]::GeneratePassword(125, 0)
    }
    $CharCount=$Output.Length
    Write-Verbose -Message "Output to file: $CharCount"
    Out-File -FilePath .\$Filename -InputObject $Output
    return
}
