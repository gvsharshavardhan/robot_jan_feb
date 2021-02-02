*** Variables ***
${name}     ${EMPTY}
${marks}     ${EMPTY}


*** Test Cases ***
testcase123
    log to console      \n\n\t\t${name}\n
    log to console      \n\n\t\t${marks}\n
    ${ret}=     keyword1        ${name}
    log to console      \n\n\t\t${ret}\n

*** Keywords ***
keyword1
    [Arguments]     ${name}
    log to console      \n\n\t\t${name}+100\n
    [Return]    i'm from keyword 1