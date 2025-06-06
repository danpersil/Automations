@echo off
set /p SEARCH=Enter what you want to search for in Chrome: 
start chrome "https://www.google.com/search?q=%SEARCH%"
