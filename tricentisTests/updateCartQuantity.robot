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
Update the cart quantity
#Given
    click option from category list     computers
#And
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
    update cart quantity                2
#And
    check cart quantity                 2


