*** Settings ***
Documentation    Jupiter Contact Regression Suite
...              File Version 1.0
Resource         ../../Resources/landingPageFunc.robot
Resource         ../../Resources/contactFunc.robot

*** Test Cases ***
TC01 - User Can Validate Error Messages
    [Tags]    verify
    GIVEN User Navigate To Jupiter Page
    WHEN User In Contact Page
    THEN User Should Be Able To Complete Required Fields

TC02 - User Can Send Feedback Form
    [Tags]    verify
    GIVEN User In Contact Page
    WHEN User Should Be Able To Submit Feedback Form
    THEN User Should Be Able To Close Browser

*** Keywords ***
User Navigate To Jupiter Page
    User Goes To Jupiter Site

User In Contact Page
    User Is In Jupiter Landing Page
    Select Page    Contact
    User Is In Contact Page

User Should Be Able To Complete Required Fields
    User Validate Contact Fields

User Should Be Able To Submit Feedback Form
    User Submit Feedback

User Should Be Able To Close Browser
    Close Browser