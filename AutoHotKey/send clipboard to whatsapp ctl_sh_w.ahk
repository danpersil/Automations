^+w:: ; Ctrl+Shift+W hotkey
ClipSaved := ClipboardAll ; Save current clipboard
clipboard := "" ; Clear clipboard
Send ^c ; Copy selected text
ClipWait, 2

if clipboard {
    Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" https://web.whatsapp.com/send?phone=+919299726&text=%clipboard%
    ; Wait for browser to load (adjust the sleep if needed)
    Sleep, 5000
    Send, {Enter}
} else {
    MsgBox, Clipboard is empty.
}

Clipboard := ClipSaved ; Restore original clipboard
return
