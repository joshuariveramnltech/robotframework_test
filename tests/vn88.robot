*** Setting ***
Documentation                                   Running Test on https://www.vn88.com/
Library                                         Selenium2Library

Suite Setup                                     Open Home Page
Suite Teardown                                  Close All Browsers


*** Variables ***
${username}                                     cmsqaJKR
${password}                                     P@ssw0rd

*** Keywords ***
Open Home Page
    [Tags]  Open Home Page
    Open Browser                                https://www.vn88.com/  chrome


Buffer Page
    sleep                                       00:06


Submit Valid Credentials    
    input text                                  username   ${username}
    input password                              password   ${password}
    click element                               css=.form-inline > div:nth-child(3) > button:nth-child(1)
Wait success login
    wait until page contains                    ${username}
    
Check Slots GP
    click link                                  /slots
    Sleep                                       00:02
    page should contain                         PT Slots
    page should contain                         MGS Slots
    page should contain                         PP Slots
    page should contain                         PNG Slots
    page should contain                         TTG Slots
    page should contain                         ISB Slots

Check Slots Page
    Sleep                                       00:02
    click element                               css=li.col-md-3:nth-child(1) > a:nth-child(1) > span:nth-child(1) > img:nth-child(1)
    Sleep                                       00:05

    [Tags]    testTest
    : FOR    ${INDEX}    IN RANGE    1    22
    \       click element                               css=div.col-md-i7:nth-child(${INDEX}) > div:nth-child(1) > div:nth-child(3) > a:nth-child(1) 
    \       Select Window                               NEW
    \       Log    ${INDEX}
    \       Maximize Browser Window
    \       sleep                                       00:03
    \       close Window
    \       Select Window                               MAIN
    Log to console    For loop is over... forever :(

    


Execute User Log-out
    click link                                 /logout
    wait until page contains element            username
    wait until page contains element            password

    

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

Check Successful logout
    Execute User Log-out

