@echo off
setlocal

:: Ask user for movie name
set /p movie="Enter movie name: "

:: Replace spaces with '+' for URL encoding
set "search=%movie: =+%"

:: Open Letterboxd search
start https://letterboxd.com/search/%search%/

:: Open IMDb search
start https://www.imdb.com/find?q=%search%

endlocal
