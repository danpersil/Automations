#SingleInstance Force

^+s:: ; Ctrl + Shift + O
InputBox, userInput, Ask OpenAI, What do you want to ask OpenAI?

if (ErrorLevel) {
    MsgBox, You canceled the input.
    return
}

; Encode the user input for a URL (basic manual approach)
StringReplace, userInput, userInput, %A_Space%, +, All

; Construct the URL for ChatGPT or search (customize as needed)
fullURL := "https://chat.openai.com/?q=+" . userInput

; Open with Chrome's default profile
Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "%fullURL%"
return
