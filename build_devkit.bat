@echo off
COLOR 0A

del /S /q "acb_devkit.vr"
mkdir "acb_devkit.vr"
xcopy /s "src" "acb_devkit.vr"
cd "bin"
start FileBank.exe -dst "../src" "../acb_devkit.vr"
timeout 1
del /f /s /q "../acb_devkit.vr"
rmdir /s /q "../acb_devkit.vr"

pause