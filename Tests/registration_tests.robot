# Tests/registration_tests.robot
*** Settings ***
Documentation     Automated test suite for Afyangu Health Platform Registration Process
...               This suite tests the complete user registration flow including:
...               - Initial registration page access
...               - Form completion with valid data
...               - OTP verification
...               - PIN creation
...               - Final registration steps
Resource          ../Resources/common.robot
Resource          ../Resources/registration_keywords.robot
Suite Setup       Log    Starting Registration Test Suite
Suite Teardown    Log    Completed Registration Test Suite
Test Setup        Open Afyangu Website
Test Teardown     Close Afyangu Website
Metadata          Version    1.0
Metadata          Executed By    QA Team
Metadata          Environment    Test
Metadata          Platform    Afyangu Health
Metadata          Browser    Chrome

*** Variables ***
${TEST_DATA_ID}         41075456
${TEST_DATA_NAME}       Mustaf
${TEST_DATA_PHONE}      792246726

*** Test Cases ***
Complete Registration Process
    [Documentation]    Validates the complete user registration flow with valid credentials
    ...    
    ...    Test Steps:
    ...    1. Access registration page
    ...    2. Complete registration form
    ...    3. Verify OTP
    ...    4. Set up PIN
    ...    5. Complete final registration steps
    ...    
    ...    Expected Results:
    ...    - User should be successfully registered
    ...    - All form submissions should be successful
    ...    - OTP verification should work
    ...    - PIN should be set correctly
    [Tags]    registration    smoke    critical
    [Timeout]    5 minutes
    Complete Registration Flow