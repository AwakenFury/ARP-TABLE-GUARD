@echo Network Reset

cmdkey.exe /list > "%TEMP%\List.txt"
findstr.exe Target "%TEMP%\List.txt" > "%TEMP%\tokensonly.txt"
FOR /F "tokens=1,2 delims= " %%G IN (%TEMP%\tokensonly.txt) DO cmdkey.exe /delete:%%H
del "%TEMP%\List.txt" /s /f /q
del "%TEMP%\tokensonly.txt" /s /f /q
echo All done

@echo REMOVING USERS....
net localgroup users "NT AUTHORITY\authenticated Users" /delete
net localgroup users "NT AUTHORITY\INTERACTIVE" /delete
netsh interface ipv4  delete neighbors
@echo USER REMOVED....


:start


ipconfig /flushdns
netsh advfirewall reset
arp -a
ipconfig /release
ipconfig /flushdns
ipconfig /renew
netsh int ip reset
netsh winsock reset
netsh advfirewall reset
taskkill /im steam.exe /f /t





@echo REVIEW....
ipconfig /flushdns
netsh advfirewall import "C:\Users\Administrator\Documents\Lockdown2.wfw" 
Start WF.msc
arp -a
cmdkey /list
netstat -anob

@Pause

Start Flush.bat
Start Flush.bat






