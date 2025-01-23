# Resources/common.robot
*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    Dialogs

*** Variables ***
${BROWSER}              chrome
${URL}                 https://afyangu.kenya-hie.health/
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

# Test Data
${ID_NUMBER}           your id no
${FIRST_NAME}         your name
${PHONE_NUMBER}       your phone number
${TIMEOUT}            20s
${SUCCESS_PROCEED}    xpath=/html/body/div/main/div/div[2]/button
${CONTINUE_REG}       xpath=/html/body/div[4]/div/div[1]/div[2]/button[2]

*** Keywords ***
Open Afyangu Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    10

Close Afyangu Website
    Close All Browsers