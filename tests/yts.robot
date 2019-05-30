*** Setting ***
Documentation    Running Test on https://www.thwin88.com/
Library    Selenium2Library

Suite Setup     Open Home Page
Suite Teardown  Close All Browsers


*** Variables ***
${username}                 cmsqaJKR
${password}                 P@ssw0rd

*** Keywords ***
Open Home Page
    [Tags]  Open Home Page
    Open Browser    https://www.thwin88.com/  ff


Visit yts
    title should be                     WIN88


Submit Valid Credentials         
    click link                          href='/login'
    

*** Test Cases ***
Check Login
    Submit Valid Credentials

