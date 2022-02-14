*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${Var1}     Test Saleh
@{list1}        1       2       3
&{Dic}      name=Saleh      age=18

*** Test Cases ***
Test Case 1
    log     ${Var1}
    log     ${list1}[0]
    log     ${list1}[2]
    log     ${Dic}[name]

    FOR    ${i}    IN    @{list1}
        Log    ${i}
    END
