## Output.ps1
## Shows how to output CLI to file
##
## Author:   J. Lerma
## Date:     December 7, 2015
##
## assigns a string
$input_string = "test string"
## outputs string to file
$input_string >> log.txt
## assigns members of string object (in table format)
$var_a = Get-Member -InputObject $input
## outputs table to file (human-readable)
ConvertTo-Html -InputObject $var_a >> log.html
