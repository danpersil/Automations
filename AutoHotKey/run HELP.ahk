#SingleInstance Force
^+h:: ; Ctrl + Shift + H
Gui, New
Gui, Add, Text,, Here are your AutoHotkey shortcuts:
Gui, Add, Text,, • Ctrl + Shift + H Help

Gui, Add, Text,, • Ctrl + Alt + T - Open Teams and Set Available

Gui, Add, Text,, ------
Gui, Add, Text,, Chat GPT
Gui, Add, Text,, • Ctrl + Shift + C - Open GPT with Clipboard
Gui, Add, Text,, • Ctrl + Shift + C - Open GPT with Input
Gui, Add, Text,, ------

Gui, Add, Text,, ------
Gui, Add, Text,, Spotify
Gui, Add, Text,, • Alt + F11 - Prev Song
Gui, Add, Text,, • Alt + F12 - Next Song
Gui, Add, Text,, • W + ' - Ask Spotify 
Gui, Add, Text,, ------

Gui, Add, Text,, • W + ´ - Open Stremio - Mode Cinema
Gui, Add, Text,, • W + O – Run Automations

Gui, Add, Button, Default gCloseGui, OK
Gui, Show,, My Shortcuts
return

CloseGui:
GuiClose:
GuiEscape:
Gui, Destroy
return
