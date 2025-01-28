# Resources/dependent_keywords.robot
*** Settings ***
Library    SeleniumLibrary
Resource   common.robot

*** Keywords ***
Open Profile Page
    Open Browser    ${PROFILE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    10

Open Dependents Tab
    Wait Until Element Is Visible    ${DEPENDENTS_TAB}    ${TIMEOUT}
    Click Element    ${DEPENDENTS_TAB}
    Sleep    2s
    Log    Opened Dependents tab

Click Add Dependent
    Wait Until Element Is Visible    ${ADD_DEPENDENT_BTN}    ${TIMEOUT}
    Click Element    ${ADD_DEPENDENT_BTN}
    Sleep    2s
    Log    Clicked Add Dependent button

Select Relationship Type
    Wait Until Element Is Visible    ${RELATION_DROPDOWN}    ${TIMEOUT}
    Click Element    ${RELATION_DROPDOWN}
    Sleep    1s
    # Click the second option (Child)
    Click Element    xpath=//div[@role='option'][2]
    Sleep    2s
    Log    Selected Child as relationship

Select Age Group
    Wait Until Element Is Visible    ${AGE_GROUP_DROPDOWN}    ${TIMEOUT}
    Click Element    ${AGE_GROUP_DROPDOWN}
    Sleep    1s
    # Click the second option (Above 18)
    Click Element    xpath=(//div[@role='option'])[2]
    Sleep    2s
    Log    Selected Above 18 as age group