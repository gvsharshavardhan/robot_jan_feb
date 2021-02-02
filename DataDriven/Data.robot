*** Settings ***
Test Template   login

*** Test Cases ***                  username        password
invlaid uname and valid pass       read       password
vlaid uname and invalid pass      padmapriya       book
vlaid uname and valid pass            padmapriya       password
invlaid uname and invalid pass       read       book


*** Keywords ***
login
    [Arguments]         ${username}       ${password}
    log to console          entring ${username}
    log to console          entring ${password}
    log to console          click submit