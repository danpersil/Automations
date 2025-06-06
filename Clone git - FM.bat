@echo off
setlocal

REM Target directory
set "target_dir=C:\Rep\FM"

REM Create the directory if it doesn't exist
if not exist "%target_dir%" (
    mkdir "%target_dir%"
)

REM Get clipboard content (the copied git URL)
for /f "delims=" %%i in ('powershell -command "Get-Clipboard"') do set "repo_url=%%i"

REM Echo what it's cloning
echo Cloning: %repo_url%

REM Extract repo name from URL (remove .git if present)
for %%A in ("%repo_url%") do (
    set "repo_name=%%~nA"
)
set "repo_name=%repo_name:.git=%"

REM Clone the repository into the target directory
git clone %repo_url% "%target_dir%\%repo_name%"

REM Change directory into the repo
cd /d "%target_dir%\%repo_name%"

REM Look for a .sln file and open it with Visual Studio
for %%F in (*.sln) do (
    echo Opening solution: %%F
    start "" "%%F"
    goto done
)

echo No .sln file found in %repo_name%
:done

endlocal
pause
