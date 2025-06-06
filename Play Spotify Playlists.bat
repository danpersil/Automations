@echo off
echo Choose a playlist to open:
echo 1. Today's Top Hits
echo 2. Chill Hits
echo 3. Oasis Radio
echo 4. Peaceful Piano
echo 5. Spotify of the Day
echo 6. My life is a movie
echo 7. Daily Mix 1
echo 8. Florence and the Machines Mix
set /p choice=Enter number: 

if "%choice%"=="1" start spotify:playlist:37i9dQZF1DXcBWIGoYBM5M
if "%choice%"=="2" start spotify:playlist:37i9dQZF1DX4WYpdgoIcn6
if "%choice%"=="3" start spotify:playlist:37i9dQZF1E4tCNO5vmpsuo
if "%choice%"=="4" start spotify:playlist:37i9dQZF1DX4sWSpwq3LiO
if "%choice%"=="5" start spotify:playlist:37i9dQZF1FbGTQD8IK20fw
if "%choice%"=="6" start spotify:playlist:37i9dQZF1DX4OzrY981I1W
if "%choice%"=="7" start spotify:playlist:37i9dQZF1E38zpivmMPThz
if "%choice%"=="8" start spotify:playlist:37i9dQZF1EIV6Dny6HEGMy

exit
