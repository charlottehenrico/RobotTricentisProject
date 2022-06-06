*** Settings ***
Documentation                       This is the landing page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections

*** Keywords ***
check cart added item
    [Arguments]     ${expectedproduct}
    Element Text Should Be    css:.product-name   ${expectedproduct}
check cart qty
    [Arguments]     ${expectedqty}
    Element Text Should Be    css:.qty  ${expectedqty}