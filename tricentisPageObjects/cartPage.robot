*** Settings ***
Documentation                       Cart page object
Library                             SeleniumLibrary
Library                             String
Library                             Collections
Library    XML

*** Keywords ***
check cart added item
    [Arguments]                 ${expecteditem}
    Element Text Should Be    css:.product-name   ${expecteditem}

check cart quantity
    [Arguments]                 ${expectedquantity}
    Element Text Should Be      css:.qty-input  ${expectedquantity}

update cart quantity
    [Arguments]                 ${inputquantity}
    Input Text                  css:.qty-input  ${inputquantity}

click remove checkbox
    Click Element               css:.remove-from-cart [type]
    Click Element               css:input[name='updatecart']

check cart is empty
    [Arguments]                 ${cartText}
    Element Text Should Be      css:.order-summary-content    ${cartText}

select country from list
    [Arguments]                 ${dropDownOption}
    Click Element               xpath:/html//select[@id='CountryId']
    Click Element               css:select#CountryId > option[value='${dropDownOption}']

select state from list
    [Arguments]                ${dropDownOption}
    Click Element               xpath:/html//select[@id='StateProvinceId']
    Click Element               css:#StateProvinceId [value='${dropDownOption}']

enter postal code
    [Arguments]                 ${postalCode}
    Input Text                  css:input#ZipPostalCode        ${postalCode}

click estimate shipping button
    Click Element               css:input[name='estimateshipping']

get text after estimate shipping
    [Arguments]                 ${returnedText}
    Element Text Should Be      css:li:nth-of-type(2) > .option-description    ${returnedText}
