<# What I want to happen is for powershell to display the next computer in line at the top intro, but allow for a computer only search below using a loop to keep searching until the user closes out the session#>






Write-Host "**********************************************************************************`n
            
Powershell Find Computers in AD Script`n
   Writen By: Zachary Milot`n
            
**********************************************************************************`n"
Import-Module ActiveDirectory
Get-ADComputer -Filter * -Property * | Format-Table Name,OperatingSystem,OperatingSystemServicePack,OperatingSystemVersion -Wrap –Auto
:serviceloop while(1) {
                        $Search = Read-Host "Enter Serarch"
                        Get-ADComputer -Filter $Search -Property * | Format-Table Name,OperatingSystem,OperatingSystemServicePack,OperatingSystemVersion -Wrap –Auto
                       
                        }