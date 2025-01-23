# Tests/registration_tests.robot
*** Settings ***
Documentation     Registration tests for Afyangu Health Website
Resource          ../Resources/common.robot
Resource          ../Resources/registration_keywords.robot
Test Setup        Open Afyangu Website
Test Teardown     Close Afyangu Website

*** Test Cases ***
Complete Registration Process
    [Documentation]    Complete registration process with valid data
    [Timeout]    5 minutes
    Complete Registration Flow