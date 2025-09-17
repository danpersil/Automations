@echo off
setlocal enabledelayedexpansion

set "FOLDER=C:\Rep\FM"
set "COUNT=0"

echo Searching for .sln files in %FOLDER% and subfolders...
echo.

:: Find all .sln files recursively
for /r "%FOLDER%" %%f in (*.sln) do (
    set /a COUNT+=1
    set "FILE!COUNT!=%%f"
    echo !COUNT!. %%~nxf  (%%~dpf)
)

if %COUNT%==0 (
    echo No .sln files found in %FOLDER% or its subfolders.
    pause
    exit /b
)

echo.
set /p CHOICE=Enter the number of the solution to open: 

:: Validate input
if not defined FILE%CHOICE% (
    echo Invalid choice.
    pause
    exit /b
)

:: Path to Visual Studio (edit to match your version)
set "VS_PATH=C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE\devenv.exe"

if not exist "%VS_PATH%" (
    echo Visual Studio not found at expected path.
    pause
    exit /b
)

echo Opening: !FILE%CHOICE%!
start "" "%VS_PATH%" "!FILE%CHOICE%!"
