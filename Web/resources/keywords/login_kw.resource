*** Settings ***
Documentation    Nesse arquivo irão ficar todas as keywords referentes a tela de login

Resource         ../util/main.robot

*** Keywords ***
Dado que eu esteja na página de login
    Go To    ${URL}    

Quando eu insiro um nome de usuário válido
    Wait Until Element Is Visible    ${LOGIN.logo}    10s
    Input Text    ${Login.usuario}    ${CREDENCIAIS.usuario}

E eu insiro uma senha válida
    Wait Until Element Is Visible    ${LOGIN.logo}    10s
    Input Password    ${LOGIN.senha}    ${CREDENCIAIS.senha}

E eu clico no botão "Login"
    Wait Until Element Is Visible    ${LOGIN.logo}    10s
    Click Element    ${LOGIN.btn_login}

Então devo ser redirecionado para a página inicial
    Wait Until Element Is Visible    ${CABECALHO.logo}    10s
    Page Should Contain Element    ${CABECALHO.btn_ajuda}

Quando eu deixo o campo "Username" vazio
    Wait Until Element Is Visible    ${LOGIN.logo}    10s
    Input Text    ${LOGIN.usuario}    text=

E eu deixo o campo "Password" vazio
    Wait Until Element Is Visible    ${LOGIN.logo}    10s
    Input Text    ${LOGIN.senha}    text=
    
 Então devera aparecer uma mensagem de campo obrigatório
    Wait Until Element Is Visible    ${LOGIN.msg_obrigatoria}    10s
    ${mensagem_obrigatoria}    Get Text    ${LOGIN.msg_obrigatoria}
    Should Be Equal As Strings    ${mensagem_obrigatoria}    Required

Quando eu insiro um nome de usuário inválido
    Run Keyword If    '${USUARIO_FAKER}' == '' or '${USUARIO_FAKER}' == 'Admin'    Gerar dados de login
    Wait Until Element Is Visible    ${LOGIN.logo}    10s
    Input Text    ${LOGIN.usuario}    ${USUARIO_FAKER}

Então devera aparecer uma mensagem de erro 
    Wait Until Element Is Visible    ${LOGIN.alerta_erro}    10s
    ${mensagem_erro}    Get Text    ${LOGIN.msg_alerta}  
    Should Be Equal As Strings    ${mensagem_erro}    Invalid credentials

E eu insiro uma senha inválida
    Run Keyword If    '${SENHA_FAKER}' == '' or '${SENHA_FAKER}' == 'admin123'    Gerar dados de login
    Wait Until Element Is Visible    ${LOGIN.logo}    10s
    Input Text    ${LOGIN.senha}    ${SENHA_FAKER}
