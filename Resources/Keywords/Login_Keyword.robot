*** Settings ***
Library          SeleniumLibrary

Resource            ../pageObjects/Login_PageObjects.robot


*** Keywords ***

Enter Username
    Username_TextBox

Enter Password
    Password_TextBox

Click on login Button
    Login_Button


Confim message has appeared
    Error_Message
