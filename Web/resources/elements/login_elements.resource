*** Settings ***
Documentation    Aqui ficarao todos os elementos da pagina de login

*** Variables ***

${URL}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
&{CREDENCIAIS}
...    usuario=Admin
...    senha=admin123
&{LOGIN}      
...    logo=//*[@alt='company-branding']
...    usuario=//*[@name='username']
...    senha=//*[@name='password']
...    btn_login=//button[@type='submit']
...    link_esqueceu_senha=//p[contains(.,'Forgot your password?')]
...    link_OrangeHRMInc=//a[text()='OrangeHRM, Inc']
...    msg_obrigatoria=//span[contains(text(),input-field-error-message)]
...    alerta_erro=//*[@role='alert']
...    msg_alerta=//p[contains(.,'Invalid credentials')]


