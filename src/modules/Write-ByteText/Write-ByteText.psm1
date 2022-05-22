## Write-ByteText.psm1
## Creates files of a specific size
## by writing periods to create dummy text.
##
### FUNCTIONS
function Write-ByteText {
<#
.SYNOPSIS 
Generates dummy text file of given size.

.DESCRIPTION
Generates dummy text file of a given size with the given filename.
Considers a period as one Byte. Multiplying the desired filesize by the number
of periods produces the number of periods to write to each file.

.PARAMETER Filename
String representing filename to put dummy text of a given size.
Defaults to ByteTextOut.txt.

.PARAMETER Filesize
Integer representing the desired filesize in Bytes. Defaults to zero Bytes.

.INPUTS
None. You cannot pipe objects to Write-ByteText.

.OUTPUTS
System.Void

.EXAMPLE
PS C:\> Write-ByteText -Filesize 18 -Filename dummy.txt

.EXAMPLE
PS C:\> Write-ByteText 18 dummy.txt

.EXAMPLE
PS C:\> Write-ByteText

.LINK
https://github.com/JoseALermaIII/PowerShell-tutorials

.NOTES
Author:  J. Lerma
Date: May 21, 2022
#>

    [CmdletBinding()]
    param (
        [ValidateNotNullOrEmpty()]
        [int]$Filesize=0,

        [ValidateNotNullOrEmpty()]
        [string]$Filename='ByteTextOut.txt'
    )
    if ($Filesize -eq 0) {
        Out-File -NoNewline -Encoding ASCII -FilePath .\$Filename
    }
    else {
        $Output = for ($i=1; $i -le $Filesize; $i++) {
            '.'
        }
        $CharCount=$Output.Length
        Write-Verbose -Message "Characters written to ${Filename}: $CharCount"
        Out-File -NoNewline -Encoding ASCII -FilePath .\$Filename -InputObject $Output
    }
    return
}
