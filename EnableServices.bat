for %%S in (
  WpnUserService
  OneSyncSvc
  CDPUserSvc
  MessagingService
  PimIndexMaintenanceSvc
  UnistoreSvc
  WpnUserService
  UserDataSvc
  ConsentUxUserSvc
  ConsentUxUserSvc
  DevicePickerUserSvc
  PimIndexMaintenanceSvc
  DevicesFlowUserSvc
  DeviceAssociationBrokerSvc
  CaptureService
  PrintWorkflowUserSvc
  MessagingService
  UserDataSvc
  CaptureService
  DeviceAssociationBrokerSvc
  PrintWorkflowUserSvc
  BluetoothUserService
  AarSvc
  BcastDVRUserService
  MicrosoftEdgeElevationService
  cbdhsvc



AppVClient
CredentialEnrollmentManagerUserSvc_59606
dcsvc
DialogBlockingService
DisplayEnhancementService
dmwappushservice
DsSvc
EFS
FDResPub
fhsvc
FrameServer
GraphicsPerfSvc
hidserv
IKEEXT
IpxlatCfgSvc
KeyIso
KtmRm
LanmanServer
lfsvc
LicenseManager
lmhosts
MsKeyboardFilter
NaturalAuthentication
NcaSvc
NcbService
NcdAutoSetup
PhoneSvc
PolicyAgent
PushToInstall
RmSvc
SCardSvr
ScDeviceEnum
SEMgrSvc
SensorDataService
SensorService
SensrSvc
SharedAccess
SmsRouter
spectrum
SSDPSRV
stisvc
StorSvc
svsvc
TabletInputService
UdkUserSvc_59606
W32Time
WarpJITSvc
WbioSrvc
wcncsvc
WebClient
WEPHOSTSVC
WerSvc
WFDSConMgrSvc
wisvc
wlidsvc
wlpasvc
WPDBusEnum
WpnUserService_59606
XblGameSave
XboxGipSvc


) do (
  reg add "HKLM\SYSTEM\CurrentControlSet\Services\%%S" /v Start /t REG_DWORD /d 3 /f >nul
)



@Echo Registry Edit
reg add "HKLM\Software\Policies\Microsoft\Edge" /v "EnableMediaRouter" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "EnableMDNS" /t REG_DWORD /d "0" /f
reg add  "HKLM\Software\policies\Microsoft\Windows NT\DNSClient"
reg add  "HKLM\Software\policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Lsa" /v "restrictanonymous" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService" ^
 /v Start /t REG_DWORD /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f 