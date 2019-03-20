#name
#script URL
#Discription
#Version
#Author
#Author URL

#set-execustionPolicy -ExecutionPolicy Unrestricted

CLS # Cleared je scherm
$date = Get-Date
write-host "--------------------PC Info-----------------------"
Write-Host "current Date and Time : " $Date
Write-Host "Computername          : " $env:COMPUTERNAME
Write-Host "Username              : " $env:USERNAME
Write-Host "OS                    : " $env:OS
write-host "--------------------Disk-----------------------"
$disk = Get-Disk -number 0 
write-host "Disk 0 Type           : " $disk.FriendlyName
write-host "Disk 0 Size in bytes  : " $disk.AllocatedSize
write-host "--------------------WiFi-----------------------"
$wifi = Get-NetAdapter | Where-Object {$_.Name -eq "wi-fi"}
write-host "Interface Description : " $wifi.InterfaceDescription 
write-host "Interface Link-Speed  : " $wifi.LinkSpeed
write-host "Interface Status      :  "-NoNewline
write-host $wifi.status -ForegroundColor Green
write-host "--------------------Videokaart-----------------------"
$gpu1 = Get-WmiObject Win32_VideoController | Select-Object -First 1
Write-Host "Graphic Card 1        : " $gpu1.Description
Write-Host "RAM                   : " $gpu1.AdapterRAM
Write-Host ""
$gpu2 = Get-WmiObject Win32_VideoController | Select-Object -Skip 1
Write-Host "Graphic Card 2        :" $gpu2.Description
Write-Host "RAM                   : "$gpu2.AdapterRAM

