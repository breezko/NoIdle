#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SplashTextOn,300,25,LostArk - NoIdle, Made by Breezko (https://github.com/breezko)
Sleep 3000
SplashTextOff

; Tray
Menu, Tray, NoStandard ; remove standard Menu items
Menu, Tray, Add, F9 to start, MenuHandler  ; Creates a new menu item.
Menu, Tray, Add, F10 to stop, MenuHandler ; Creates a new menu item.
Menu Tray, Add
Menu, Tray, Add, Credits, CreditsHandler
Menu, Tray, Add
Menu, Tray, Add, Exit, ExitHandler ; Creates a new menu item.
return 



;Handlers
ExitHandler:
ExitApp

CreditsHandler:
MsgBox, Made by Breezko (https://github.com/breezko)

MenuHandler:
return


; Hotkeys
F9::
Loop,{
Random, x, 500,1200
Random, y, 3s00, 1000
Random, sleep, 500,1000
Click, %x%,%y%,
Sleep, %sleep%
}
return

F10::
reload
return