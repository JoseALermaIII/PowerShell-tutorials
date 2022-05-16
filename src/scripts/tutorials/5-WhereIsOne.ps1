## WhereIsOne.ps1
## Gives the location of the number 1 in an array
##
## Author:   J. Lerma
## Date:     December 12, 2015
##
$input_array = 0,2,3,1
$var_b = 0

foreach ($var_a in $input_array)
{
    if ($var_a -eq "1")
    {
        return $var_b
    }
    $var_b++
}
