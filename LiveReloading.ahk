#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

~^s::
if WinExist("ahk_exe firefox.exe")
    ControlSend, , ^{f5}, ahk_exe firefox.exe
if WinExist("ahk_class Chrome_WidgetWin_1") {
    WinActivate, ahk_class Chrome_WidgetWin_1
    ControlSend, , ^{f5}, ahk_class Chrome_WidgetWin_1
    Sleep, 150
    WinActivate, ahk_exe sublime_text.exe
}
return
