*** Settings ***
Library          SeleniumLibrary

Variables       ../Project_Configration/Test_Configration.yaml


*** Keywords ***
Navigate to Home page
    go to       ${URL}


Navigate to Login page
    wait until page contains                 Log in
    click link                  Log in