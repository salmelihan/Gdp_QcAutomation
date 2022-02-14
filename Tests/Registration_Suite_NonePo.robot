*** Settings ***
Library          SeleniumLibrary
Library     String
Documentation       This test suite is not using page object model approach

*** Test Cases ***
User want to reginter
    open browser           about:blank     chrome
    maximize browser window
    go to       https://demo.nopcommerce.com/
    wait until page contains         Register
    click link          Register
    wait until element is visible             gender-male
    select radio button             Gender          M
    wait until element is visible       FirstName
    input text                  FirstName           Test
    wait until element is visible       LastName
    input text                  LastName            Saleh
    wait until element is visible       DateOfBirthDay
    select from list by label                  DateOfBirthDay            1
    wait until element is visible       DateOfBirthMonth
    select from list by label                  DateOfBirthMonth            January
    wait until element is visible       DateOfBirthYear
    select from list by label                  DateOfBirthYear            1925
    ${random_number}    Generate random number
    wait until element is visible       Email
    input text                 Email            Saleh${random_number}@gmail.com
    wait until element is visible       Company
    input text                 Company            Mic
    wait until element is visible       Password
    input text                 Password            Saleh@9827
    wait until element is visible       ConfirmPassword
    input text                 ConfirmPassword            Saleh@9827
    wait until element is visible               register-button
    click button            register-button
    page should contain             Your registration completed



*** Keywords ***
Generate random number
    ${random_number}        Generate Random String              4           [NUMBERS]
    [Return]        ${random_number}
