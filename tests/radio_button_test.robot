*** Settings ***
Documentation    This suite tests the DEMOQA site and the Radio Button page
Resource      ../resources/general_resource.robot
Test Setup    Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Test Case 01 - Access the "Radio Button" page and verify that the elements in the page is presented.
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Radio Button" page
    Verify that the "Radio Button" page is opened
    Verify that elements on the page is presented

Test Case 02 - Validate that "Yes" is checked.
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Radio Button" page
    Click on "Yes" radio button
    Verify that the "Yes" option is selected when the message of confirmation appears

Test Case 03 - Validate that "Impressive" is checked.
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Radio Button" page
    Click on "Impressive" radio button
    Verify that the "Impressive" option is selected when the message of confirmation appears
  

Test Case 04 - Validate that is possible to check other option.
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Radio Button" page
    Validate that its possible to click on another radio box option
    

Test Case 05 - Validate the disable element
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Click on "Elements" menu and go to the "Radio Button" page
    Click on "No" radio button and verify that its not possible to select 
       