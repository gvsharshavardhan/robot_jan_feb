*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/pagekeywords.robot
Variables       ../variables/variables.py
Test Setup      openAndMaximize    ${url}       ${browser}
Test Teardown   close browser


*** Variables ***
${legend}=              ${EMPTY}

*** Test Cases ***
loginTestCase
    [Documentation]   login into orange site with valid credentials
    loginOrange
    go to   https://opensource-demo.orangehrmlive.com/index.php/performance/searchKpi
    element should be enabled       id:btnDelete
#    ${style}=       get element attribute   xpath://td[text()='${legend}']/preceding-sibling::td/div/div      style
#    log to console      \n\n\t\t${style}\n








