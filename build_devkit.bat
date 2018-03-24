@echo off
COLOR 0A

del /S /q "acb_devkit.vr"
mkdir "acb_devkit.vr"
xcopy /s "src/arma/sqm" "acb_devkit.vr"
xcopy /s "src/arma/framework" "acb_devkit.vr"

pause