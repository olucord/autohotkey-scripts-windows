; main script

Menu, Tray, Icon, C:\Users\Lucas\Documents\Icons\Windows\icons8-gas-100.ico

RunWait, C:\Users\Lucas\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility\Magnify.lnk

#SingleInstance, force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include G:\My Drive\AHK\AHK V1\Active\HotKeys.ahk
#Include G:\My Drive\AHK\AHK V1\Active\Functions.ahk

Home::ReloadThisScript()
End::Run, G:\My Drive\AHK\AHK V1\Active
F12::Suspend