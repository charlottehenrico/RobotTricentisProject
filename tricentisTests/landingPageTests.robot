*** Settings ***
Documentation   First Tricentis tests
# Library section
Library                             SeleniumLibrary
Library                             String
Library                             Collections

# Global resources section
Resource                            ../frameworkClasses/globalSetup.robot

# Project resource section
Resource                            ../tricentisPages/landingPage.robot
Resource                            ../tricentisPages/itemPage.robot
Resource                            ../tricentisPages/cartPage.robot


#Suite setup
Suite Setup                          test setup     ${url}

*** Variables ***
${url}                              http://demowebshop.tricentis.com/


*** Test Cases ***
Select an item from top menu bar
    click option from top menu bar  electronics
    select submenu item     cell-phones
    click item      smartphone
    click add to cart button
    go to shopping cart
    check cart added item   Smartphone
   # check cart qty    1


