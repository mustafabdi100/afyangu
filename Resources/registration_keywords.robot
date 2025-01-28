# Resources/registration_keywords.robot
*** Settings ***
Library    SeleniumLibrary
Library    Dialogs
Resource   common.robot

*** Keywords ***
Complete Registration Flow
    Click Registration Button
    Click Initial Proceed Button
    Fill Registration Form
    Click Final Proceed Button
    Handle OTP Verification
    Create PIN
    Complete Final Steps

Complete Final Steps
    # Click proceed after PIN creation success
    Wait Until Element Is Visible    ${SUCCESS_PROCEED}    ${TIMEOUT}
    Click Element    ${SUCCESS_PROCEED}
    Sleep    5s
    
    # Click continue registration on info page - try both locators
    ${continue_visible}=    Run Keyword And Return Status    
    ...    Wait Until Element Is Visible    ${CONTINUE_REG}    5s
    
    Run Keyword If    '${continue_visible}'=='True'    
    ...    Click Element    ${CONTINUE_REG}
    ...    ELSE    
    ...    Wait Until Element Is Visible    ${CONTINUE_REG_ALT}    ${TIMEOUT}
    ...    AND    Click Element    ${CONTINUE_REG_ALT}
    
    Sleep    5s
    Log    Clicked Continue Registration Button

Click Registration Button
    Wait Until Element Is Visible    ${REGISTRATION_BUTTON}    ${TIMEOUT}
    Click Element    ${REGISTRATION_BUTTON}
    Sleep    5s
    Log    Clicked Registration Button

Click Initial Proceed Button
    Wait Until Element Is Visible    ${INITIAL_PROCEED}    ${TIMEOUT}
    Click Element    ${INITIAL_PROCEED}
    Sleep    5s
    Log    Clicked Initial Proceed Button

Fill Registration Form
    Wait Until Element Is Visible    ${ID_NUMBER_INPUT}    ${TIMEOUT}
    Input Text    ${ID_NUMBER_INPUT}    ${ID_NUMBER}
    Input Text    ${FIRST_NAME_INPUT}    ${FIRST_NAME}
    Input Text    ${PHONE_NUMBER_INPUT}    ${PHONE_NUMBER}
    Log    Filled Registration Form

Click Final Proceed Button
    Wait Until Element Is Visible    ${FINAL_PROCEED}    ${TIMEOUT}
    Click Element    ${FINAL_PROCEED}
    Sleep    5s
    Log    Clicked Final Proceed Button

Handle OTP Verification
    # Wait for and click the checkbox
    Wait Until Element Is Visible    ${CHECKBOX}    ${TIMEOUT}
    Click Element    ${CHECKBOX}
    Sleep    2s
    
    # Click send code button
    Wait Until Element Is Visible    ${SEND_CODE_BUTTON}    ${TIMEOUT}
    Click Element    ${SEND_CODE_BUTTON}
    Sleep    5s
    
    # Wait for OTP input field and get OTP from user
    Wait Until Element Is Visible    ${OTP_INPUT}    ${TIMEOUT}
    ${otp}=    Get Value From User    Please enter the OTP received:
    Input Text    ${OTP_INPUT}    ${otp}
    Sleep    2s
    
    # Click proceed after OTP input
    Wait Until Element Is Visible    ${OTP_PROCEED}    ${TIMEOUT}
    Click Element    ${OTP_PROCEED}
    Sleep    5s

Create PIN
    # Wait for PIN input fields
    Wait Until Element Is Visible    ${PIN_INPUT}    ${TIMEOUT}
    Wait Until Element Is Visible    ${CONFIRM_PIN_INPUT}    ${TIMEOUT}
    
    # Input 1234 in both PIN fields
    Input Text    ${PIN_INPUT}    1234
    Input Text    ${CONFIRM_PIN_INPUT}    1234
    Sleep    2s
    
    # Click proceed
    Wait Until Element Is Visible    ${PIN_PROCEED}    ${TIMEOUT}
    Click Element    ${PIN_PROCEED}
    Sleep    5s