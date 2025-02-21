*** Settings ***
Documentation    Neste arquivo ficarõ todos os cenários de teste referentes a login
Resource         ../resources/util/main.robot    
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Cenário 01: Login com sucesso
  [Documentation]    Cenário que testa o login com credenciais válidas
  [Tags]    C1
  Dado que eu esteja na página de login
  Quando eu insiro um nome de usuário válido
  E eu insiro uma senha válida
  E eu clico no botão "Login"
  Então devo ser redirecionado para a página inicial

Cenário 02: Login com usuário em branco
  [Documentation]    Cenário que testa o login sem preencher o campo "Username"
  [Tags]    C2
  Dado que eu esteja na página de login
  Quando eu deixo o campo "Username" vazio
  E eu insiro uma senha válida
  E eu clico no botão "Login"
  Então devera aparecer uma mensagem de campo obrigatório

Cenário 03: Login com senha em branco
  [Documentation]  Cenário que testa o login sem preencher o campo "Password"
  [Tags]    C3
  Dado que eu esteja na página de login
  Quando eu insiro um nome de usuário válido
  E eu deixo o campo "Password" vazio
  E eu clico no botão "Login"
  Então devera aparecer uma mensagem de campo obrigatório

Cenário 04: Login com usuário e senha em branco
  [Documentation]    Cenário que testa o login com os campo "Username" e "Password" vazios
  [Tags]    C4
  Dado que eu esteja na página de login
  Quando eu deixo o campo "Username" vazio
  E eu deixo o campo "Password" vazio
  E eu clico no botão "Login"
  Então devera aparecer uma mensagem de campo obrigatório

Cenário 05: Login com usuário inválido
  [Documentation]    Cenário que testa o login com usuário invalido
  [Tags]    C5
  Dado que eu esteja na página de login
  Quando eu insiro um nome de usuário inválido
  E eu insiro uma senha válida
  E eu clico no botão "Login"
  Então devera aparecer uma mensagem de erro 

Cenário 06: Login com senha inválida
  [Documentation]    Cenário que testa o login com a senha inválida
  [Tags]    C6
  Dado que eu esteja na página de login
  Quando eu insiro um nome de usuário válido
  E eu insiro uma senha inválida
  E eu clico no botão "Login"
  Então devera aparecer uma mensagem de erro
  