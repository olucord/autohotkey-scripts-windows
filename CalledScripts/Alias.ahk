#SingleInstance Force

; Alias (text shortcut) to apply

lista := "anexos-obsidian|subject-gpt|complete-opnion-gpt|english-gpt|organization-with"

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
if (opcao = "anexos-obsidian") {
    Clipboard := "G:\My Drive\Notebooks\Minhas notas Obsidian\Arquivos\Anexos"
}
else if (opcao = "subject-gpt") {
    SendRaw, Responda como um especialista e doutor no assunto. Faça uma explicação completa, use o tanto de linhas que você precisar (mesmo que sejam muitas) e só pare quando explicar tudo, bem completo e objetivo. Quero que me impressione com conhecimento e seja o mais consiso possível
}

else if (opcao = "complete-opnion-gpt") {
    ;~ SendRaw, Pense como um profissional faria, da forma mais objetiva, simples e clara possível. Descreva a situação direto ao ponto, sem enrolação, mas que seja claro e eficiente. Não poupe seus recursos e analise realmente a melhor opção de forma completa (utilize quantas linhas precisar)
    SendRaw, Explique como um professor altamente didático e especialista, conduzindo a explicação do nível iniciante até o avançado, em etapas progressivas e bem estruturadas. Use linguagem simples, envolvente e acessível, trazendo analogias criativas, exemplos práticos, comparações claras e aplicações reais. Destaque as palavras-chave e os conceitos mais importantes ao longo da explicação. Ao final, faça um resumo estratégico com os pontos essenciais, destaque novamente os termos-chave e formule três perguntas inteligentes para testar e fixar meu entendimento. Se possível, inclua também um exercício prático com explicação passo a passo. Não poupe linhas e só pare quando explicar tudo, bem completo e objetivo.
}

else if (opcao = "english-gpt") {
    SendRaw, Tudo que eu falar aqui, você só poderá responder em inglês, ok?
    Send, {Space}
}

else if (opcao = "organization-with") {
    Clipboard := "------------------------------------------------------------------------------------------------"
}

ExitApp

GuiClose:
GuiEscape:
ExitApp
