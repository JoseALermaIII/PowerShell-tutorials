## Power.ps1
## Outputs power of 2 of input two ways:
## arithmetic operators and a function.
##
## Author:   J. Lerma
## Date:     December 12, 2015
##
## Note: Function contains CLI help info.
##
### VARIABLES
$input = 1

### FUNCTIONS
function pow ([int]$base,[int]$power)
    {
        $int_a = 0
        $int_b = 1
        
        while ($int_a -lt $power)
            {
            $int_b = $int_b * $base
            $int_a++
            }
        return $int_b
        
            <#
            .SYNOPSIS 
            Calculates supplied base to supplied power.

            .DESCRIPTION
            Calculates supplied base to supplied power.
            Needs two integer inputs for base and power.

            .PARAMETER base
            Integer that is to be operated on. Defaults to 1.
            If float is used, it will be rounded up to nearest integer.

            .PARAMETER power
            Integer that specifies what power to evaluate the base to.
            If float is used, it will be rounded up to nearest integer.

            .INPUTS
            None. You cannot pipe objects to pow.

            .OUTPUTS
            System.Integer. pow returns an integer result of base to given power.

            .EXAMPLE
            C:\PS> pow 3 2
            9

            .EXAMPLE
            C:\PS> pow -base 4 -power 1
            4
            
            .EXAMPLE
            C:\PS> pow 2 0
            1

            .LINK
            Set-Item
            #>
    }

### MAIN
$input = read-host "What number will we power of by 2?"

# Data from read-host is stored as a string
[int]$input * [int]$input

pow $input 2
