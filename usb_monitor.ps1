# usb_monitor.ps1

$logName = "Microsoft-Windows-DriverFrameworks-UserMode/Operational"
Get-WinEvent -LogName $logName | Where-Object {
    $_.Message -like "*USB*"
} | Select-Object TimeCreated, Id, Message | Format-List
