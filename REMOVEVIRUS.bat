
@ECHO REMOVE VIRUS WINDOWS DEFENDER
REM icacls "C:\Program Files" /setowner "administrator" /t /c /l /q
REM icacls "C:\Program Files \Windows Defender" /reset /t /c /l /q 

REM icacls "C:\ProgramData\Microsoft\Windows Defender\Platform" /setowner "administrator" /t /c /l /q
REM icacls "C:\ProgramData\Microsoft\Windows Defender\Platform" /reset /t /c /l /q

REM icacls "C:\Program Files (x86)" /setowner "administrator" /t /c /l /q
REM icacls "C:\Program Files (x86)" /reset /t /c /l /q

@PAUSE