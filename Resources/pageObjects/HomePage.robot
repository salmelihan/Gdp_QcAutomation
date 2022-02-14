*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Username_TextBox
    wait until element is visible         Email
    input text    Email      saleh@test.com