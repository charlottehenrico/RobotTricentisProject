*** Settings ***
Documentation   Tests for Tricentis website
# Libraries
Library                             SeleniumLibrary
Library                             String
Library                             Collections

# Global resources
Resource                            ../frameworkClasses/globalSetup.robot

# Project resources
Resource                            ../tricentisPageObjects/landingPage.robot
Resource                            ../tricentisPageObjects/itemPage.robot
Resource                            ../tricentisPageObjects/cartPage.robot
Resource                            ../tricentisPageObjects/landingPage.robot


#Suite setup and tear down section
Suite Setup                          test setup    ${url}
Suite Teardown                       Close Browser

*** Variables ***
${url}                              http://demowebshop.tricentis.com/

*** Test Cases ***
Select an item from main menu
#Given
    click option from main menu     computers
#When
    select submenu item             notebooks
#And
    click item                      141-inch-laptop
#And
    click add to cart button
#And
    go to cart
#Then
    check cart added item           14.1-inch Laptop


