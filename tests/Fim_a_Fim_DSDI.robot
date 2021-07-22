* Settings *
Documentation   Suite de teste de login no DSDI

Resource    ${EXECDIR}/resources/actions/action_login.robot
Resource    ${EXECDIR}/resources/actions/action_upload.robot


Suite Teardown  Encerrar Sessão

* Test Cases *
Cenario 01: Logar no DSDI
    [Tags]  cenario1
    Dado que eu clico no icone do DSDI
    Quando eu coloco o usuario e senha
    E clico no botão de logar 
    Entao eu serei redirecionado para a janela de digitalização

    [Teardown]  Finalizar Teste

Cenario 02: Upload dos templates
    [tags]  cenario2
    #Dado que eu faço login no DSDI
    Quando eu informo o site de produção
    #E importo o arquivo
    #E preencho a tabela de índice e valor
    #Entao o templete não é mais visível na janela
    
