*** Settings ***
Library  SeleniumLibrary
Library  util.py


*** Test Cases ***
testBrowser
    open browser  https://opensource-demo.orangehrmlive.com/index.php/auth/login    chrome
#    sleep  2s
    ${cred_text}=   get text  //span[text()='( Username : Admin | Password : admin123 )']
    ${username}=    fetchUsername       ${cred_text}
    ${password}=    fetchPassword       ${cred_text}
    log to console    \n\n\t\t${username}\n \t\t${password}\n

    input text      id:txtUsername     ${username}
    input text      id:txtPassword     ${password}
    click element   id:btnLogin
    element text should be      xpath://h1      Dashboard       after login user did not login to dashboard page

    close all browsers

*** Keywords ***

