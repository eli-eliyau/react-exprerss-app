# Stop any existing node.js processes 
echo "Stopping any existing node servers"

Get-Process node | Foreach-Object {$_.CloseMainWindow() | Out-Null }
Get-Process node | Stop-Process -Force