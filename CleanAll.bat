@echo off
echo ERASE ALL?
set /p "resp=Enter 1 to confirm: "
if /I not %resp% == 1 exit
echo "Erasing..."
del /q res\*.*
del /q input\*.*
echo "Done."
pause
@echo on
