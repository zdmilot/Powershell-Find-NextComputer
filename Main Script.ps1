<# What I want to happen is for powershell to display the next computer in line at the top intro, but allow for a computer only search below using a loop to keep searching until the user closes out the session#>
Import-Module ActiveDirectory
Get-ADComputer -Filter * -Property * | Format-Table Name,OperatingSystem,OperatingSystemServicePack,OperatingSystemVersion -Wrap –Auto