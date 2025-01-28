# Tests/dependent_tests.robot
*** Settings ***
Documentation     Add Dependent tests for Afyangu Health Website
Resource          ../Resources/common.robot
Resource          ../Resources/dependents_keywords.robot
Test Setup        Open Profile Page
Test Teardown     Close Afyangu Website

*** Test Cases ***
Add New Dependent
    [Documentation]    Add a new dependent from profile page
    [Timeout]    5 minutes
    Open Dependents Tab
    Click Add Dependent
    Select Relationship Type
    Select Age Group