*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary


### Elements ###
Resource    ../elements/login_elements.resource
Resource    ../elements/home_elements.resource

### Variables ###
Resource    ../variables/login_variables.resource
### Keywords ###
Resource    ../keywords/login_kw.resource

### Hooks ###
Resource    hooks.robot

