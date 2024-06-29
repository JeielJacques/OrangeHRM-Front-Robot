*** Settings ***
Documentation    Aqui ficarao todos os elementos da pagina de login

*** Variables ***

${URL}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
&{CREDENCIAIS}
...    usuario=Admin
...    senha=admin123
&{LOGIN}      
...    logo=xpath=//*[@alt='company-branding']
...    usuario=xpath=//*[@name='username']
...    senha=xpath=//*[@name='password']
...    btn_login=xpath=//button[@type='submit']
...    link_esqueceu_senha=xpath=//p[contains(.,'Forgot your password?')]
...    link_OrangeHRMInc=xpath=//a[text()='OrangeHRM, Inc']
...    msg_obrigatoria=xpath=//span[contains(text(),input-field-error-message)]
...    alerta_erro=xpath=//*[@role='alert']
...    msg_alerta=xpath=//p[contains(.,'Invalid credentials')]


