*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demoqa.com/
${ELEMENTS_CARD}    (//div[contains(@class,'card-up')])[1]
${ELEMENTS_HEADER}    //div[@class='main-header'][contains(.,'Elements')]
${ELEMENTS_MENU}     //div[contains(@class, "header-text") and text()="Elements"]//ancestor::span[contains(@class, "group-header")]
${ELEMENTS_LIST}     (//div[@class='element-list collapse show'])[1]
${ELEMENTS_TEXT}    //div[@class='col-12 mt-4 col-md-6']
${ELEMENTS_TEXT_BOX}    //span[@class='text'][contains(.,'Text Box')]
${ELEMENTS_CHECK_BOX}    //span[@class='text'][contains(.,'Check Box')]
${ELEMENTS_RADION_BUTTON}    //span[@class='text'][contains(.,'Radio Button')]
${ELEMENTS_WEB_TABLES}    //span[@class='text'][contains(.,'Web Tables')]
${ELEMENTS_BUTTONS}    //span[@class='text'][contains(.,'Buttons')]

*** Keywords ***
Open the browser
    Open Browser    browser=chrome
    Maximize Browser Window

Close the browser
    Close Browser

Access the home page of the demoqa.com website
    Go To    url=${URL}

Click on the "Elements" card
    Wait Until Element Is Visible    locator=${ELEMENTS_CARD} 
    Click Element    locator=${ELEMENTS_CARD}

Verify that the "Elements" page is opened
    Wait Until Element Contains    locator=${ELEMENTS_HEADER}    text=Elements
    Element Text Should Be    locator=${ELEMENTS_TEXT}    expected=Please select an item from left to start practice.

Verify that the "Elements" side menu up to the "Buttons" is presented
    Wait Until Element Is Visible    locator=${ELEMENTS_MENU}
    Element Should Be Visible    locator=${ELEMENTS_TEXT_BOX}
    Element Should Be Visible    locator=${ELEMENTS_CHECK_BOX}
    Element Should Be Visible    locator=${ELEMENTS_RADION_BUTTON}
    Element Should Be Visible    locator=${ELEMENTS_WEB_TABLES}
    Element Should Be Visible    locator=${ELEMENTS_BUTTONS}

Click on "Elements" menu and go to the "Text Box" page
    Click Element    locator=${ELEMENTS_TEXT_BOX}

Click on "Elements" menu and go to the "Check Box" page
    Click Element    locator=${ELEMENTS_CHECK_BOX}   

Click on "Elements" menu and go to the "Radio Button" page
    Click Element    locator=${ELEMENTS_RADION_BUTTON}       

Click on "Elements" menu and go to the "Web Tables" page
    Click Element    locator=${ELEMENTS_WEB_TABLES}

Click on "Elements" menu and go to the "Buttons" page
    Click Element    locator=${ELEMENTS_BUTTONS}              