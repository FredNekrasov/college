@echo off
setlocal enabledelayedexpansion
set /p n="enter a number ": 
set /a t = 0
for /l %%d in (1, 1, %n% ) do (
   set /a t = %%d*%%d 
   echo %%d !t!
)
pause