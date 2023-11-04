*** Settings ***
Documentation    This suite tests the DEMOQA site and the Elements page.
Resource      ../resources/general_resource.robot
Test Setup    Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Test Case 01 - Access the "Element" Menu and validate that you are on the "Element" page.
    [Documentation]    This test case verify that you select the Element menu and validate that you are on the Element page.
    [Tags]    elements
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Verify that the "Elements" page is opened

Test Case 02 - Access the "Element" Menu and verify that the "Elements" side menu up to the "Buttons" is presented 
    [Documentation]    This test case verify that you select the Element menu and validate that you are on the Element page.
    [Tags]    elements side_menu
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Verify that the "Elements" side menu up to the "Buttons" is presented