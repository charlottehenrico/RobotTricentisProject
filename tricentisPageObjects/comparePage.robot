*** Settings ***
Documentation                       Thw compare page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections
Library    XML

*** Keywords ***
check item price
    [Arguments]                     ${selectedItem}     ${price}
    Element Text Should Be    css:.product-price > td:nth-of-type(${selectedItem})    ${price}