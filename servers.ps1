Get-ADComputer -Filter "OperatingSystem -like

'*Server*'" -properties OperatingSystem,OperatingSystem

ServicePack | Select Name,Op* | format-list 