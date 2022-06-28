*** Settings ***
Documentation                       The landing page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections

*** Keywords ***
click option from main menu
    [Arguments]         ${menuoption}
    Mouse Over          css:.top-menu [href='\/${menuoption}']

select submenu item
    [Arguments]         ${submenuitem}
    Click Element       css:.top-menu [href='\/${submenuitem}']

click option from category list
    [Arguments]         ${categoryoption}
    Click Element       css:.block-category-navigation [href='\/${categoryoption}']

select item from sub category list
    [Arguments]         ${subcategoryitem}
    Click Element       css:.block-category-navigation [href='\/${subcategoryitem}']

select item from customer services
    [Arguments]         ${selectoptioncs}
    Click Element       css:[href='\/${selectoptioncs}']