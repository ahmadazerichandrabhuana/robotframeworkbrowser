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

Click Login button
    Click Element  ${buttonLogin}

Verify error on field Username
    Verify Element  ${iconErrorUsername}

Verify error on field Password
    Verify Element  ${iconErrorPassword}

Verify error "Username is required"
    Verify Element  ${textHeaderError}
    Verify Element  ${buttonError}
    Verify Element  ${iconButtonError}
    Verify Element Text  ${textHeaderError}  Epic sadface: Username is required
