*** Settings ***
Documentation    Nesse arquivo ficarão todos as configurações referente e Setup e Teardown
Resource         main.robot



*** Keywords ***
Abrir navegador
    Open Browser    browser=headlesschrome
    Maximize Browser Window

Fechar navegador
    Close Browser
