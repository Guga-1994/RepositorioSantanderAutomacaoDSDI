* Settings *
Documentation           Resource voltado para o upload dos templates

Library     SikuliLibrary 

Resource    action_login.robot
 
* Variables *

* Keywords * 
Carrega os Elementos do App
    Add Image Path      ${EXECDIR}\\resources\\elements\\temp_upload

Dado que eu faço login no DSDI
    Dado que eu clico no icone do DSDI
    Quando eu coloco o usuario e senha
    E clico no botão de logar 
    Entao eu serei redirecionado para a janela de digitalização

Quando eu informo o site de produção
    FOR  ${COUNT}  IN RANGE  0  6
        Press Special Key  TAB
    END
    Press Special Key    C_DOWN 

E importo o arquivo

E preencho a tabela de índice e valor
    FOR  ${COUNT}  IN RANGE  0  11
        Press Special Key  TAB
    END
Entao o templete não é mais visível na janela