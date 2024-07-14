*** Settings ***
Resource    ../../Libraries/Libraries.robot

*** Variables ***
# Cart Page Locators
${cartInfoMessage}       Xpath=//div//p
${cartCheckOutBtn}       Xpath=//td//a[text()='Check Out']
${cartEmptyBtn}          Xpath=//td//a[text()='Empty Cart']
${cartRemoveItemHdr}     Xpath=//div//h1[text()='Remove Item']
${cartEmptyCartHdr}      Xpath=//div//h1[text()='Empty Cart']
${cartRemveYesBtn}       Xpath=//div//a[text()='Yes']
${cartRemveNoBtn}        Xpath=//div//a[text()='No']
${cartProcessingHdr}     Xpath=//div//h1[text()='Processing Order']
${cartSuccessMsg}        Xpath=//div//div[@class='alert alert-success']
${cartShopAgainBtn}      Xpath=//div//p//a[text()='Shopping Again »']

# Check Out Locators
${cartCardTypeField}     Xpath=//select[@id='cardType']
${cartCardNumField}      Xpath=//input[@id='card']