
:start
ipconfig /flushdns

rmdir /q /s C:\Windows\Temp
del C:\Windows\Temp /f /s /q


rmdir /q /s C:\Users\ADMINI~1\AppData\Local\Temp
del C:\Users\ADMINI~1\AppData\Local\Temp /f /s /q

rmdir /q /s C:\Windows\Prefetch
del /f /q /s C:\Windows\Prefetch

goto start