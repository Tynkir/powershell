Get-ADUser -Filter "Enabled -eq 'True' -AND

PasswordNeverExpires -eq 'False'" -Properties

PasswordLastSet,PasswordNeverExpires,PasswordExpired |

Select DistinguishedName,Name,pass*,@{Name="PasswordAge";

Expression={(Get-Date)-$_.PasswordLastSet}} |sort

PasswordAge -Descending | ConvertTo-Html -Title

"Password Age Report" | Out-File 'C:\pwage.htm' 