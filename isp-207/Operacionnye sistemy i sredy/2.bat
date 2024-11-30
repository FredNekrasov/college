@echo off
setlocal enabledelayedexpansion
for %%f in (%1/*) do set /a z=%%~zf%%2& cmd /v/c if not !z!==0 echo %%~zxf
pause
