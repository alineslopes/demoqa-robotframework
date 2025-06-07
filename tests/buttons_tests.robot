*** Settings ***
Documentation     Test cases for button interactions on the DemoQA Buttons page.
Library           SeleniumLibrary
Resource          ../resources/elements_buttons_page.resource
Suite Setup       Open Browser To Buttons Page
Suite Teardown    Close Browser

*** Keywords ***
Open Browser To Buttons Page
    Open Browser    ${BROWSER_URL}    chrome
    Maximize Browser Window
    Go To    ${BROWSER_URL}

*** Variables ***
${BROWSER_URL}     https://demoqa.com/buttons

*** Test Cases ***
Double Click Button Should Show Success Message
    [Documentation]    Validates that double-clicking the button shows the expected success message.
    Double click the double-click button
    Validate double-click success message is displayed

Right Click Button Should Show Success Message
    [Documentation]    Validates that right-clicking the button shows the expected success message.
    Right click the right-click button
    Validate right-click success message is displayed

Click Me Button Should Show Success Message
    [Documentation]    Validates that a single dynamic click shows the expected success message.
    Click the dynamic "Click Me" button
    Validate dynamic click success message is displayed

Ensure Only One Click Type Registers At A Time
    [Documentation]    Ensures that only the dynamic click triggers a message, and no other messages appear.
    Reload Page
    Click the dynamic "Click Me" button
    Validate only dynamic click message is shown