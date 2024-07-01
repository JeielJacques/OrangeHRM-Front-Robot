*** Settings ***
Documentation    Nesse arquivo ficarão todos as configurações referentes a Setup e Teardown
Resource         main.robot



*** Keywords ***
Abrir navegador
    Open Browser    browser=headlesschrome
    Maximize Browser Window

Fechar navegador
    Close Browser
