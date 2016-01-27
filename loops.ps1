## loops.ps1
## Examples of loops in PS
##
## Date:     December 7, 2015
##
## Do-While
Write-Output "Do-While loop"
$a, $count = 0
$x = 1,2,-3,78,0
do { $count++; $a++; } while ($x[$a] -ne 0)
$count
##
## Do-Until
Write-Output "Do-Until Loop"
$a, $count = 0
do { $count++; $a++; } until ($x[$a] -eq 0)
$count
##
## Skips values less than 0 (Do-While)
Write-Output "Skip less than 0 Loop"
$a = 0
do
{
    if ($x[$a] -lt 0) { continue }
    Write-Host $x[$a]
}
while (++$a -lt 10)
