*** Settings ***
Resource    ../Resources/PageObjects/contact.robot
Resource    ../Resources/PageObjects/landingPage.robot

*** Variables ***
${foreNameVal}        Anton
${surNameVal}         Automated
${emailVal}           @value.com
${messageVal}         This is a Message

*** Keywords ***
User Is In Contact Page
    Wait Until Element Is Visible    ${contactBannerMsg}         5
    Element Should Be Visible    ${contactForeName}
    Element Should Be Visible    ${contactMessage}
    Element Should Be Visible    ${contactSubmitBtn}

Error Message Should Be Existing
    Wait Until Element Is Visible    ${contactGenErrorMsg}    5
    Element Should Be Visible    ${contactForeReqrdMsg}
    Element Should Be Visible    ${contactEmailReqrdMsg}
    Element Should Be Visible    ${contactMessgReqrdMsg}

User Validate Contact Fields
    Click Element    ${contactSubmitBtn}
    Error Message Should Be Existing
    User Submit Feedback

User Input Contact Fields
    Input Text    ${contactForeName}    ${foreNameVal}
    Input Text    ${contactSurname}    ${surNameVal}
    Input Text    ${contactEmail}    ${foreNameVal}+${emailVal}
    Input Text    ${contactMessage}    ${messageVal}

User Submit Feedback
    User Input Contact Fields
    Click Element    ${contactSubmitBtn}
    Wait Until Element Is Visible    ${contactSendingHdr}    5
    Sleep    10
    Wait Until Element Is Visible    ${contactSuccessMsg}    5
    Click Element    ${contactBackBtn}
    Click Element    ${jupiterLogo}