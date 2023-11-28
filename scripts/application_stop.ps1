

#Stopping existing node servers

Write-Output "Stopping any existing node servers"

Get-Process node | Stop-Process


