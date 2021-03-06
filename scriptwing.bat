@echo off
title "ScriptWINg"
cls

net session >nul 2>nul
net session >nul 2>nul
if not "%errorlevel%" == "0" (
	echo "You must run the script as an administrator."
	pause
	exit /b 1
)

:Menuuu
echo "    - Select the script you'd like to run"
echo "      1) Adguard DoH"
echo "      2) Clean Desktop"
echo "      3) Expanded Power Options"
echo "      4) Faster Animations"
echo "      5) Hidden Features"
echo "      6) JoyPixels Systemwide"
echo "      7) Kernel Tune"
echo "      8) Return Recents"
echo "      9) Tracker Killer"
echo "      10) VPN Fixes"
set /P c="Enter the number corresponding to the script you'd like to run: "
if /I "%c%" EQU "1" goto AdguardDoh
if /I "%c%" EQU "2" goto CleanDesktop
if /I "%c%" EQU "3" goto ExpandedPowerOptions
if /I "%c%" EQU "4" goto FasterAnimations
if /I "%c%" EQU "5" goto HiddenFeatures
if /I "%c%" EQU "6" goto JoyPixelsSystemwide
if /I "%c%" EQU "7" goto KernelTune
if /I "%c%" EQU "8" goto ReturnRecents
if /I "%c%" EQU "9" goto TrackerKiller
if /I "%c%" EQU "10" goto VpnFixes
goto End

:AdguardDoh
call "%~dp0\bin\adguard-doh.bat"
goto Menuuu

:CleanDesktop
call "%~dp0\bin\clean-desktop.bat"
goto Menuuu

:ExpandedPowerOptions
call "%~dp0\bin\expanded-power-options.bat"
goto Menuuu

:FasterAnimations
call "%~dp0\bin\faster-animations.bat"
goto Menuuu

:HiddenFeatures
call "%~dp0\bin\hidden-features.bat"
goto Menuuu

:JoyPixelsSystemwide
call "%~dp0\bin\joypixels-systemwide.bat"
goto Menuuu

:KernelTune
call "%~dp0\bin\kernel-tune.bat"
goto Menuuu

:ReturnRecents
call "%~dp0\bin\return-recents.bat"
goto Menuuu

:TrackerKiller
call "%~dp0\bin\tracker-killer.bat"
goto Menuuu

:VpnFixes
call "%~dp0\bin\vpn-fixes.bat"
goto Menuuu

:End
cls
pause
exit /b 0
