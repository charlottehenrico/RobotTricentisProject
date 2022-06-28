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
Resource                            ../tricentisPageObjects/comparePage.robot


#Suite setup and tear down section
Suite Setup                             test setup    ${url}
Suite Teardown                          Close Browser

*** Variables ***
${url}                                  http://demowebshop.tricentis.com/

*** Test Cases ***
Compare selected items
#Given
    click option from category list     computers
#And
    select item from sub category list  notebooks
#And
    click item                          141-inch-laptop
#And
    click add to compare list button
#And
    click option from category list     computers
#And
    select item from sub category list  desktops
#And
    click item                          simple-computer
#And
    click add to compare list button
#Then
    check item price                     2   800.00
    check item price                     3   1590.00



