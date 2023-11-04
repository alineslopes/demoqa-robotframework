*** Settings ***
Documentation    This suite tests the DEMOQA site and the Check Box page.
Resource      ../resources/general_resource.robot
Test Setup    Open the browser
Test Teardown    Close the browser

*** Test Cases ***
Test Case 01 - Access the "Checkbox" page
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Verify that the "Elements" page is opened
    Click on "Elements" menu and go to the "Check Box" page
    Verify that the "Check Box" page is opened
    Expand all check boxes
    Collapse all check boxes

Test Case 02 - Click the "Home" checkbox 
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Verify that the "Elements" page is opened
    Click on "Elements" menu and go to the "Check Box" page
    Verify that the "Check Box" page is opened
    Select the "Home" check box
    Validate the message when "Home" check box is selected

Test Case 03 - Click the "Desktop" checkbox 
    Access the home page of the demoqa.com website
    Click on the "Elements" card
    Verify that the "Elements" page is opened
    Click on "Elements" menu and go to the "Check Box" page
    Verify that the "Check Box" page is opened
    Expand all check boxes
    Select the "Desktop" check box
    Validate the message when "Desktop" check box is selected
    
