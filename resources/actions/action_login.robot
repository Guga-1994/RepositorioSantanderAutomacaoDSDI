* Settings *
Documentation           Resource voltado para a GUI

Library     SikuliLibrary 
 
* Variables *
${USUARIO}      gustavotest
${SENHA}        gustavotest

* Keywords * 
Carrega os Elementos do App
    Add Image Path      ${EXECDIR}\\resources\\elements\\login

Dado que eu clico no icone do DSDI
    Carrega os Elementos do App
    Open Application    "C:\\Users\\Adminds\\Desktop\\dsdi-desktop_4_5_2_1\\dsdi-desktop.exe"
    Sleep  5

Quando eu coloco o usuario e senha
    Sleep   5
    Input Text  usuario.png      ${USUARIO}
    Input Text  senha.png      ${SENHA}

E clico no botão de logar
    Sleep  5
    Click         botao_logar.png
    Sleep  20
    Press Special Key  ESC
    #Wait Until Screen Contain   erro_scanner_msn.png    20
    #Click Text     Cancelar

Entao eu serei redirecionado para a janela de digitalização
    Sleep   15
    Exists  janela_digitalizacao.png

Encerrar Sessão
    Stop Remote Server

Finalizar Teste
    Capture Screen
    Close Application   dsdi-desktop