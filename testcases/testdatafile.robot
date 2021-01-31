*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/resource_login.robot
Library  DataDriver     ../testData/testdata.csv
Suite Setup  open my browser
Suite Teardown  close browsers
Test Template  invalid login

#*** Test Cases ***      username        password
#right username wrong password       admin@yourstore.com         abc
#wrong username wrong password       admn@yourstore.com      abc

*** Test Cases ***
loginWithExcel using    ${username}     ${password}

*** Keywords ***
invalid login
    [Arguments]   ${username}    ${password}
    input username  ${username}
    input password  ${password}
    click login button
    error message should be displayed
