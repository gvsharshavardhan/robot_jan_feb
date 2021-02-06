
*** Test Cases ***
Normal test case
    Example keyword    first argument    second argument

Templated test case
    [Template]    Example keyword
    first argument    second argument
    harsha          vardhan
    sai             venkata

*** Keywords ***
Example keyword
    [Arguments]     ${age}      ${marks}
    log to console      ${age}+${marks}

#*** Test Cases ***
#Normal test case with embedded arguments
#    The result of 1 + 1 should be 2
#    The result of 1 + 2 should be 3
#
#Template with embedded arguments
#    [Template]    The result of ${calculation} should be ${expected}
#    1 + 1    2
#    1 + 2    3
#
#*** Keywords ***
#The result of ${calculation} should be ${expected}
#    ${result} =    Calculate    ${calculation}
#    Should Be Equal    ${result}     ${expected}