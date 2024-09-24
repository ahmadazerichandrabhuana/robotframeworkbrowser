***Settings***
Resource  ../config/browser_config.robot
Resource  ../resources/pages/LoginPage.robot

Suite Setup     Open SauceDemo
Suite Teardown  Close Browser    ALL

***Test Cases***

As a User, I will see Error when leave Username and Password field as empty and then click Login button
    [Documentation]     Query Doctor with Doctor Name 
    LoginPage.Click Login button
    LoginPage.Verify error on field Username
    LoginPage.Verify error on field Password
    LoginPage.Verify error "Username is required"
