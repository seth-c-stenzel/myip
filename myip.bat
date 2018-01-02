REM Remember to place the batch file in: C:\Windows\System32
REM This will let a user run it from the start search


@echo off
cls
echo.
echo System Network Information
echo.
echo    User Name . . . . . . . . . . . . : %USERNAME%
echo    Host Name . . . . . . . . . . . . : %COMPUTERNAME%
echo    Computer Name . . . . . . . . . . : %COMPUTERNAME%
ipconfig /all | find /I "IPv4"
ipconfig /all | find /I "DHCP Server"
ipconfig /all | find /I "DNS Servers"
ipconfig /all | find /I "gateway"
echo.
echo.

REM If you have VPN users uncomment the 2 lines below.
REM This gives them an Idea of the subnet they should see for VPN
REM echo    Your VPN IP Address should start with:
REM    x.x.x.x
echo.
echo.
pause