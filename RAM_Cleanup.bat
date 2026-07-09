@echo off
echo Cleaning system temporary files...

:: Clear User Temp Files
del /q /f /s "%TEMP%\*.*" >nul 2>&1
for /d %%x in ("%TEMP%\*") do rmdir /s /q "%%x" >nul 2>&1

:: Clear System Temp Files
del /q /f /s "%SystemRoot%\Temp\*.*" >nul 2>&1
for /d %%x in ("%SystemRoot%\Temp\*") do rmdir /s /q "%%x" >nul 2>&1

:: Clear Windows Update Cache
net stop wuauserv >nul 2>&1
del /q /f /s "%SystemRoot%\SoftwareDistribution\Download\*.*" >nul 2>&1
net start wuauserv >nul 2>&1

:: Flush Network Memory
ipconfig /flushdns >nul 2>&1

echo Memory and Cache cleared successfully!
pause
