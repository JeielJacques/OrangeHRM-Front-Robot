*** Settings ***
Documentation    Aqui ficarão todos os elementos da página de login
Resource         ../util/main.robot

*** Variables ***

${URL}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
&{CREDENCIAIS}
...    usuario=Admin
...    senha=admin123
${USUARIO_FAKER}
${SENHA_FAKER}



*** Keywords ***
Gerar dados de login
  ${USUARIO_FAKER}=    FakerLibrary.User Name
  ${SENHA_FAKER}=      FakerLibrary.Password

  Set Test Variable    ${USUARIO_FAKER}
  Set Test Variable      ${SENHA_FAKER}

