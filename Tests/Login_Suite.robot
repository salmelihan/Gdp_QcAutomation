*** Settings ***
Library          SeleniumLibrary


Resource    ../Resources/Keywords/Preference_Keyword.robot
Resource    ../Resources/Keywords/Shared_Keywoords.robot
Resource    ../Resources/Keywords/Login_Keyword.robot

Suite Setup     Begin web Test
Suite Teardown     End Web Test

*** Test Cases ***
Test 1234
    [Documentation]     Login with invalid Crea
    Navigate to Home page
    Navigate to Login page
    Enter Username
    Enter Password
    Click on login Button
    Confim message has appeared


