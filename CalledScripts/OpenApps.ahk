#SingleInstance Force

; Open apps in your system (is the same thing that use the "Win + r" to open the "run" window)

lista := "main.cpl|shell:startup|regedit|Cursors|Themes"

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
if (opcao = "main.cpl") {
    Run, main.cpl
}

else if (opcao = "shell:startup") {
    Run, shell:startup
}

else if (opcao = "regedit") {
    Run, regedit
}

else if (opcao = "Cursors") {
    Run, C:\Windows\Cursors
}

else if (opcao = "Themes") {
    Run, C:\Windows\Resources\Themes
}

ExitApp

GuiClose:
GuiEscape:
ExitApp
