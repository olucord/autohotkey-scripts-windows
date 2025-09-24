; Examples of codes .ahk

;************************************* Chamador de funções *************************************

#SingleInstance Force
#Include G:\My Drive\AHK\AHK V1\Active\Functions.ahk

lista := "Ubuntu|AHK folder"

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
if (opcao = "regedit") {
    Run, regedit
}

else if (opcao = "AHK folder") {
    Run, G:\My Drive\AHK\AHK V1\Active
}

ExitApp

GuiClose:
GuiEscape:
ExitApp

; Dicas Avançadas: https://www.autohotkey.com/boards/viewtopic.php?t=53156

1 ; ********************************************Msg de saída do script*********************************************************

OnExit("Closing")

f::
msgbox, Hello World
Return

g::
exitapp

Closing(){
  MsgBox, Good Bye
}

---------------------------------------------------------------------------------------------------------------------------

2 ; *********************************************Fechar vários scripts*********************************************************

Process, close, (Nome do executável {.exe} do script que foi compilado ou Nome do aplicativo)

{Ex}

Process, close, DVM - 175.exe

---------------------------------------------------------------------------------------------------------------------------
3 ; *********************************************Vários Funções em 1 key*******************************************************

toggle++

If toggle>4

	toggle=1

goto, % toggle=1 ? "a" : (toggle=2) ? "b" : (toggle=3) ? "c" : "d"

return



a:

msgbox, a

return



b:

msgbox, b

return



c:

msgbox, c

return

d:
MsgBox, D
return

---------------------------------------------------------------------------------------------------------------------------
4 ; *********************************************2 Funções em 1 key************************************************************

toggle++

If toggle>2

	toggle=1

goto, % toggle=1 ? "a" : "b"

return



a:

msgbox, a

return



b:

msgbox, b

return

---------------------------------------------------------------------------------------------------------------------------
5 ; *********************************************Segurar uma tecla*************************************************************

#MaxThreadsPerHotkey, 2
Toggle := 0

2::
Toggle := !Toggle
If (Toggle){
   Click, Down
} else {
   Click, Up
}

Return

---------------------------------------------------------------------------------------------------------------------------
6 ; *********************************************Sequência de teclas***********************************************************

; Script para detectar a sequência "a" seguido de "b" e depois "c"
a::
    Input, Key1, L1 T1 ; Espera a próxima tecla por até 1 segundo
    if (Key1 = "b") {
        Input, Key2, L1 T1 ; Espera mais uma tecla por até 1 segundo
        if (Key2 = "c") {
            MsgBox, Você pressionou a sequência "a" seguido de "b" e depois "c"!
        }
    }
return

---------------------------------------------------------------------------------------------------------------------------
6 ; *********************************************Script rodando mesmo com pc bloqueado*****************************************

#Persistent

DllCall("LockWorkStation") ; Comando para bloquear o pc
ExitApp

---------------------------------------------------------------------------------------------------------------------------
7 ; **************************************************Listando processos ativos************************************************

ListProcesses() {
    global ProcessBox  ; Torna a variável global
    processList := GetProcessList()

    Gui, New
    Gui, Add, Edit, w500 h400 vProcessBox ReadOnly, %processList%  ; Janela com barra de rolagem
    Gui, Show, , Lista de Processos
}

GetProcessList() {
    list := ""
    for process in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process")
        list .= process.Name "`n"
    return list
}

ListProcesses()  ; Chama a função

---------------------------------------------------------------------------------------------------------------------------
8 ; **************************************************Buscando por imagens na tela*********************************************

MsgBox, começou a busca!
Loop
{
    ; variáveis x e y são onde são salvas o início das coordenadas superiores esquerdas da imagem buscada ( isto é x = 0 e y = 0, relativos a imagem encontrada)
    ; 0 e 0 são as coor iniciais e 1366 e 768 coor finais da área de busca
	ImageSearch, variavel_x, variavel_y, 0, 0, 1366, 768, caminho da imagem
	if (ErrorLevel = 0) ; se a imagem for encontrada
	{
		break
	}
	else if (ErrorLevel = 1) ; se a imagem não for encontrada, após a msgbox, volta a buscar
	{
		MsgBox, Imagem não encontrada, tentando novamente...
	}
	else ; ou else if (ErrorLevel = 2) ; se houve algum erro e a imagem não pode ser achada
	{
		MsgBox, Erro, encerrando a busca...
	}
}

MsgBox, terminou a busca!
ExitApp
return

---------------------------------------------------------------------------------------------------------------------------
9 ; **************************************************Comentando blocos de código*********************************************

; Para comentar blocos de código, usamos o atalho "Ctrl + q"
