#SingleInstance Force

^!l:: ; Ctrl + Alt + L
    Gosub, CheckSpotify
return

CheckSpotify:
    IfWinExist, ahk_exe Spotify.exe
    {
        WinGetTitle, title, ahk_exe Spotify.exe
        if InStr(title, " - ") {
            ; Construct the custom prompt
            prompt := "Give me a definition and meaning of the song "
            prompt .= """" . title . """. Do not include any extra suggestions or header text. Just explain the song."

            ; URL encode the prompt
            promptEncoded := StrReplace(prompt, " ", "+")
            promptEncoded := StrReplace(promptEncoded, """", "%22") ; encode quotes
            promptEncoded := StrReplace(promptEncoded, "`n", "")   ; remove line breaks

            Run, https://chat.openai.com/?q=%promptEncoded%
        } else {
            ToolTip, Spotify is open, but no song is playing
            SetTimer, RemoveTip, -3000
        }
    }
    else
    {
        ToolTip, Spotify is not running
        SetTimer, RemoveTip, -3000
    }
return

RemoveTip:
    ToolTip
return
