## CountAs.ps1
## Counts the character "a" in a given string
##
## Author:   J. Lerma
## Date:     December 9, 2015
##
$input_string = "an abba blah blah"
$var_a = 0
$var_b = 0

while ($var_a -lt $input_string.length)
{
    if ($input_string[$var_a] -eq "a")
    {
        $var_b++
    }
    $var_a++
    #Write-Output -InputObject $var_b ## Debug
}
$var_b
