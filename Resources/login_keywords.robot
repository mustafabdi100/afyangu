# Resources/login_keywords.robot
*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Resource   common.robot

*** Keywords ***
Fill Login Form
    # Input ID
    Wait Until Element Is Visible    ${LOGIN_ID_INPUT}    ${TIMEOUT}
    Input Text    ${LOGIN_ID_INPUT}    ${ID_NUMBER}
    Log    Entered ID Number: ${ID_NUMBER}
    Sleep    2s
    
    # Try multiple locators for PIN input
    ${pin_status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${LOGIN_PIN_INPUT}    5s
    Run Keyword If    '${pin_status}'=='False'    Wait Until Element Is Visible    ${LOGIN_PIN_ALT}    ${TIMEOUT}
    
    # Input PIN using the successful locator
    Run Keyword If    '${pin_status}'=='True'    Input Text    ${LOGIN_PIN_INPUT}    ${PIN_NUMBER}
    ...    ELSE    Input Text    ${LOGIN_PIN_ALT}    ${PIN_NUMBER}
    Log    Entered PIN: ${PIN_NUMBER}
    Sleep    2s
    
    # Click Send Code button - Try multiple approaches
    ${send_code_visible}=    Run Keyword And Return Status    
    ...    Wait Until Element Is Visible    ${LOGIN_SEND_CODE}    5s
    
    # If CSS selector fails, try XPath
    Run Keyword If    '${send_code_visible}'=='False'    
    ...    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Send Code')]    ${TIMEOUT}
    
    # Click using the successful locator
    Run Keyword If    '${send_code_visible}'=='True'    
    ...    Click Element    ${LOGIN_SEND_CODE}
    ...    ELSE    
    ...    Click Element    xpath=//button[contains(text(), 'Send Code')]
    
    Sleep    5s
    Log    Clicked Send Code button

Handle Login OTP
    Wait Until Element Is Visible    ${LOGIN_OTP_INPUT}    ${TIMEOUT}
    ${otp}=    Get Value From User    Please enter the OTP received:
    Input Text    ${LOGIN_OTP_INPUT}    ${otp}
    Sleep    2s
    Log    Entered OTP
    
    Wait Until Element Is Visible    ${LOGIN_OTP_PROCEED}    ${TIMEOUT}
    Click Element    ${LOGIN_OTP_PROCEED}
    Sleep    5s
    Log    Clicked Proceed - Test Complete