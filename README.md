<p align="center"><img src="https://avatars2.githubusercontent.com/u/574284?s=200&v=4"/></p>
<h2 align="center">Robot Framework Simple Sample Setup</h2>



---
**_What is Robot Framework?_**

Robot Framework is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has easy-to-use tabular test data syntax and it utilizes the keyword-driven testing approach. Its testing capabilities can be extended by test libraries implemented either with [Python](https://www.python.org/) or Java, and users can create new higher-level keywords from existing ones using the same syntax that is used for creating test cases.

Robot Framework project is hosted on GitHub where you can find further documentation, source code, and issue tracker. Downloads are hosted at PyPI. The framework has a rich ecosystem around it consisting of various generic test libraries and tools that are developed as separate projects.

Robot Framework is operating system and application independent. The core framework is implemented using Python and runs also on Jython (JVM) and IronPython (.NET).

Robot Framework itself is open source software released under Apache License 2.0, and most of the libraries and tools in the ecosystem are also open source. The framework was initially developed at Nokia Networks and it is nowadays sponsored by Robot Framework Foundation.

For more information about [robotframework](https://robotframework.org/) and its inner workings, [click here.](https://robotframework.org/)


---
**Setup/Installation**

Before starting your setup, it is important to note that if you want to follow along all the tutorials below you will need Git, so it is necessary to install it on your machine. 

But if you wish to just follow the setup/installation of robot framework for your machine, you do not need to install Git.

**Windows**
1. Downloading git on windows is simple, you can simply just download its setup.exe file [here](https://git-scm.com/)
2. After downloading its setup, just install it just like any windows setup.exe file.
3. That is all you need to do to install git on your machine.


**Linux**
1. Git can easily be installed on your Linux machine via terminal.
2. Update your package lists by running this command `sudo apt-get update`
3. Now, we are ready to install git on your machine,`sudo apt-get install git`
4. That's it, to verify your installation, simply run this command `git --version`

This repository contains a very basic sample of how to implement a robotframework test library using [**SeleniumLibrary**](https://github.com/robotframework/SeleniumLibrary/). 

First of all, since we are going to use robotframework backed with Python 3, having one installed on your machine is nescessary. Linux Users should have Python installed out of the box,to check existing python installation, run this command, `python3 --version`, Windows users could run `python --version` on their command line to verify if python is already installed in their machine. The latest stable release could be found [here.](https://www.python.org/downloads/)

After successfully installing the latest stable release of Python 3, clone this repository. Run the command on your terminal `git clone *the link to this repository*`, for more information about cloning a repository, [click here.](https://help.github.com/en/articles/cloning-a-repository)

After cloning this repository, open the cloned repository in your terminal(cmd/powershell for Windows, terminal for Linux and Mac). We will now install pip, a python package manager to install our dependencies. Follow the instructions below depending on your OS.

**Linux:**
1. Update Linux Package lists `sudo apt-get update`
2.  Install pip for Python 3 `sudo apt install python3-pip`
3.  `pip3` should be installed now, to verify, run the command below. `pip3 --version`

**Windows:**
1. Download get-pip.py using curl `curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py`
2. Run the command `python get-pip.py`.
3. Check if the pip installation is successful. `pip -V`

When `pip` is successfully installed. Installing the dependencies should now be easily accomplished. Run this command on the root directory of this cloned repository. 

**Linux:** `pip3 install -r requirements.txt`

**Windows:** `pip install -r requirements.txt`

_For Reference, below are the dependencies the command above will install on your machine_
* jsonpath
* paramiko
* requests
* robotframework
* robotframework-seleniumlibrary
* robotframework-sshlibrary
* selenium
* psutil
* locustio


---
**Downloading and Setting up Web Drivers.**

This project relies on the use of webdrivers. The latest stable releases can be found [here.](https://www.seleniumhq.org/download/)

After Downloading the latest webdriver for your browser, add the webdriver file to your _PATH_. You can either create a new folder where you will keep all your webdrivers then add the whole folder to your _PATH_ or you can alternatively put the webdriver into a folder already existing in your _PATH_, both will give the same result.

---
**Running your first robotframework test**

After all that installation, it is now time to run your first test. 
Go to the root of the cloned repository, open a terminal and run this command, `robot helloworld.robot`, and watch what happens.

Ok, so what happened there? helloworld.robot is a simple test that prints the word "Hello World!" to your console. Other than that it does nothing. _Below is the script inside the helloworld.robot file._ 

```robotframework
*** Setting ***
Documentation               This is a simple example robot test that prints the word Hello World to the console.
Library                     SeleniumLibrary


*** Variables ***
# Variables Section.
${message}                  \nHello World!     							


*** Keywords ***
# Keywords Section.
Print Sample Message																
    Log to Console          ${message} 									
    

*** Test Cases ***
# Test cases Section.
Print Hello World
    [Documentation]         This prints hello world text on the console.			
    [Tags]                  hello-world-message																			
    Print Sample Message																
```

Now, after you ran the command, you may notice that the root directory is cluttered, new files has been created. These files contain the logs,problems encountered, and the overall report of what happened on the test you just ran. Try opening log.html or report.html and see.

A lot can be done with robotframework and [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/) working hand-in-hand. There are too much Keywords if I explain each and everything, so if you want, you can do so by reading robotframework's own documentation [here.](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)


---
**Opening a Website to a URL**

The main goal of selenium of course is web automation. Web Automation using the [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/) in robotframework cannot be more easy. Below is an example script that opens a browser to url, then closes the browser.

You can run this test by navigating to the root directory of this repository, open up a terminal and run `robot example.robot` see what happens. _Below is the contents os the example.robot_

```robotframework
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
```

Ok, again, what happened there? The script recognized the keyword `Open Browser` that is a pre-defined Keyword in the SeleniumLibrary and open the specified browser in the specified url which is https://robotframework.org/ and Chrome browser. Here in this script, I have decided to implement the `Sleep` Keyword, it acts as a delay which can be really helpful sometimes, you'll know soon enough.



---
**Conclusion**

This guide pretty much covers the basics of using SeleniumLibrary in robotframework. I mean, the hardest part of it is the installation maybe, other than that, running tests cannot be more easy. 


---
**_Advanced Implementations_**


_Test Structure_

Some example with how test suites can be structured can be found inside the **structured_setup** and **simple_setup** folder in this repository. I've initialized each with their own README.md.


_Creating your own log files_

You're not probably going to need to, for robotframework creates it own log and report out of the box , but in the case that you need to log some text to a file then try following the guide i created.


