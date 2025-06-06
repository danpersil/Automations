#SingleInstance Force
^!t:: 
Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 1" https://teams.microsoft.com/v2/
Sleep, 5000
Send, ^{vkBF}
Sleep, 2000

Send, ava
Sleep, 1000
Send, ilable 
Sleep, 1000
Send, {Enter}
return
