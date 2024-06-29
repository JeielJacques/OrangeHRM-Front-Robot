*** Settings ***
Documentation    Nesse arquivo irao ficar todas as keywords referentes a tela de login

Resource         ../util/main.robot

*** Keywords ***

Dado que eu esteja logado no sistema
    Go To    ${URL}
    Wait Until Element Is Visible    ${LOGIN.logo}    10s
    Input Text    ${LOGIN.usuario}    ${CREDENCIAIS.usuario}
    Input Text    ${Login.senha}      ${CREDENCIAIS.senha}
    Click Element    ${LOGIN.btn_login}
    Wait Until Element Is Visible    ${CABECALHO.logo}    10s
    Page Should Contain Element    ${CABECALHO.btn_ajuda}

Quando estou na página
    [Arguments]    ${nome_menu}
    Wait Until Element Is Visible    ${CABECALHO.logo}    10s
    ${menu_locator}    Format String    ${MENU_P.itens}    item=${nome_menu}
    Wait Until Element Is Visible    ${menu_locator}    10s
    Click Element    ${menu_locator}

Então devo ver o cabeçalho
    Wait Until Element Is Visible    ${CABECALHO.logo}    10s
    Page Should Contain Element    ${DASHBOARD.titulo}

E devo ver a seção "Lançamento Rápido"
    Wait Until Element Is Visible    ${CABECALHO.logo}    10s
    Page Should Contain Element     ${DASHBOARD.lancamento}

E devo ver a seção "Distribuição de Funcionários por Subunidade"
    Wait Until Element Is Visible    ${CABECALHO.logo}    10s
    Page Should Contain Element    ${DASHBOARD.distribuição_Un}
E devo ver a seção "Funcionarios Ausentes"
    Wait Until Element Is Visible    ${CABECALHO.logo}    10s
    Page Should Contain Element    ${DASHBOARD.ausentes}

Então devo ver o rodapé com o texto
    [Arguments]    ${texto_esperado}
    Wait Until Element Is Visible    ${CABECALHO.logo}
    ${texto_pag}    Get Text    ${RODAPE.rodape}/p[1]
    Should Be Equal As Strings    ${texto_pag}    ${texto_esperado}    msg=As mensgens não sao iguais

Quando clico no menu do usuário
    Wait Until Element Is Visible    ${CABECALHO.logo}
    Click Element    ${MENU_U.btn_menu}
E clico na opção "Logout"
    Wait Until Element Is Visible    ${MENU_U.menu}
    Click Element    ${MENU_U.logout}
Entao devo ser redireconado para a página de login
    Wait Until Element Is Visible    ${LOGIN.logo}
    Location Should Be    ${URL}