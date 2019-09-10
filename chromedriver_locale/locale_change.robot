# Created 9-11-2019 12:33AM
# Refer to https://developers.google.com/admin-sdk/directory/v1/languages for the chrome supported languages.

***Settings***
Documentation                   Launches chrome in different Locale.

Library                         SeleniumLibrary

***Keywords***
Launch Chrome in Different Locale
    [Documentation]             Launches chrome in the specified locale.
    [Arguments]                 ${locale}               ${url}
    ${options} =                Evaluate                sys.modules['selenium.webdriver'].ChromeOptions()       sys
    Call Method                 ${options}              add_argument            --lang\=${locale}
    Create WebDriver            Chrome                  chrome_options=${options}
    Go to                       ${url}

***Test Cases***
Test German Locale
    Launch Chrome in Different Locale       de           https://google.com