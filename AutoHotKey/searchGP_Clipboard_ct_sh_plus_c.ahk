#SingleInstance Force
^+c::
{
 Send, ^c
 Sleep 50
 Run, https://chat.openai.com/?q=%clipboard%
 Return
}