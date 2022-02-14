*** Settings ***
Library          SeleniumLibrary


Resource        ../pageObjects/HomePage.robot

Variables       ../Project_Configration/Test_Configration.yaml


*** Keywords ***
Navigate to Home page
    go to       ${URL}


Navigate to Login page
    Login_Link