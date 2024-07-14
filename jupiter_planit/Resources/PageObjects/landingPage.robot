*** Settings ***
Resource    ../../Libraries/Libraries.robot

*** Variables ***
# Landing Page Locators
${jupiterLogo}           Xpath=//div//a[2][text()='Jupiter Toys']
${jupiterHeader}         Xpath=//div[@class='hero-unit']//h1[text()='Jupiter Toys']  
${jupiterDesc}           Xpath=//p//small[@class='muted']
${jupiterWelcmHdr}       Xpath=//p[contains(., 'Welcome')]
${jupiterWelcmDesc}      Xpath=//p[contains(., 'incididunt ut')]
${jupiterWelcmShopBtn}   Xpath=//p//a[text()='Start Shopping »']