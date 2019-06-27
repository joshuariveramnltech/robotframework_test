***Settings***
Documentation                                       This robot script opens your browser to a specified url and then close it after.
Library                                             SeleniumLibrary


***Variables***
${website_url}                                      https://robotframework.org/


***Keywords***
Open the Test Browser to the url
    Open Browser                                    ${website_url}                  chrome
    #Selenium may be too fast sometimes that the user cannot even see what is happening.
    Sleep                                           5s
    Close all Browsers


***Test Cases***
Test Case One
    Open the Test Browser to the url