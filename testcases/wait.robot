*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
waitTest
    open browser  http://demowebshop.tricentis.com/register  chrome
    maximize browser window
    wait until page contains    harsha
    close browser