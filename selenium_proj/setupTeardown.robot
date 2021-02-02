*** Settings ***
Library     teaa.py
Variables   teaa.py
Resource    Demo.robot
Test Setup      beforetest
Test Teardown   aftertest
Suite Setup     beforeSuite
Suite Teardown      afterSuite


*** Variables ***
${na}       ${name}


*** Test Cases ***
#testcase123
#    ${sal}=      getsalary
#    log to console      ${sal}
#    log to console      ${na}
#    keyword1
testCase1
    log to console          \n\n\t\tbtest case 1\n
testCase2
    log to console          \n\n\t\tbtest case 2\n

testCase3
    log to console          \n\n\t\tbtest case 3\n


*** Keywords ***
beforetest
    log to console      \n\n\t\tbefore test keyword\n


aftertest
    log to console      \n\n\t\tafter test keyword\n

beforeSuite
    log to console      \n\n\t\tbefore suite keyword\n


afterSuite
    log to console      \n\n\t\tafter suite keyword\n