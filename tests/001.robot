***Settings***
Resource  ../config/browser_config.robot
Resource  ../resources/pages/LoginPage.robot

Suite Setup     Open SauceDemo
Suite Teardown  Close Browser    ALL

***Test Cases***
As a User, I will see Header "Swag Labs", input field Username, input field Password, and Login button on the Login Page
    [Documentation]  Check Hedaer, input field Username, input field Password,
    ...              and Login button when open Landing Page
    LoginPage.Verify Login Page

# As a User, I will see Error when leave Username and Password field empty and click Login button
#     [Documentation]     Query Doctor with Doctor Name 
#     Sleep  5s