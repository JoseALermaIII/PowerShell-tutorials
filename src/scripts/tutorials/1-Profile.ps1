## Profile.ps1
## Creates profile for Powershell with useful functions
##
## Author:   J. Lerma
## Date:     December 13, 2015
##
### FUNCTIONS
# Function to open profile for editing
function pro {notepad $profile.CurrentUserAllHosts}

# Function to open PowerShell Help in a .chm file
#  where language code is 0409 (for English)
function Get-CHM
{
    (invoke-item $env:windir\help\mui\0409\WindowsPowerShellHelp.chm)
}

# Function to list aliases for cmdlets
function Get-CmdletAlias ($cmdletname)
{
    get-alias | Where {$_.definition -like "*$cmdletname*"} | ft Definition, Name -auto
}

# TODO: Add an Add-PsSnapin function to add any Powershell snap-ins that are used.

# Function to customize console.
function Color-Console
{
    $host.ui.rawui.backgroundcolor = "white"
    $host.ui.rawui.foregroundcolor = "black"
        $hosttime = (dir $pshome\powershell.exe).creationtime
        $Host.UI.RawUI.WindowTitle = "Windows Powershell $hostversion ($hosttime)"
        
        clear-host
}
Color-console

# Function to add custom PowerShell prompt with
#  computer name and working directory
function prompt
{
    $env:computername + "\" + (get-location) + "> "
}
