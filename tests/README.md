![alt text](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Robot-framework-logo.png/250px-Robot-framework-logo.png)
## Robot Framework Install Documentation
---
#### Linux users should have Python 3 built-in. 
#### For Windows Users, download the latest version of [Python 3.7.X](https://www.python.org/downloads/), then add Python to PATH.
#### To verify, run the following command on terminal.
#### Linux: `python3 --version`
#### Windows: `python --version`
---
## Linux:
### First, install pip for Python 3, To begin installation, run the following commands:
1. Update Linux Package lists `sudo apt-get update`
2.  Install pip for Python 3 `sudo apt install python3-pip`
3.  `pip3` should be installed now, to verify, run the command below. `pip3 --version`
---
## Windows:
1. Run the command `python get-pip.py`.
2. Check if the pip installation is successful. `pip -V`
---

### Using `pip`, install the following dependencies
#### Install the dependencies with this command, Linux:`pip3 install *packagename*` , Windows: `pip install *packagename*`.
#### Below are the dependencies to be installed.
* jsonpath
* paramiko
* requests
* robotframework
* robotframework-selenium2library
* robotframework-sshlibrary
* selenium
* psutil
* locustio
####
