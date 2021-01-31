*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}   https://admin-demo.nopcommerce.com/
${browser}  chrome

*** Keywords ***
open my browser
    open browser  ${url}    ${browser}
    maximize browser window

close browsers
    close all browsers

open login page
    go to  ${url}

input username
    [Arguments]  ${username}
    input text  id:Email    ${username}

input password
    [Arguments]  ${password}
    input text  id:Password     ${password}

click login button
    click button  css:[value='Log in']

error message should be displayed
    page should contain  Login was unsuccessful.

