*** Setting ***
Documentation    Running Test on https://dmca-edu-ph.herokuapp.com
Library    Selenium2Library

Suite Setup     Open Home Page      
Suite Teardown  Close All Browsers


*** Variables ***
${username}     joshuakimrivera@gmail.com
${password}     P@ssw0rd


*** Keywords ***
Open Home Page
    Open Browser    https://dmca-edu-ph.herokuapp.com/account  chrome
    Maximize Browser Window



Submit Valid Credentials
    click link              /account/login/
    input text              username   ${username}
    input password          password   ${password}
    click element           loginButton
    sleep                   00:03
    page should contain     DMCA SIS 
    click link              /account/view/edit/profile/
    sleep                   00:03
    click link              /account/logout/
    title should be         Login



*** Test Cases ***
Test Valid Login
    [Tags]  valid
    Submit Valid Credentials
