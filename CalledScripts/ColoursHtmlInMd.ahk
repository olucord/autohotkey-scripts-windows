#SingleInstance Force

; Select the text that you want to colour and execute this script

lista := "Orange|Red|Aqua|Yellow|Blue|Magenta|Lime|Purple|DeepPink"

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
if (opcao = "Orange") {
	SendInput, ^x
    SendRaw, <span style="color: orange"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "Red") {
	SendInput, ^x
    SendRaw, <span style="color: red"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "Aqua") {
	SendInput, ^x
    SendRaw, <span style="color: aqua"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "Yellow") {
	SendInput, ^x
    SendRaw, <span style="color: yellow"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "Blue") {
	SendInput, ^x
    SendRaw, <span style="color: blue"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "Magenta") {
	SendInput, ^x
    SendRaw, <span style="color: magenta"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "Lime") {
	SendInput, ^x
    SendRaw, <span style="color: lime"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "Purple") {
	SendInput, ^x
    SendRaw, <span style="color: Purple"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

else if (opcao = "DeepPink") {
	SendInput, ^x
    SendRaw, <span style="color: DeepPink"></span>
    SendInput, {Left 7}
    SendInput, ^v
    SendInput, {Right 8}
}

ExitApp

GuiClose:
GuiEscape:
ExitApp