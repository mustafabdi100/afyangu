# Resources/common.robot
*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    Dialogs

*** Variables ***
# Browser and URL Settings
${BROWSER}              chrome
${BASE_URL}            https://afyangu.kenya-hie.health
${URL}                 ${BASE_URL}/
${LOGIN_URL}           ${BASE_URL}/sign-in

# Registration Page Elements
${REGISTRATION_BUTTON}  xpath=/html/body/div/main/div/div[1]/div[1]/div[2]/button[1]
${INITIAL_PROCEED}      xpath=//button[contains(text(), 'Proceed')]
${ID_NUMBER_INPUT}      xpath=/html/body/div/div[3]/div[2]/form/div[2]/div/input
${FIRST_NAME_INPUT}     xpath=/html/body/div/div[3]/div[2]/form/div[3]/div/input
${PHONE_NUMBER_INPUT}   xpath=/html/body/div/div[3]/div[2]/form/div[4]/div/div/div/input
${FINAL_PROCEED}        xpath=/html/body/div/div[3]/div[2]/form/div[6]/div/button[1]
${CHECKBOX}             xpath=/html/body/div/main/div/div[2]/div/div/div[2]/button
${SEND_CODE_BUTTON}     xpath=/html/body/div/main/div/div[2]/div/div/button
${OTP_INPUT}           xpath=/html/body/div/main/div/div[2]/div/div[2]/div/form/div[1]/div/div/div[2]/input
${OTP_PROCEED}         xpath=/html/body/div/main/div/div[2]/div/div[2]/div/form/div[2]/button[2]
${PIN_INPUT}           xpath=/html/body/div/main/div/div[2]/div[2]/div/div/div/form/div[1]/div/div[1]/div[2]/input
${CONFIRM_PIN_INPUT}   xpath=/html/body/div/main/div/div[2]/div[2]/div/div/div/form/div[2]/div/div[1]/div[2]/input
${PIN_PROCEED}         xpath=/html/body/div/main/div/div[2]/div[2]/div/div/div/form/button[2]
${SUCCESS_PROCEED}     xpath=/html/body/div/main/div/div[2]/button
${CONTINUE_REG}        xpath=/html/body/div[4]/div/div[1]/div[2]/button[2]

# Login Page Elements
${LOGIN_ID_INPUT}     css=body > div > div.login-page_signin_content__nYc2L > div > form > div.login-page_input_container__WP9Hf > div.space-y-2 > input
${LOGIN_PIN_INPUT}    css=input.login-page_inputotp_container__CMggE
${LOGIN_PIN_ALT}      css=#\:r5\:-form-item
${LOGIN_SEND_CODE}    css=button.login-page_submit_button__2NeWZ
${LOGIN_OTP_INPUT}    xpath=/html/body/div/main/div/div[2]/div/form/div[1]/div/div/div[2]/input
${LOGIN_OTP_PROCEED}  xpath=/html/body/div/main/div/div[2]/div/form/div[2]/button[2]

# Common Test Data
${ID_NUMBER}           41075456
${FIRST_NAME}         Mustaf
${PHONE_NUMBER}       792246726
${PIN_NUMBER}         1234
${TIMEOUT}            20s

*** Keywords ***
Open Afyangu Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    10

Open Afyangu Login
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    10

Close Afyangu Website
    Close All Browsers