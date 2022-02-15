#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Mouse, Relative

SplashTextOn,300,25,LostArk - NoIdle, Made by Breezko (https://github.com/breezko)
SetTimer, RemoveSplash, -1000

; Tray
Menu, Tray, NoStandard ; remove standard Menu items
Menu, Tray, Add, F9 to start, MenuHandler  ; Creates a new menu item.
Menu, Tray, Add, F10 to stop, MenuHandler ; Creates a new menu item.
Menu Tray, Add
Menu, Tray, Add, Credits, CreditsHandler
Menu, Tray, Add
Menu, Tray, Add, Exit, ExitHandler ; Creates a new menu item.
return 


RemoveSplash:
SplashTextOff
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
if WinExist("LOST ARK")
{
    WinActivate
    WinGetPos, Xpos, Ypos, wWidth, wHeight
    Loop,{
        Random, xMultiplier, 0.3,0.8
        Random, yMultiplier, 0.4, 0.8
        Random, sleep, 500,1000
        x := xMultiplier * wWidth
        y := yMultiplier * wHeight
        tooltipX := 0.1 * wWidth
        tooltipY := 0.2 * wHeight
        ToolTip,  Press F10 to Stop, %tooltipX%,%tooltipY%
        ;MouseMove,  %x%,%y%
        Click, %x%,%y%
        Sleep, %sleep%
    }
}
return

F10::
reload
return