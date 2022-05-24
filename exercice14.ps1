$ListDisk = Get-WmiObject -Class Win32_LogicalDisk
$NombreDisk

Foreach($Disk in $ListDisk)
{
   $FreeSpace = ($Disk.freespace/1GB).ToString('F2')
   $TotalFreeSpace = $FreeSpace 
   Write-Host "Il reste $FreeSpace Go de libre sur $($Disk.DeviceID)"
}

Write-Host "Il vous reste au total, $TotalFreeSpace Go de libres"