*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${WEB_TABLES_HEADER}    //div[@class='main-header'][contains(.,'Web Tables')]
${ADD_BUTTON}    //button[contains(@id,'addNewRecordButton')]
${SEARCH_BOX}    //*[contains(@id,'searchBox')]
${EDIT_RECORD}    //*[@id="edit-record-4"]
${DELETE_RECORD}    //*[@id="delete-record-4"]
${REGISTRATION_FORM_TEXT}    //*[contains(@id,'registration-form-modal')]
${FIRST_NAME_FIELD}    //input[contains(@placeholder,'First Name')]
${LAST_NAME_FIELD}    //input[contains(@placeholder,'Last Name')]
${EMAIL_FIELD}    //input[contains(@placeholder,'name@example.com')]
${AGE_FIELD}    //input[contains(@placeholder,'Age')]
${SALARY_FIELD}    //input[contains(@placeholder,'Salary')]
${DEPARTMENT_FIELD}    //input[contains(@placeholder,'Department')]
${SUBMIT_BUTTON}    //button[@id='submit']
${CLOSE_BUTTON}    //span[contains(.,'×')]
${REGISTRATION_LINE}    //div[@class='rt-td'][contains(.,'Aline')]
&{REGISTRATION_INFORMATION}    first_name=Aline   last_name=Lopes   
...    email=alinelopes@example.com   age=26    salary=10000     department=IT DEPARTMENT

*** Keywords ***
Verify that the "Web Tables" page is opened
    Wait Until Element Contains    locator=${WEB_TABLES_HEADER}     text=Web Tables

Click on Add button
    Click Button    locator=${ADD_BUTTON}

Fill the Registration Form
    Wait Until Element Is Visible    locator=${REGISTRATION_FORM_TEXT} 
    Element Text Should Be    locator=${REGISTRATION_FORM_TEXT}     expected=Registration Form
    Input Text    locator=${FIRST_NAME_FIELD}    text=${REGISTRATION_INFORMATION.first_name}
    Input Text    locator=${LAST_NAME_FIELD}   text=${REGISTRATION_INFORMATION.last_name}
    Input Text    locator=${EMAIL_FIELD}    text=${REGISTRATION_INFORMATION.email}
    Input Text    locator=${AGE_FIELD}    text=${REGISTRATION_INFORMATION.age}
    Input Text    locator=${SALARY_FIELD}    text=${REGISTRATION_INFORMATION.salary}
    Input Text    locator=${DEPARTMENT_FIELD}    text=${REGISTRATION_INFORMATION.department}

Click on Submit button
    Click Button    locator=${SUBMIT_BUTTON}

Search the created registration and validate that appears on the Tables
    Wait Until Element Is Visible    locator=${SEARCH_BOX}
    Input Text    locator=${SEARCH_BOX}    text=${REGISTRATION_INFORMATION.first_name}
    Element Text Should Be    locator=${REGISTRATION_LINE}    expected=${REGISTRATION_INFORMATION.first_name}

Click on Edit icon
    Wait Until Element Is Visible    locator=${EDIT_RECORD}
    Click Element    locator=${EDIT_RECORD}

Change the Salary and Department
    Wait Until Element Is Visible    locator=${SALARY_FIELD}
    Clear Element Text    locator=${SALARY_FIELD}
    Input Text    locator=${SALARY_FIELD}    text=150000
    Clear Element Text    locator=${DEPARTMENT_FIELD}
    Input Text    locator=${DEPARTMENT_FIELD}    text=QA DEPARTMENT    

Click on Delete icon
    Wait Until Element Is Visible    locator=${DELETE_RECORD}
    Click Element    locator=${EDIT_RECORD}

