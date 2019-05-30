*** Setting ***
Documentation    Running Test on http://testing.todvachev.com/
Library    Selenium2Library

Suite Setup     Open Home Page
Suite Teardown  Close All Browsers


*** Variables ***
${username}                 cmsqaJKR
${password}                 P@ssw0rd

*** Keywords ***
Open Home Page
    [Tags]  Open Home Page
    Open Browser    http://testing.todvachev.com/  ff


Visit yts
    title should be                     WIN88


Submit Valid Credentials         
    click link                          //*[@id="menu-item-35"]/a
    page should contain                 Alert Box 
    click link                          //*[@id="main-content"]/article[5]/div[2]/header/h3/a
    page should contain                 Drop down menu Test
    list selection should be            DropDownSelect      Volvo Saab Mercedes Audi

    

*** Test Cases ***
Check Login
    Submit Valid Credentials

