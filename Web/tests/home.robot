*** Settings ***
Documentation    Neste arquivo ficara todos os cenarios de teste referentes a pagina home
Resource         ../resources/util/main.robot    
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Cenário 01: Verificar elementos na tela principal
  [Documentation]    Cenário que verifica se o usuario esta logando na tela principal "Deashboard"
  [Tags]    C1
  Dado que eu esteja logado no sistema
  Quando estou na página    Dashboard    
  Então devo ver o cabeçalho
  E devo ver a seção "Lançamento Rápido"
  E devo ver a seção "Distribuição de Funcionários por Subunidade"
  E devo ver a seção "Funcionarios Ausentes"

Cenário 02: Verificação do rodapé da pagina
  [Documentation]    Cenário que verifica se o rodapé esta correto
  [Tags]    C2
  Dado que eu esteja logado no sistema
  Quando estou na página    Dashboard 
  Então devo ver o rodapé com o texto    OrangeHRM OS 5.6.1

Cenário 03: Logout do sistema
  [Documentation]    Cenário que verifica se o usuario consegue fazer logout do sistema
  [Tags]    C3
  Dado que eu esteja logado no sistema
  Quando clico no menu do usuário
  E clico na opção "Logout"
  Entao devo ser redireconado para a página de login


