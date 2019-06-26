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

This repository contains a very basic sample of how to implement a robotframework test library using [**SeleniumLibrary**](https://github.com/robotframework/SeleniumLibrary/). 

First of all, since we are going to use robotframework backed with Python 3, having one installed on your machine is nescessary. Linux Users should have Python installed out of the box,to check existing python installation, run this command, `python3 --version`, Windows users could run `python --version` on their command line to verify if python is already installed in their machine. The latest stable release could be found [here.](https://www.python.org/downloads/)

After successfully installing the latest stable release of Python 3, clone this repository. Run the command on your terminal `git clone *the link to this repository*`, for more information about cloning a repository, [click here.](https://help.github.com/en/articles/cloning-a-repository)

After cloning this repository, open the cloned repository in your terminal(cmd/powershell for Windows, terminal for Linux and Mac). We will now install pip, a python package manager to install our dependencies. Follow the instructions below depending on your OS.

**Linux:**
1. Update Linux Package lists `sudo apt-get update`
2.  Install pip for Python 3 `sudo apt install python3-pip`
3.  `pip3` should be installed now, to verify, run the command below. `pip3 --version`

**Windows:**
1. Run the command `python get-pip.py`.
2. Check if the pip installation is successful. `pip -V`

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

Ok, so what happened there? helloworld.robot is a simple test that prints the word "Hello World!" to your console. Other than that it does nothing. Now, after you ran the command, you may notice that the root directory is cluttered, new files has been created. These files contain the logs,problems encountered, and the overall report of what happened on the test you just ran. Try opening it and see.

A lot can be done with robotframework and SeleniumLIbrary working hand-in-hand. There are too much Keywords if I explain each and everything, so if you want, you can do so by reading robotframework's own documentation [here.](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)

Some example with structure can be found inside the structured_setup folder in this repository.
