; When our system starts, we are call this script

; ---------------------------------- atualizado 06/03/25 -----------------------------------

Process, Wait, GoogleDriveFS.exe  ; Espera até que o processo GoogleDriveFS.exe seja iniciado.

; Bloquear o PC
; DllCall, "LockWorkStation"

; Run, C:\Users\Lucas\Documents\Initialization\Arquivos de abertura.xlsm
; Sleep, 100

Run, C:\Users\Lucas\Documents\Initialization\App.lnk
ExitApp
return

m::
{
    ; WinClose, Arquivos de abertura.xlsm - Excel
    ; Sleep, 100
    ExitApp
}

