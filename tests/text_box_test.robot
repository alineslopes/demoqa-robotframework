*** Settings ***
Documentation    This suite tests the DEMOQA site and the Text Box page
Resource      ../resources/general_resource.robot
Test Setup    Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Test Case 01 - Access the "Text Box" page and verify that the elements in the page is presented.
    [Documentation]    This test case verify
    [Tags]    text_box
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Text Box" page
    Verify that the "Text Box" page is opened
    Validate that all the elements in the page is presentend

Test Case 02 - Validate that it's possible to fill in all the text fields
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Text Box" page
    Fill in all the text boxes

Test Case 03 - Validate that it's possible to fill in all the text fields with dynamic data
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Text Box" page
    Fill in all the text boxes with dynamic data    

Test Case 04 - Validate that it is possible to submit the completed fields
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Text Box" page
    Fill in all the text boxes
    Click on the Submit button

Test Case 05 - Validate the filled informations 
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Text Box" page
    Fill in all the text boxes
    Click on the Submit button
    Validate the filled informations    
    

Test Case 06 - Check if the fields are mandatory or if it is possible to submit without any fields filled in
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Text Box" page
    Fill the wrong email for validate the email format
    Click on Submit button
    Validate that the error field is presented for email


Test Case 07 - Validate the mandatory fields
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Text Box" page
    Validate if the all fields are mandatory   