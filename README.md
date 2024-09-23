# Automation-Test using RobotFramework

This is simple sample for automation-test using RobotFramework.

## Requirements

1. Install [Pyhton 3](https://www.python.org/)
2. Install [RobotFramework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installing-using-pip), or simply run below command
   ```
    pip install -r requirements.txt
   ```

## Run Tests
* Run all tests : 
   ```
   robot tests
   ```

* Run specific test : 
   ```
   robot tests/{test file name using extention ".robot"}
   sample : robot tests/001.robot
   ```

## Open Test Report

    open report.html

## Open Test Log

    open log.html

## Repository Explanation

This sample test-automation consisted of 3 main folders : 

* config
   ```
   Contains very basic config of Variables, Settings, and Keyword wich will be used globally on other files
   ```
* resources
   ```
   Consisted of 3 more folders :
   > helpers  : contains any action which might be used globally on any pages
   > locators : contains web element for each specific web pages
   > pages    : contains actions which will be performed on each specific web pages
   ```
* tests
   ```
   Contains test cases for each Web Pages
   ```

Apart from these 3 folders, this sample also using .yaml file in case User want to use external file to store any data. On this sample, it is used to store URL used for test :
   ```
   SauceDemo_URL: https://www.saucedemo.com/
   ```
