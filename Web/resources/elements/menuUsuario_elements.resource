*** Settings ***
Documentation    Aqui estarao todos os elementos contigos no menu de usuario

*** Variables ***
&{MENU_U}    
...    btn_menu=xpath=//*[@class='oxd-userdropdown-tab']
...    menu=xpath=//*[@class='oxd-dropdown-menu']
...    img=xpath=//*[@class='oxd-userdropdown-img']
...    nome=xpath=//*[@class='oxd-userdropdown-name']
...    sobre=xpath=//ul[@role='menu']/li[1]/a
...    suporte=xpath=//ul[@role='menu']/li[2]/a
...    alterar_senha=xpath=//ul[@role='menu']/li[3]/a
...    logout=xpath=//ul[@role='menu']/li[4]/a
