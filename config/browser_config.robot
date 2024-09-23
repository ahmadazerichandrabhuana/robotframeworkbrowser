*** Variables ***
${BROWSER}      chromium
${HEADLESS}     False
${KEYWORD_TIMEOUT}      15s
${BROWSER_TIMEOUT}      30s
${COOKIE_BANNER_STATE}      True       ##State Visibility of Cookie Banner, True if expected to be visible
${OUTPUT_FOLDER}        ../logs

*** Settings ***
Library  Browser        auto_closing_level=SUITE    run_on_failure=Log And Capture Error    timeout=${BROWSER_TIMEOUT}
Library  String
Library  Collections

Variables   ../env.yaml

*** Keywords ***
Log And Capture Error
    Take Screenshot
    ${source}=    Get Page Source
    Log    ${source}

Open New Browser
    [Arguments]     ${url}
    New Browser     ${BROWSER}      headless=${HEADLESS}
    ${context}=    Get Device    Desktop Chrome
    New Context   &{context}
    New Page  ${url}
    Set Browser Timeout     ${KEYWORD_TIMEOUT}

Open SauceDemo
    Open New Browser    ${SauceDemo_URL}

