; script to call functions

#SingleInstance Force
#Include G:\My Drive\AHK\AHK V1\Active\Functions.ahk

lista := "Ubuntu|WSL folder|OpenApps|Alias|colour|colour and background|song"

Gui, Add, Text,, Execute:
Gui, Add, DropDownList, vMinhaOpcao w300 gExecutarAcao, %lista%
Gui, Show,, lucas@LA2QMod:~

Sleep, 100
ControlSend, ComboBox1, {F4}, lucas@LA2QMod:~ ; Abre a lista automaticamente

return

ExecutarAcao:
Gui, Submit, NoHide
Gui, Destroy

opcao := MinhaOpcao

; switch-case simulado com ifs
if (opcao = "Ubuntu") {
    SendInput, {RWin}
    Sleep, 500
    SendRaw, Ubuntu
    Sleep, 100
    Send, {Enter}
    Sleep, 100
    WinWait, lucas@LA2QMod: ~
    MsgBox, , "lucas@LA2QMod: ~","opening...", 1
    Sleep, 100
    Click
    Sleep, 100
    Send, ^+{4}
    Sleep, 100
    Send, cd my_code
    Sleep, 100
    Send, {Enter}
    Sleep, 100
    Send, clear
    Sleep, 100
    Send, {Enter}
    Sleep, 100
    Send, ls
    Sleep, 100
    Send, {Enter}
    Sleep, 100
    Send, cd
    Sleep, 100
    Send, {Space}
}

else if (opcao = "WSL folder") {
    Run, \\wsl.localhost\Ubuntu\home\lucas
    Sleep, 5000
    MsgBox, "Don't edit this folder manually, because it's very slowly. Instead of use the terminal"
}

else if (opcao = "OpenApps") {
    Run, G:\My Drive\AHK\AHK V1\Active\CalledScripts\OpenApps.ahk
}

else if (opcao = "Alias") {
    Run, G:\My Drive\AHK\AHK V1\Active\CalledScripts\Alias.ahk
}

else if (opcao = "colour") {
    Run, G:\My Drive\AHK\AHK V1\Active\CalledScripts\ColoursHtmlInMd.ahk
}

else if (opcao = "colour and background") {
    SendInput, ^x
    SendRaw, <span style="color: black; background: yellow"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "song") {
    Run, C:\Users\Lucas\Documents\Stalling.m4a
    Sleep, 100
    WinWait, Media Player
    Sleep, 3000
    Send, ^{t 2}
    WinMinimize, A
}


ExitApp

GuiClose:
GuiEscape:
ExitApp
