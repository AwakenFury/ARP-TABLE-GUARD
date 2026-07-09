:start

REM Clear specific ARP range from .0 to .250
for /L %%i in (0,1,250) do arp -d 239.255.255 %%i

REM Clear all IPv4 and IPv6 neighbors
netsh interface ipv4 delete neighbors
netsh interface ipv6 delete neighbors

REM Pause for 1 second to prevent high CPU usage in the infinite loop
timeout /t 1 >nul

goto start


