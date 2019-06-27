*** Setting ***
#This defines what this test is about.
Documentation						This is a simple example robot test that prints the word Hello World to the console.

#This is test makes use of the robotframework external library SeleniumLibrary
Library    							SeleniumLibrary


*** Variables ***
# Variables Section.
${message}							\nHello World!     										# Sets the string variable ${message} value to Hello World!


*** Keywords ***
# Keywords Section.
Print Sample Message																		# A function-like name, can be called on the test case and can contain other keywords.
	Log to Console					${message} 												# Uses the SeleniumLibrary Keyword 'Log to Console' to print the message to the console.
    

*** Test Cases ***
# Test cases Section.
Print Hello World
	[Documentation]					This prints hello world text on the console.			# Another Documentation that tells the user what this case is suppose to do.
    [Tags]							hello-world-message										# Makes use of the robotframework tags, test cases with tags can be run specifically.									
    Print Sample Message																	# Calls on the 'Print Sample Message' Keyword that is defined on the Keowrds section.