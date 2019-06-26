
*** Setting ***
Documentation    				This is a simple example robot test.
Library    					SeleniumLibrary


*** Variables ***
${hello_world}					\nHello World!     


*** Keywords ***
Print Sample Message
	Log to Console				${hello_world} 				
    

*** Test Cases ***
Print Hello World
	[Documentation]				This prints hello world text on the console.
    	[Tags]  				hello-world
    	Print Sample Message


