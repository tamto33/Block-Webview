@ setlocal enableextensions 
@ cd /d "%~dp0"


@for /R "C:\Program Files (x86)\Microsoft\EdgeWebView\Application" %%a in (*.exe) do (

netsh advfirewall firewall add rule name="%%~na (Blocked using script)" dir=out program="%%a" action=block
netsh advfirewall firewall add rule name="%%~na (Blocked using script)" dir=in program="%%a" action=block

)