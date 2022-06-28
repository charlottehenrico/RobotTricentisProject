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


#Suite setup and tear down section
Suite Setup                             test setup    ${url}
Suite Teardown                          Close Browser

*** Variables ***
${url}                                  http://demowebshop.tricentis.com/

*** Test Cases ***
Get a shipping estimate
#Given
    click option from category list     computers
#When
    select item from sub category list  notebooks
#And
    click item                          141-inch-laptop
#And
    click add to cart button
#And
    go to cart
#And
    check cart added item               14.1-inch Laptop
#And
    select country from list            1
#And
    select state from list           18
#And
    enter postal code                   0081
#And
    click estimate shipping button
#Then
    get text after estimate shipping    The one day air shipping



