*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${Url}  http://automationpractice.com/index.php
*** Test Cases ***

LoginTest
    open browser    ${Url}   ${Browser}
    maximize browser window
    set selenium speed  2 seconds
        click link  xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
        scroll element into view  xpath://*[@id="SubmitLogin"]
        input text  xpath://*[@id="email"]    nnagesh@gmail.com
        input text  id:passwd  Test
        click element   xpath://*[@id="SubmitLogin"]
     close browser

*** Keywords ***

