@echo off
echo ******************************************************************************
echo *           Created by Ridham Tarpara^<ridham.tarpara^@gmail.com^>              *
echo ******************************************************************************
echo[
echo[
echo ------------------------------------------------------------------------------
echo VGA
echo ------------------------------------------------------------------------------
wmic path win32_VideoController get name , adapterram,PNPDeviceID
echo ------------------------------------------------------------------------------
echo RAM
echo ------------------------------------------------------------------------------
wmic MEMORYCHIP get BankLabel, DeviceLocator, Capacity,serialnumber,manufacturer
systeminfo | findstr /C:"Total Physical Memory"
echo ------------------------------------------------------------------------------
echo CPU
echo ------------------------------------------------------------------------------
wmic cpu get name, numberofcores, maxclockspeed,serialnumber
echo ------------------------------------------------------------------------------
echo Mother Board
echo ------------------------------------------------------------------------------
wmic baseboard get product,Manufacturer,version,serialnumber
echo ------------------------------------------------------------------------------
echo Disk
echo ------------------------------------------------------------------------------
wmic diskdrive get size,caption,serialnumber
echo ------------------------------------------------------------------------------
echo Monitor
echo ------------------------------------------------------------------------------
powershell.exe -ExecutionPolicy ByPass -noexit -file ".\monitor.ps1"
pause
