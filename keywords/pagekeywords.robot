*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
openAndMaximize
    [Arguments]   ${url}        ${browser}
     open browser    ${url}      ${browser}
     maximize browser window
#/html/body/div[2]/div/div[3]/div[2]/div[2]/form/div[2]/input
loginOrange
    input text      id:txtUsername     Admin
    input text      id:txtPassword     admin123
    click element   id:btnLogin