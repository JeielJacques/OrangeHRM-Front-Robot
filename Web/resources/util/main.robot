*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    String


### Elements ###
Resource    ../elements/login_elements.resource
Resource    ../elements/dashboard_elements.resource
Resource    ../elements/menuPrincipal_elements.resource
Resource    ../elements/menuUsuario_elements.resource
Resource    ../elements/rodape_elements.resource
Resource    ../elements/cabecalho_elements.resource

### Variables ###
Resource    ../variables/login_variables.resource
### Keywords ###
Resource    ../keywords/login_kw.resource
Resource    ../keywords/home_kw.resource

### Util ###
Resource    hooks.robot

