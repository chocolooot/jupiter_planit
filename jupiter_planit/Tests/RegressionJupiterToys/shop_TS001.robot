*** Settings ***
Documentation    Jupiter Shop Regression Suite
...              File Version 1.0
Resource         ../../Resources/landingPageFunc.robot
Resource         ../../Resources/shopFunc.robot
Resource         ../../Resources/cartFunc.robot

*** Test Cases ***
TC01 - User Can Validate Product Value
    [Tags]    verify
    GIVEN User Navigate To Jupiter Page
    WHEN User In Shop Page
    THEN User Should Be Able To Verify Product Value
    AND User Should Be Able To Close Browser

*** Keywords ***
User Navigate To Jupiter Page
    User Goes To Jupiter Site

User In Shop Page
    User Is In Jupiter Landing Page
    Select Page    Shop
    User Is In Shop Page

User Should Be Able To Verify Product Value
    User Add To Cart Product    2
    User Add To Cart Product    2
    User Add To Cart Product    4
    User Add To Cart Product    4
    User Add To Cart Product    4
    User Add To Cart Product    4
    User Add To Cart Product    4
    User Add To Cart Product    7
    User Add To Cart Product    7
    User Add To Cart Product    7
    Select Page    Cart (
    User Is In Cart Page
    User Validate Product Price
    User Validate Product Subtotal
    User Validate Total

User Should Be Able To Close Browser
    Close Browser