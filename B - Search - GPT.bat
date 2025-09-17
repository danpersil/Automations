@echo off
setlocal enabledelayedexpansion

set /p PROMPT=Enter what you want to ask ChatGPT: 
set "ENCODED_PROMPT="
for %%A in (%PROMPT%) do (
    set "ENCODED_PROMPT=!ENCODED_PROMPT!%%20%%A"
)

:: Replace this path with your actual Chrome install location if different
set "CHROME_PATH=C:\Program Files\Google\Chrome\Application\chrome.exe"

start "" "%CHROME_PATH%" --profile-directory="Default" "https://chat.openai.com/?q=!ENCODED_PROMPT!"
endlocal

