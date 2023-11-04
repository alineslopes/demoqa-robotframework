*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***
${TEXT_BOX_HEADER}    //div[@class='main-header'][contains(.,'Text Box')]
${TEXT_FULL_NAME}    //label[@id='userName-label']
${FIELD_FULL_NAME}    //input[@id='userName']
${TEXT_EMAIL}    //label[@id='userEmail-label']
${FIELD_EMAIL}    //input[@id='userEmail']
${ERROR_FIELD_EMAIL}    //*[@class="mr-sm-2 field-error form-control"]    
${TEXT_CURRENT_ADDRESS}    //label[@id='currentAddress-label']
${FIELD_CURRENT_ADDRESS}    //textarea[@id='currentAddress']
${TEXT_PERMANENT_ADDRESS}    //label[@id='permanentAddress-label']
${FIELD_PERMANENT_ADDRESS}    //textarea[@id='permanentAddress']
${SUBMIT_BUTTON}    //button[@id='submit']
&{PERSONAL_INFORMATION}    full_name=Aline Lopes   email=alinelopes@example.com   
...    current_address=47 W 13th St, New York, NY 10011, USA   permanent_address=371 7th Ave, New York, NY 10001    wrong_email=email12 
${LIST_OUTPUT}    //*[@id="output"]
${OUTPUT_NAME}    //p[contains(@id,'name')]
${OUTPUT_EMAIL}    //p[contains(@id,'email')]
${OUTPUT_CURRENT_ADDRESS}    //p[contains(@id,'currentAddress')]
${OUTPUT_PERMANENT_ADDRESS}    //p[contains(@id,'permanentAddress')]
   


*** Keywords ***
Verify that the "Text Box" page is opened
    Wait Until Element Contains    locator=${TEXT_BOX_HEADER}     text=Text Box

Validate that all the elements in the page is presentend
    Element Should Contain    locator=${TEXT_FULL_NAME}    expected=Full Name
    Element Should Be Visible    locator=${FIELD_FULL_NAME}
    Element Should Contain    locator=${TEXT_EMAIL}     expected=Email
    Element Should Be Visible    locator=${FIELD_EMAIL}
    Element Should Contain    locator=${TEXT_CURRENT_ADDRESS}    expected=Current Address
    Element Should Be Visible    locator=${FIELD_CURRENT_ADDRESS}  
    Element Should Contain    locator=${TEXT_PERMANENT_ADDRESS}    expected=Permanent Address
    Element Should Be Visible    locator=${FIELD_PERMANENT_ADDRESS}
    Element Should Be Visible    locator=${SUBMIT_BUTTON}

Fill in all the text boxes
    Input Text    locator=${FIELD_FULL_NAME}    text=${PERSONAL_INFORMATION.full_name}
    Input Text    locator=${FIELD_EMAIL}    text=${PERSONAL_INFORMATION.email}
    Input Text    locator=${FIELD_CURRENT_ADDRESS}    text=${PERSONAL_INFORMATION.current_address}
    Input Text    locator=${FIELD_PERMANENT_ADDRESS}    text=${PERSONAL_INFORMATION.permanent_address}


Validate the filled informations
    Wait Until Element Is Visible    locator=${OUTPUT_NAME} 
    Element Should Contain    locator=${OUTPUT_NAME}    expected=${PERSONAL_INFORMATION.full_name}
    Element Should Contain    locator=${OUTPUT_EMAIL}   expected=${PERSONAL_INFORMATION.email}
    Element Should Contain    locator=${OUTPUT_CURRENT_ADDRESS}    expected=${PERSONAL_INFORMATION.current_address}
    Element Should Contain    locator=${OUTPUT_PERMANENT_ADDRESS}    expected=${PERSONAL_INFORMATION.permanent_address}

Fill in all the text boxes with dynamic data
    ${FULL_NAME}    FakerLibrary.Name    
    Input Text    locator=${FIELD_FULL_NAME}    text=${FULL_NAME}
    ${EMAIL}    FakerLibrary.Email
    Input Text    locator=${FIELD_EMAIL}    text=${EMAIL}
    ${CURRENT_ADDRESS}    FakerLibrary.Address
    Input Text    locator=${FIELD_CURRENT_ADDRESS}    text=${CURRENT_ADDRESS}
    ${PERMANENT_ADDRESS}    FakerLibrary.Secondary Address
    Input Text    locator=${FIELD_PERMANENT_ADDRESS}    text=${PERMANENT_ADDRESS}   

Click on the Submit button
    Wait Until Element Is Visible    locator=${SUBMIT_BUTTON}
    Click Button    locator=${SUBMIT_BUTTON}


Fill the wrong email for validate the email format
    Input Text    locator=${FIELD_FULL_NAME}    text=${PERSONAL_INFORMATION.full_name}
    Input Text    locator=${FIELD_EMAIL}    text=${PERSONAL_INFORMATION.wrong_email}
    Input Text    locator=${FIELD_CURRENT_ADDRESS}    text=${PERSONAL_INFORMATION.current_address}
    Input Text    locator=${FIELD_PERMANENT_ADDRESS}    text=${PERSONAL_INFORMATION.permanent_address}


Validate that the error field is presented for email
    Wait Until Element Is Visible    locator=${ERROR_FIELD_EMAIL}
    Element Should Be Visible    locator=${ERROR_FIELD_EMAIL}   

Validate if the all fields are mandatory 
    Input Text    locator=${FIELD_CURRENT_ADDRESS}    text=${PERSONAL_INFORMATION.current_address}
    Input Text    locator=${FIELD_PERMANENT_ADDRESS}    text=${PERSONAL_INFORMATION.permanent_address}
    Click Button    locator=${SUBMIT_BUTTON}
    Wait Until Element Is Visible    locator=${OUTPUT_CURRENT_ADDRESS}
    Element Should Contain    locator=${OUTPUT_CURRENT_ADDRESS}    expected=${PERSONAL_INFORMATION.current_address}
    Element Should Contain    locator=${OUTPUT_PERMANENT_ADDRESS}    expected=${PERSONAL_INFORMATION.permanent_address}  
