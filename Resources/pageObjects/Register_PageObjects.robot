*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Gender_Male}     //*[@for="inlineRadioYes"]
*** Keywords ***
Register_link
    wait until page contains         Register
    click link          Register

MaleGender_Checbox
    wait until element is visible             gender-male
    select radio button             Gender          M
FirstName_Textbox
    wait until element is visible       FirstName
    input text                  FirstName           Thiqah
LastName_Textbox
    wait until element is visible       LastName
    input text                  LastName            Saleh
DateOfBirthDay_DDL
    wait until element is visible       DateOfBirthDay
    select from list by label                  DateOfBirthDay            1
DateOfBirthMonth_DDL
    wait until element is visible       DateOfBirthMonth
    select from list by label                  DateOfBirthMonth            January
DateOfBirthYear_DDL
    wait until element is visible       DateOfBirthYear
    select from list by label                  DateOfBirthYear            1925
GenderMale_RadioButton
    wait until element is visible    ${Gender_Male}
    select checkbox         ${Gender_Male}
Email_TextBox
    [Arguments]         ${Random_Number}
    wait until element is visible       Email
    input text                 Email            Saleh${Random_Number}@gmail.com
Company_TextBox
    wait until element is visible       Company
    input text                 Company            Mic
Password_TextBox
    [Arguments]    ${Password}
    wait until element is visible       Password
    input password                 Password            ${Password}

ConfirmPassword_TextBox
    wait until element is visible       ConfirmPassword
    input text                 ConfirmPassword            Test@9827
Register_Button
    wait until element is visible               register-button
    click button            register-button
RegistrationCompleted_Message
    page should contain             Your registration completed
Firstname_RequiredValidationMessage
    wait until page contains                    First name is required
Lastname_RequiredValidationMessage
    wait_until page contains                    Last name is required.
Email_RequiredValidationMessage
    wait until page contains                    Email is required.
Password_RequiredValidationMessage
    wait until page contains                    Password is required.
ConfirmPassword_RequiredValidationMessage
    wait until page contains                    Password is required.


Newsletter_Checkbox
    wait until element is visible               Newsletter
    unselect checkbox               Newsletter