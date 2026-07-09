:start
REM arp -d 239.255.255.250
REM netsh interface ipv4  delete neighbors
REM netsh interface ipv6  delete neighbors
for i in {0..250}; do sudo arp -d 239.255.255.$i;

goto start