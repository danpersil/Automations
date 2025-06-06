@echo off
setlocal

:: Predefined apps
echo Do you want to close Stremio? (Y/N)
set /p closeStremio=Your choice: 
if /I "%closeStremio%"=="Y" (
    echo Closing Stremio...
    taskkill /IM stremio.exe /F >nul 2>&1
)

echo Do you want to close Spotify? (Y/N)
set /p closeSpotify=Your choice: 
if /I "%closeSpotify%"=="Y" (
    echo Closing Spotify...
    taskkill /IM spotify.exe /F >nul 2>&1
)

echo Do you want to close Notion? (Y/N)
set /p closeNotion=Your choice: 
if /I "%closeNotion%"=="Y" (
    echo Closing Notion...
    taskkill /IM notion.exe /F >nul 2>&1
)

:: Custom app closing loop
:customLoop
echo.
echo Enter the name of another app you want to close (or type "exit" to finish):
set /p customApp=App name: 

if /I "%customApp%"=="exit" (
    echo Exiting script.
    goto end
)

echo Trying to close "%customApp%"...
taskkill /IM "%customApp%" /F >nul 2>&1

goto customLoop

:end
echo All done.
pause
