*** Settings ***
Resource    ../../Libraries/Libraries.robot

*** Variables ***
# Contact Page Locators
${contactBannerMsg}      Xpath=//div[contains(@class, 'alert-info')]
${contactForeName}       Xpath=//div//input[@id='forename']
${contactSurname}        Xpath=//div//input[@id='surname']
${contactEmail}          Xpath=//div//input[@id='email']
${contactTele}           Xpath=//div//input[@id='telephone']
${contactMessage}        Xpath=//div//textarea[@id='message']
${contactSubmitBtn}      Xpath=//div//a[text()='Submit']
${contactSendingHdr}     Xpath=//div//h1[text()='Sending Feedback']
${contactSuccessMsg}     Xpath=//div//div[@class='alert alert-success']
${contactBackBtn}        Xpath=//a[contains(., 'Back')]

# Contact Error Locators
${contactGenErrorMsg}    Xpath=//div[contains(@class, 'alert-error')]
${contactForeReqrdMsg}   Xpath=//span[@id='forename-err']
${contactEmailReqrdMsg}  Xpath=//span[@id='email-err']
${contactMessgReqrdMsg}  Xpath=//span[@id='message-err']