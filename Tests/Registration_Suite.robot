*** Settings ***
Library          SeleniumLibrary


Resource    ../Resources/Keywords/Preference_Keyword.robot
Resource    ../Resources/Keywords/Shared_Keywoords.robot
Resource    ../Resources/Keywords/Registration_Keyword.robot

Suite Setup     Begin web Test
Suite Teardown     End Web Test

*** Test Cases ***
Test Case 1
    [Documentation]        Confimre vaidion appreaes
    Navigate to Home page
    Click on Register
    Submit Registration
    Assert required error message appears for Firstname
    Assert required error message appears for Lastname
    Assert required error message appears for Email
    Assert required error message appears for Password
    Assert required error message appears for Password

Test Case 2
    [Documentation]         User want to reginter
    Select Male radio button
    Enter First name
    Enter Last name
    Select day of Birth day
    Select Month of Birth day
    Select Year of Birth day
    uncheck newsletter check box
    Enter Email
    Enter Comapny Name
    Enter Password
    Confimre Password
    Submit Registration
    Your registration completed message should be appeared


Test Case 3
    [Documentation]         User want to reginter
    Navigate to Home page
    Click on Register
    Select Male radio button
    Enter First name
    Enter Last name
    Select day of Birth day
    Select Month of Birth day
    Select Year of Birth day
    uncheck newsletter check box
    Enter Email
    Enter Comapny Name
    Enter not match Password
    Confimre Password
    Submit Registration
    Your registration completed message should be appeared

