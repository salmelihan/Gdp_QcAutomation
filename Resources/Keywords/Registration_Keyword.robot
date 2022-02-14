*** Settings ***
Library          SeleniumLibrary
Library     String

Resource            ../pageObjects/Register_PageObjects.robot




*** Keywords ***
Click on Register
    Register_link
Select Male radio button
    MaleGender_Checbox
Enter First name
    FirstName_Textbox
Enter Last name
    LastName_Textbox
Select day of Birth day
    DateOfBirthDay_DDL
Select Month of Birth day
    DateOfBirthMonth_DDL
Select Year of Birth day
    DateOfBirthYear_DDL

Enter Email
    ${RandomNumber}     Generate random number
    Email_TextBox       ${RandomNumber}

Enter Comapny Name
    Company_TextBox

Enter Password
    Password_TextBox        Test@9827
Enter not match Password
    Password_TextBox        SalehTEst
Confimre Password
    ConfirmPassword_TextBox

Submit Registration
    Register_Button

Your registration completed message should be appeared
    RegistrationCompleted_Message


Assert required error message appears for Firstname
    Firstname_RequiredValidationMessage
Assert required error message appears for Lastname
    Lastname_RequiredValidationMessage
Assert required error message appears for Email
    Email_RequiredValidationMessage
Assert required error message appears for Password
    Password_RequiredValidationMessage
Assert required error message appears for ConfimrePassword
    ConfirmPassword_RequiredValidationMessage

uncheck newsletter check box
     Newsletter_Checkbox



Generate random number
    ${random_number}        Generate Random String              4           [NUMBERS]
    [Return]        ${random_number}


