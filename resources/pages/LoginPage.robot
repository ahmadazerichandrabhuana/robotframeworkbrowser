***Settings***
Resource  ../locators/LoginPageLocator.robot
Resource  ../helpers/CommonAction.robot

***Keywords***
Verify Login Page
    Verify Element  ${textHeaderLogin}
    Verify Element  ${inputUsername}
    Verify Element  ${inputPassword}
    Verify Element  ${buttonLogin}
    Verify Element Text      ${textHeaderLogin}  Swag Labs
    Verify Placeholder Text  ${inputUsername}    Username
    Verify Placeholder Text  ${inputPassword}    Password
    Verify Element Value     ${buttonLogin}      Login

Verify Doctor Profile Name
    [Arguments]     ${doctorName}
    Verify Element Text     ${txtDoctorProfileName}      ${doctorName}