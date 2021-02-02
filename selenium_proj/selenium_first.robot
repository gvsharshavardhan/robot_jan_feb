*** Settings ***
Library         SeleniumLibrary
Library         name


*** Variables ***


*** Test Cases ***
testcase123
    ${result}=      pythonm
    log to console      ${result}

*** Keywords ***


