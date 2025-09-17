#SingleInstance Force
#´::

Run, "C:\Users\User01\AppData\Local\Programs\LNV\Stremio-4\stremio.exe"

Sleep, 100
Run, DisplaySwitch.exe
Sleep, 100
Send, {Down 1}{Enter}

Sleep, 100
Send, {Esc}
Sleep, 80

Send, {F11}
Sleep, 80

Return



