*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                      https://demoqa.com/
${BUTTONS_PAGE}             ${URL}buttons
${DOUBLE_CLICK_BTN}         id=doubleClickBtn
${RIGHT_CLICK_BTN}          id=rightClickBtn
${DYNAMIC_CLICK_BTN}        xpath=//button[text()='Click Me']
${DOUBLE_CLICK_MSG}         id=doubleClickMessage
${RIGHT_CLICK_MSG}          id=rightClickMessage
${DYNAMIC_CLICK_MSG}        id=dynamicClickMessage

*** Keywords ***
Access the Buttons page directly
    Go To    ${BUTTONS_PAGE}
    Wait Until Element Is Visible    ${DYNAMIC_CLICK_BTN}

Double click the double-click button
    Scroll Element Into View    ${DOUBLE_CLICK_BTN}
    Sleep    0.5
    Double Click Element    ${DOUBLE_CLICK_BTN}

Right click the right-click button
    Scroll Element Into View    ${RIGHT_CLICK_BTN}
    Sleep    0.5
    Open Context Menu    ${RIGHT_CLICK_BTN}

Click the dynamic "Click Me" button
    Click Button    ${DYNAMIC_CLICK_BTN}

Validate double-click success message is displayed
    Element Text Should Be    ${DOUBLE_CLICK_MSG}    You have done a double click

Validate right-click success message is displayed
    Element Text Should Be    ${RIGHT_CLICK_MSG}     You have done a right click

Validate dynamic click success message is displayed
    Element Text Should Be    ${DYNAMIC_CLICK_MSG}   You have done a dynamic click

Validate only dynamic click message is shown
    Page Should Contain Element       ${DYNAMIC_CLICK_MSG}
    Page Should Not Contain Element   ${DOUBLE_CLICK_MSG}
    Page Should Not Contain Element   ${RIGHT_CLICK_MSG}