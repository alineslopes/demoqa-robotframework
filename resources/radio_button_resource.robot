*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${RADIO_BUTTON_HEADER}    //div[@class='main-header'][contains(.,'Radio Button')]
${RADIO_BUTTON_PHRASE}    //div[@class='mb-3'][contains(.,'Do you like the site?')]
${RADIO_BUTTON_YES}    //label[@for='yesRadio']
${RADIO_BUTTON_YES_TEXT_CONFIRMATION}    //p[contains(.,'You have selected Yes')]
${RADIO_BUTTON_IMPRESSIVE}    //label[@for='impressiveRadio']
${RADIO_BUTTON_IMPRESSIVE_TEXT_CONFIRMATION}    //p[contains(.,'You have selected Impressive')]
${RADIO_BUTTON_NO}    //label[@for='noRadio']

*** Keywords ***
Verify that the "Radio Button" page is opened
    Wait Until Element Contains    locator=${RADIO_BUTTON_HEADER}    text=Radio Button

Verify that elements on the page is presented
    Page Should Contain    text=Do you like the site?
    Page Should Contain Radio Button    locator=${RADIO_BUTTON_YES}
    Page Should Contain    text=Yes
    Page Should Contain Radio Button    locator=${RADIO_BUTTON_IMPRESSIVE}
    Page Should Contain    text=Impressive
    Page Should Contain Radio Button    locator=${RADIO_BUTTON_NO}
    Page Should Contain    text=No

Click on "Yes" radio button
    Wait Until Element Is Visible    locator=${RADIO_BUTTON_YES}
    Click Element    locator=${RADIO_BUTTON_YES}

Verify that the "Yes" option is selected when the message of confirmation appears
    Wait Until Element Contains    locator=${RADIO_BUTTON_YES_TEXT_CONFIRMATION}     text=You have selected Yes

Click on "Impressive" radio button
    Wait Until Element Is Visible    locator=${RADIO_BUTTON_IMPRESSIVE}
    Click Element    locator=${RADIO_BUTTON_IMPRESSIVE}

Verify that the "Impressive" option is selected when the message of confirmation appears
    Wait Until Element Contains    locator=${RADIO_BUTTON_IMPRESSIVE_TEXT_CONFIRMATION}     text=You have selected Impressive
    
Click on "No" radio button and verify that its not possible to select
    Wait Until Element Is Visible    locator=${RADIO_BUTTON_NO} 
    Click Element    locator=${RADIO_BUTTON_NO} 

Validate that its possible to click on another radio box option
    Wait Until Element Is Visible    locator=${RADIO_BUTTON_YES}
    Click Element    locator=${RADIO_BUTTON_YES}
    Wait Until Element Contains    locator=${RADIO_BUTTON_YES_TEXT_CONFIRMATION}     text=You have selected Yes
    Click Element    locator=${RADIO_BUTTON_IMPRESSIVE}
    Wait Until Element Contains    locator=${RADIO_BUTTON_IMPRESSIVE_TEXT_CONFIRMATION}     text=You have selected Impressive
    Click Element    locator=${RADIO_BUTTON_YES}
    Wait Until Element Contains    locator=${RADIO_BUTTON_YES_TEXT_CONFIRMATION}     text=You have selected Yes

        
    

    