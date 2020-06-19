*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    Chrome
${browser_path}    /Users/rajniranjansingh/PycharmProjects/RobotFramework/drivers/chromedriver
${URL}    http://newtours.demoaut.com/

*** Test Cases ***

LoginTest
    create webdriver    ${browser}    executable_path=${browser_path}
    go to   ${URL}
    input text    name:userName    mercury
    input text    name:password    mercury
    click button    name:login
    close browser

LoginTest2
    Create Webdriver    ${browser}    executable_path=${browser_path}
    Go To   ${URL}
    input text    name:userName    mercury
    input text    name:password    mercury
    click button    name:login
    close browser

LoginTest3
    Create Webdriver    ${browser}    executable_path=${browser_path}
    Go To   ${URL}
    CredentialsEnter
    close browser

*** Keywords ***
CredentialsEnter
    input text    name:userName    mercury
    input text    name:password    mercury
    click button    name:login