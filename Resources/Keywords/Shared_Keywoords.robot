*** Settings ***
Library          SeleniumLibrary


Resource        ../pageObjects/HomePage_PageObjects.robot

Variables       ../Project_Configration/Test_Configration.yaml


*** Keywords ***
Navigate to Home page
    go to       ${URL}


Navigate to Login page
    Login_Link