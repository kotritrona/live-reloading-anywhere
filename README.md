## Live Reloading Without Using React

TL;DR - Install AutoHotkey, and run the script.
(if you use a text editor other than sublime_text, simply edit the process name in the script)

People who would know this if using React - Live Reloading, which reloads the page whenever you modify the codes.

The original live reloading function is done by using sophisticated methods such as Socket.io and NPX Watch, which is all professional and impressive.

However, since we do not have time to learn those bizarre techniques, it puts us to a disadvantage where we must rely on their workflow to develop our own app.

This is all not necessary - we can achieve live reloading in 10 lines of code, without installing those node_modules, without using React, even without using any javascript. It works even if you run PHP!

And since there is only 10 lines of code, the best part is you retain full control. No reading other people's StackOverflows anymore!

There is goes:

```autohotkey
~^s::
if WinExist("ahk_exe firefox.exe")
    ControlSend, , ^{f5}, ahk_exe firefox.exe
if WinExist("ahk_class Chrome_WidgetWin_1") {
    WinActivate, ahk_class Chrome_WidgetWin_1
    ControlSend, , ^{f5}, ahk_class Chrome_WidgetWin_1
    Sleep, 150
    WinActivate, ahk_exe sublime_text.exe ; if you use other text editor, change it to the other process name
}
return
```

Essentially simply send F5 to browser windows when you press Ctrl+S to save the code.
Too bad Chrome requires you to be active to actually refresh, so you need to activate it and turn back. But the best part is that the taskbar will shine when this happens, which is a perfect reminder!

#### Future Work

Support other systems than Windows obviously. However it is also apparent I wouldn't bother to do it as you'd surely know how when you read this.