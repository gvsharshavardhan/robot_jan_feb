*** Settings ***
Suite Setup     log to console      opening browser
Suite Teardown      log to console      closing browser

Test Setup      log to console      before testcase
Test Teardown       log to console      after testcase

*** Test Cases ***
tc1
    [Tags]  sanity
    log to console      tc1-test case 1
tc2
    log to console      tc2-test case 2
tc3
    log to console      tc3-test case 3
tc4
    log to console      tc4-test case 4