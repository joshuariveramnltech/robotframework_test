*** Setting ***
Documentation               Running Test on https://dmca-edu-ph.herokuapp.com
Library                     Selenium2Library

Suite Setup                 Open Home Page
Suite Teardown              Close All Browsers


*** Variables ***
${username}                 joshuakimrivera@gmail.com
${password}                 P@ssw0rd


*** Keywords ***
Open Home Page
    [Tags]                  Open Home Page
    Open Browser            https://dmca-edu-ph.herokuapp.com  ff


Visit homepage
    title should be                     WIN88


Submit Valid Credentials
    click link              /account/login/
    input text              username   ${username}
    input password          password   ${password}
    click element           loginButton
    page should contain     DMCA SIS 
    click link              /account/view/edit/profile/
    click link              /account/logout/
    title should be         Login
    

Submit Invalid Credentials
    input text              username   wrongemail@email.com   
    input password          password   wrongpassword
    click element           loginButton
    title should be         Login




*** Test Cases ***
Visit landing
    Visit homepage
Test Valid Login
    Submit Valid Credentials

Test Invalid Login
    Submit Invalid Credentials