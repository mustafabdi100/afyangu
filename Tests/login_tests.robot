# Tests/login_tests.robot
*** Settings ***
Documentation     Login tests for Afyangu Health Website
Resource          ../Resources/common.robot
Resource          ../Resources/login_keywords.robot
Test Setup        Open Afyangu Login
Test Teardown     Close Afyangu Website

*** Test Cases ***
Complete Login Process
    [Documentation]    Complete login process with valid credentials
    [Timeout]    5 minutes
    Fill Login Form
    Handle Login OTP