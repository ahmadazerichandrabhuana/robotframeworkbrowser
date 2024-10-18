# Test Automation using Robot Framework

This is a simple sample for Test Automation using Robot Framework.

> [!NOTE]  
> This repository uses Browser Library, not Selenium (which might be more popular out there). Documentation can be found [here](https://robotframework-browser.org/).

## Requirements

1. Install [VS Code](https://code.visualstudio.com/) or any Code Editor you're comfort with.
2. Install [Python 3](https://www.python.org/).
3. Make sure 'pip' also installed together with Python 3. If it is not automatically installed, refer to [Python Crash Course](https://ehmatthes.github.io/pcc/chapter_12/installing_pip.html).
4. Update Python to your PATH file. Refer [here](https://realpython.com/add-python-to-path/), this website covered configuration for Windows, Linux, and MacOS.
5. Install [NodeJS](https://nodejs.org/en/download/prebuilt-installer), this is necessary because this repository is using [Browser Library](https://docs.robotframework.org/docs/different_libraries/browser). 
7. Download and open this code repository on your local system and run these 2 commands :
   ```
   pip install -r requirements.txt
   rfbrowser init
   ```
   - If the pip install process is failed, try to downgrade your python version. I used python `3.9.10` when creating this repository. When I tried on different local machine with python `3.13.0` somehow the pip installation process is error.
   - If `rfbrowser init` is failed, you may forgot to install NodeJS, install it first.

## Run Tests
* Run all tests : 
   ```
   robot tests
   ```

* Run specific test : 
   ```
   robot tests/{test file name using extention ".robot"}

   sample :
   robot tests/001.robot
   robot tests/002.robot
   robot tests/LoginPageTest.robot
   ```

## Open Test Report
   MacOs : 

    open report.html
   Windows : 

    start report.html
   Or just drag and drop file `report.html` into your Browser.

## Open Test Log
   MacOs : 

    open log.html
   Windows : 

    start log.html
   Or just drag and drop file `log.html` into your Browser.

## Short Repository Explanation

This sample Test Automation consists of 3 main folders : 

* config
   ```
   Contains basic configuration of Variables, Settings, and Keyword wich will be used globally on this whole project
   ```
* resources
   ```
   Consists of 3 more folders :
   > helpers  : contains any action which might be used globally on any pages
   > locators : contains web element for each specific web pages
   > pages    : contains actions which will be performed on each specific web pages
   ```
* tests
   ```
   Contains test cases
   ```

Apart from these 3 folders, this sample also using 'env.yaml' file which can be used to store configuration-specific data. On this sample, URL for test is stored there :
   ```
   SauceDemo_URL: https://www.saucedemo.com/
   ```
