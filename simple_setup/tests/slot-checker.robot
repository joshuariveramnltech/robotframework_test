*** Setting ***
Documentation                                           Running Test on VN88.com
Library                                                 Selenium2Library
Resource                                                ../resources/variables/variables.robot
Resource                                                ../resources/elements/elements.robot
Resource                                                ../resources/keywords/keywords.robot
Suite Setup                                             Open Home Page
Suite Teardown                                          Close All Browsers


*** Variables ***



*** Keywords ***


    

*** Test Cases ***

Load Page
    Maximize Browser Window
    Buffer Page

Check Login
    Submit Valid Credentials

Check succesful login redirect
    Wait success login

Check Slots Page
    Check Slots GP
    Check Slots Page
    Execute Game Test
    Log to console                                      ${success_message}

Check Successful logout
    Execute User Log-out

