<# What I want to happen is for powershell to display the next computer in line at the top intro, but allow for a computer only search below using a loop to keep searching until the user closes out the session#>
Import-Module ActiveDirectory

$r = Get-ADComputer -Filter 'Name -like "MA-LT*"' | select-object -expandproperty name #| Select-Object -first 1 #This will get the first one in a list, but it doesnt nessasarily mean that it is the last in the sequence
$r -creplace '[^0-9]',''
$r.TrimStart('0')

 write-host $r

Start-Sleep -s 1000000



<#
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

                        #>