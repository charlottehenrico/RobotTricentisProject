*** Settings ***
Documentation                       This is the global setup object
Library                             SeleniumLibrary
Library                             ../customLibraries/chromedriversync.py
Library                             String
Library                             Collections

*** Keywords ***
test setup
    [Arguments]                     ${url}
    ${chromedriver_path}=           Get Chromedriver Path
    Create Webdriver                Chrome                      executable_path=${chromedriver_path}
    Go To                           ${url}
    Maximize Browser Window
    Set Browser Implicit Wait       10
    Capture Page Screenshot         EMBED

