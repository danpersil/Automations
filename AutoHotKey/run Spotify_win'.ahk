#SingleInstance Force
#'::
InputBox, userInput, Search for a song or a playlist:
if (ErrorLevel)  ; User pressed Cancel
    return

Run, C:\Users\User01\AppData\Roaming\Spotify\Spotify.exe
Sleep, 5000
Send, ^k
SendInput, %userInput%
Sleep, 3000
Send, {Enter}
Sleep, 3000
Send, {Tab}
Sleep, 2000
Send, {Enter}
Return