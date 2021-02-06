*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
testRadiotexts
        open browser   http://www.practiceselenium.com/practice-form.html       chrome
        maximize browser window
        element should be visible   xpath://a[text()='Welcome']
        close browser