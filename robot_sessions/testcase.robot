*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}     https://www.makemytrip.com/
${BROWSER}     chrome

*** Test Cases ***
testcase1
    openurl
#    ${result}=      printname   padmapriya
#    log to console  ${result}
#    close browser

*** Keywords ***
openurl
    open browser    ${URL}      browser=${BROWSER}
    sleep  5
    click element   xpath:(//*[@data-cy='account'])[1]
    sleep   10
    input text      id:fromCity     harsha
    sleep   5

#printname
#    [Arguments]     ${name}
#    log to console  ${name}
#    [Return]  seleniumclasses