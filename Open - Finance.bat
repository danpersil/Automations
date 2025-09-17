@echo off
setlocal enabledelayedexpansion

:: Set Chrome path and profile
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"
set PROFILE_DIR=--profile-directory="Default"

:: Function to prompt and open a site
set /p OPEN_EDENRED=Open Edenred? (y/n): 
if /i "%OPEN_EDENRED%"=="y" start "" %CHROME_PATH% %PROFILE_DIR% "https://www.myedenred.pt/"

set /p OPEN_ACTIVO=Open ActivoBank? (y/n): 
if /i "%OPEN_ACTIVO%"=="y" start "" %CHROME_PATH% %PROFILE_DIR% "https://www.activobank.pt/pt/"

set /p OPEN_BUDGET=Open BudgetBakers? (y/n): 
if /i "%OPEN_BUDGET%"=="y" start "" %CHROME_PATH% %PROFILE_DIR% "https://web-new.budgetbakers.com/dashboard"

set /p OPEN_TRADING=Open Trading212? (y/n): 
if /i "%OPEN_TRADING%"=="y" start "" %CHROME_PATH% %PROFILE_DIR% "https://app.trading212.com/"

set /p OPEN_TRADING=Open Notion Expenses? (y/n): 
if /i "%OPEN_NOTION%"=="y" start "" %CHROME_PATH% %PROFILE_DIR% "https://www.notion.so/danpersil/Expenses-Plan-10e147eb97698093a039dbc3fd9191c8?source=copy_link"

echo Done!
pause
exit
