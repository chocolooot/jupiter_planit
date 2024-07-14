*** Settings ***
Resource    ../Resources/PageObjects/shop.robot

*** Variables ***

*** Keywords ***
User Is In Shop Page
    Wait Until Element Is Visible    ${shopTeddyBear}         5
    Element Should Be Visible    ${shopStuffedFrog}
    Element Should Be Visible    ${shopHandmadeDoll}
    Element Should Be Visible    ${shopFluffyBunny}
    Element Should Be Visible    ${shopSmileyBear}
    Element Should Be Visible    ${shopFunnyCow}
    Element Should Be Visible    ${shopValentineBear}
    Element Should Be Visible    ${shopSmileyFace}

User Add To Cart Product
    [Arguments]    ${productListVal}
    Click Element    Xpath=//div[contains(@class, 'products')]//li[${productListVal}]//div//p//a[text()='Buy']
    Sleep    3