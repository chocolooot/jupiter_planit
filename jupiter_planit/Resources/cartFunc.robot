*** Settings ***
Resource    ../Resources/PageObjects/cart.robot
Resource    ../Resources/contactFunc.robot

*** Variables ***
${frogPriceVal}       $10.99
${bunnyPriceVal}      $9.99
${bearPriceVal}       $14.99
${frogSubTotalVal}    $21.98
${bunnySubTotalVal}   $49.95
${bearSubTotalVal}    $44.97
${totalVal}           116.9

*** Keywords ***
User Is In Cart Page
    Sleep    5
    Wait Until Element Is Visible    ${cartInfoMessage}         5
    Element Should Be Visible    ${cartCheckOutBtn}
    Element Should Be Visible    ${cartEmptyBtn}
    
User Validate Product Price
    Element Should Be Visible    Xpath=//tr[1]//td[2][text()='${frogPriceVal}']
    Element Should Be Visible    Xpath=//tr[2]//td[2][text()='${bunnyPriceVal}']
    Element Should Be Visible    Xpath=//tr[3]//td[2][text()='${bearPriceVal}']

User Validate Product Subtotal
    Element Should Be Visible    Xpath=//tr[1]//td[4][text()='${frogSubTotalVal}']
    Element Should Be Visible    Xpath=//tr[2]//td[4][text()='${bunnySubTotalVal}']
    Element Should Be Visible    Xpath=//tr[3]//td[4][text()='${bearSubTotalVal}']

User Validate Total
    Element Should Be Visible    Xpath=//td//strong[contains(., '${totalVal}')]

User Check Out Products
    Click Element    ${cartCheckOutBtn}
    User Input Contact Fields
    User Input Card Details    Visa
    Wait Until Element Is Visible    ${cartProcessingHdr}    5
    Sleep    10
    Wait Until Element Is Visible    ${contactSuccessMsg}    5
    Click Element    ${cartShopAgainBtn}
    Click Element    ${jupiterLogo}

User Input Card Details
    [Arguments]    ${cardTypeVal}
    ${randomVal}    Generate Random String    16    [NUMBERS]
    Scroll Element Into View    ${cartCardTypeField}
    Click Element    ${cartCardTypeField}
    Scroll Element Into View    Xpath=//option[text()='${cardTypeVal}']
    Click Element    Xpath=//option[text()='${cardTypeVal}']
    Input Text    ${cartCardNumField}    ${randomVal}