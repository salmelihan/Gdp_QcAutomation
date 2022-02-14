*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login_Link
    wait until page contains                 Log in
    click link                  Log in