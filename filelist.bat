@echo off
setlocal
:prompt
set /p ans="List Directory Files (y/n)? "
if /i "%ans%" neq "y" goto end

dir %1 /b /a-d /o:en > "%cd%\filelist.txt"
pause

:end
endlocal
