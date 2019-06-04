*** Setting ***
Documentation                                   Running Test on https://www.vn88uat.com
Library                                         Selenium2Library

Suite Setup                                     Open Home Page
Suite Teardown                                  Close All Browsers


*** Variables ***
${username}                                     cmsqaJKR
${password}                                     P@ssw0rd

*** Keywords ***
Open Home Page
    [Tags]  Open Home Page
    Open Browser                                https://www.vn88uat.com  chrome


Buffer Page
    wait until page contains element            username


Submit Valid Credentials    
    input text                                  username   ${username}
    input password                              password   ${password}
    click button                                //*[@id="header"]/section[1]/div/ul/div[1]/div[2]/form/div[3]/button

Wait success login
    wait until page contains                    ${username}
    
Check Slots GP
    click link                                  /slots
    wait until page contains                    GPI Slots
    page should contain                         PT Slots
    page should contain                         MGS Slots
    page should contain                         PP Slots
    page should contain                         PNG Slots
    page should contain                         TTG Slots
    page should contain                         ISB Slots

Check Slots Page
    Go to                                       https://www.vn88uat.com/slots/GPI
    wait until page contains                    Panda Warrior
    input text                                  slotSearch          Baseball
    wait until page contains                    Baseball
    input text                                  slotSearch          Zodiac
    wait until page contains                    Zodiac
    


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

