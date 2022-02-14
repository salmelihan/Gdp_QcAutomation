*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Username_TextBox
    wait until element is visible         Email
    input text    Email      saleh@test.com

Password_TextBox
    wait until element is visible         Password
    input text          Password            Test


Login_Button
    wait until element is visible         //button[@class='button-1 login-button']
    click button            //button[@class='button-1 login-button']


Error_Message
    wait until page contains                Login was unsuccessful. Please correct the errors and try again.
