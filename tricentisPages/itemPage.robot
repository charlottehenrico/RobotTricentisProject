*** Settings ***
Documentation                       This is the landing page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections

*** Keywords ***
click item
    [Arguments]     ${selectItem}
    Click Element       css:[data-productid] .details [href='\/${selectItem}']
click add to cart button
    Click Button    css:.add-to-cart-button.button-1
go to shopping cart
    Click Link    link:Shopping cart


    