*** Settings ***
Library          SeleniumLibrary


*** Keywords ***
Begin web Test
    open browser           about:blank     chrome
    maximize browser window
    set selenium speed              0.1

End Web Test
    close all browsers