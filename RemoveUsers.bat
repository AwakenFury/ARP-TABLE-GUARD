:START
@ECHO STARTING
@echo REMOVING LOCALUSERS....
net localgroup users "NT AUTHORITY\authenticated Users" /delete
net localgroup users "NT AUTHORITY\INTERACTIVE" /delete
@ECHO =============VERIFY REMOVAL OF LOCAL USERS=====================
net localgroup Users

@ECHO STARTING CLEANING OF IPV4 AND IPV6 CONNECTIONS
netsh interface ipv4  delete neighbors
netsh interface ipv6  delete neighbors
@ECHO =================VERIFY REMOVAL OF CONNECTIONS==================
ARP -A

REM @ECHO STARTING CLEANING OF ROUTING TABLE
REM route /F

@ECHO ===================VERIFY REMOVAL OF ROUTING TABLE=====================
ROUTE PRINT
@echo USER REMOVED SUCCESSFULLY....
@PAUSE



