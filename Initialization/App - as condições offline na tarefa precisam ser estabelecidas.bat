@echo off
:: Verifica se o script está rodando como administrador
net session >nul 2>&1
if %errorLevel% == 0 (
   :: Se for administrador, executa o script .ahk
   start "" "C:\Program Files\AutoHotkey\AutoHotkey.exe" "G:\My Drive\AHK\AHK V1\Active\App.ahk"
) else (
   :: Se não for, solicita elevação de privilégios
   echo Solicitando direitos de administrador...
   powershell Start-Process '%~f0' -Verb runAs
   exit
)
