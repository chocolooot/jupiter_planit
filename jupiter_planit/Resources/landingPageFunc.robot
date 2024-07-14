*** Settings ***
Resource    ../Resources/PageObjects/landingPage.robot

*** Variables ***
${environment}        https://jupiter.cloud.planittesting.com/#/
${browser}            chrome

*** Keywords ***
User Goes To Jupiter Site
    Open Browser                     ${environment}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${jupiterLogo}         5

User Is In Jupiter Landing Page
    Wait Until Element Is Visible    ${jupiterLogo}         5
    Element Should Be Visible    ${jupiterHeader}
    Element Should Be Visible    ${jupiterDesc}
    Element Should Be Visible    ${jupiterWelcmShopBtn}
    Element Should Be Visible    ${jupiterWelcmHdr}
    Element Should Be Visible    ${jupiterWelcmDesc}

Select Page
    [Arguments]    ${navPag}
    Wait Until Element Is Visible    Xpath=//div//ul//li//a[text()='${navPag}']
    Click Element    Xpath=//div//ul//li//a[text()='${navPag}']