***Settings***
Documentation           Check the website user login capability.
Library                             Selenium2Library
Force Tags              valid-login
Resource                ../../resources/gen_keys.robot
Suite Setup                          Open Home Page
Suite Teardown                       Close all Browsers

***Test Cases***
Valid Login
    Given Login Page is Open
    When User Provides Valid Username and Password
    and Login Button is Clicked
    Then User dashboard should open
    Log To Console              I am test 1