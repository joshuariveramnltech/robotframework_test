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



Submit Invalid Credentials
    input text              username   wrongemail@email.com   
    input password          password   wrongpassword
    click element           loginButton
    title should be         Login



*** Test Cases ***
Test Invalid Login
    [Tags]  invalid
    Submit Invalid Credentials