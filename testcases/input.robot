*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html
#${url}  https://www.google.com/
#${url}  https://demo.nopcommerce.com/

*** Test Cases ***

TestingInputBox
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  2seconds
    select radio button  sex    Female
    sleep  5
    close browser


*** Keywords ***
