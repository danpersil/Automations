@echo off
setlocal

:: Set credentials and endpoint
set "USER=daniel.silva@sovos.com"
set "TOKEN="
set "URL=https://sovos.atlassian.net/rest/api/3/search/jql"

:: Write JSON payload to a temporary file
set "PAYLOAD_FILE=payload.json"
(
    echo {
    echo   "jql": "assignee = \"EMAIL\" AND statusCategory != Done AND issuetype != Sub-task",
    echo   "fields": ["key", "summary", "status"]
    echo }
) > %PAYLOAD_FILE%

:: Show payload for debugging
type %PAYLOAD_FILE%

:: Make the API call
curl -v -u "%USER%:%TOKEN%" ^
  -H "Accept: application/json" ^
  -H "Content-Type: application/json" ^
  --request POST ^
  --data @%PAYLOAD_FILE% ^
  "%URL%" > response.json

:: Show response for debugging
type response.json

:: Run PowerShell script to display and open issue
powershell -ExecutionPolicy Bypass -File open_issue.ps1

pause
endlocal
