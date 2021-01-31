*** Settings ***


*** Variables ***
${xyz}          padmapriya
${abc}          100
${fload_num}    12.67

*** Test Cases ***
testcase1
    ${type_xyz}=      Evaluate           type($fload_num)

    ${flag}=    convert to integer      ${abc}
    ${flag_type}=    Evaluate    type($flag)
    log to console      ${flag_type}
    log to console      ${abc}
    log to console      ${fload_num}



*** Keywords ***
