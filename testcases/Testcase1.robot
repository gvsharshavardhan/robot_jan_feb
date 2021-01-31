*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
LoginTest
#    create webdriver  create chrome  executable_path="C:\Users\Harsha\AppData\Local\Programs\Python\Python38\Scripts\chromedriver.exe"
    open browser  ${url}  ${browser}
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email  harsha@gmail.com
    input text  id:Password  testpass
    click element  xpath://input[@value='Log in']