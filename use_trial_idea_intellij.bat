Step 1:
Need to open cmd after that typing notepad reset.bat and then put a lot of codes as below

set JETBRAINSDIR=%USERPROFILE%\AppData\Roaming\JetBrains
rmdir /S /Q %JETBRAINSDIR%\IntelliJIdea2020.1\eval
rmdir /S /Q %JETBRAINSDIR%\consentOptions
del %JETBRAINSDIR%\IntelliJIdea2020.1\options\other.xml
del %JETBRAINSDIR%\PermanentDeviceId
del %JETBRAINSDIR%\PermanentUserId
del %JETBRAINSDIR%\bl
del %JETBRAINSDIR%\crl
reg delete HKEY_CURRENT_USER\Software\JavaSoft /f
pause
Step 2:
Press and hold or right-click the Start  button, then select Run. Enter regedit in the Open: box and select OK
After that find JetBrains into Computer\HKEY_LOCAL_MACHINE\SOFTWARE\ and remove it
