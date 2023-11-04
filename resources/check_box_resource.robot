*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${CHECK_BOX_HEADER}    //div[@class='main-header'][contains(.,'Check Box')]
${TOGGLE}    //div[@class='main-header'][contains(.,'Check Box')]
${HOME_CHECKBOX}    //*[@class="rct-checkbox"]
${DESKTOP_CHECKBOX}    //*[@id="tree-node"]/ol/li/ol/li[1]/span/label/span[1]
${EXPAND_ALL}    //button[@class='rct-option rct-option-expand-all']
${COLLAPSE_ALL}    //button[@class='rct-option rct-option-collapse-all']
${EXPAND_LIST}    //*[@id="tree-node"]/ol/li/ol
${RESULT}    //*[@id="result"] 

*** Keywords ***
Verify that the "Check Box" page is opened
    Wait Until Element Contains    locator=${CHECK_BOX_HEADER}     text=Check Box

Expand all check boxes via TOGGLE
    Click Element    locator=${TOGGLE}
    Wait Until Element Is Visible    locator=${EXPAND_LIST}
    Click Element    locator=${TOGGLE}

Expand all check boxes
    Click Button    locator=${EXPAND_ALL} 
    Sleep    30s

Collapse all check boxes
    Click Button    locator=${COLLAPSE_ALL}
    Sleep    30s

Select the "Home" check Box
    Click Element    locator=${HOME_CHECKBOX}

Validate the message when "Home" check box is selected
    Page Should Contain Element    locator=${RESULT}
    
Select the "Desktop" check box
    Click Element    locator=${DESKTOP_CHECKBOX}

Validate the message when "Desktop" check box is selected
    Page Should Contain Element    locator=${RESULT}