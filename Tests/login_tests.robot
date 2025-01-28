# Tests/login_tests.robot
*** Settings ***
Documentation     Automated test suite for Afyangu Health Platform Login Process
...               This suite tests the complete user login flow including:
...               - Login page access
...               - Credentials input
...               - OTP verification
...               - Successful login
Resource          ../Resources/common.robot
Resource          ../Resources/login_keywords.robot
Suite Setup       Log    Starting Login Test Suite
Suite Teardown    Log    Completed Login Test Suite
Test Setup        Open Afyangu Login
Test Teardown     Close Afyangu Website
Metadata          Version    1.0
Metadata          Executed By    QA Team
Metadata          Environment    Test
Metadata          Platform    Afyangu Health
Metadata          Browser    Chrome

*** Test Cases ***
Complete Login Process
    [Documentation]    Validates the complete login flow with valid credentials
    ...    
    ...    Test Steps:
    ...    1. Access login page
    ...    2. Enter ID and PIN
    ...    3. Request OTP
    ...    4. Verify OTP
    ...    
    ...    Expected Results:
    ...    - User should be able to input credentials
    ...    - OTP should be received
    ...    - Login should be successful
    [Tags]    login    smoke    critical
    [Timeout]    5 minutes
    Fill Login Form
    Handle Login OTP