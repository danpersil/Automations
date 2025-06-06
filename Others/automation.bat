::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC5HSRbSbVeeCaIS5Of66/m7g1gJW+8+bIbU1PqLOOVz
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enabledelayedexpansion

set "TARGET_FOLDER=C:\Users\User01\Documents\Automation"
set "COUNT=0"

echo Listing all .bat scripts in: %TARGET_FOLDER%
echo.

:: Collect all .bat files and show them
for %%f in ("%TARGET_FOLDER%\*.bat") do (
    set /a COUNT+=1
    set "SCRIPT!COUNT!=%%f"
    echo !COUNT!. %%~nxf
)

if %COUNT%==0 (
    echo No .bat files found in %TARGET_FOLDER%
    pause
    exit /b
)

echo.
set /p CHOICE=Enter the number of the script to run: 

:: Validate choice
if not defined SCRIPT%CHOICE% (
    echo Invalid choice.
    pause
    exit /b
)

echo Running: !SCRIPT%CHOICE%!
echo ----------------------------------
call "!SCRIPT%CHOICE%!"
