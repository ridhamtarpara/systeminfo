Get-CimInstance -Namespace root\wmi -ClassName wmimonitorid | foreach {
	New-Object -TypeName psobject -Property @{
        Manufacturer = ($_.ManufacturerName -notmatch '^0$' | foreach {[char]$_}) -join ""
        Name = ($_.UserFriendlyName -notmatch '^0$' | foreach {[char]$_}) -join ""
        Serial = ($_.SerialNumberID -notmatch '^0$' | foreach {[char]$_}) -join ""
    }
}