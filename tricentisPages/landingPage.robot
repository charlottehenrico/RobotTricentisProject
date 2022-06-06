*** Settings ***
Documentation                       This is the landing page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections

*** Keywords ***
click option from top menu bar
    [Arguments]         ${menuoption}
    Mouse Over    css:.top-menu [href='\/${menuoption}']

select submenu item
    [Arguments]         ${subitem}
    Click Element    css:.top-menu [href='\/${subitem}']