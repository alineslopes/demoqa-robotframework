*** Settings ***
Documentation    This suite tests the DEMOQA site and the Web Tables page
Resource      ../resources/general_resource.robot
Test Setup    Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Test Case 01 - Access the "Web Tables" page and add a registration form
    [Documentation]    This test case verify
    [Tags]    web_tables
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Web Tables" page
    Verify that the "Web Tables" page is opened
    Click on Add button
    Fill the Registration Form
    Click on Submit button
    Search the created registration and validate that appears on the Tables
    Click on Edit icon
    Change the Salary and Department
    Click on Submit button
    Click on Delete icon