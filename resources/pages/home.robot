*** Settings ***
Documentation   Test for Home Page in Mobile
Library     AppiumLibrary
Library     Process
Variables       ../../variables/browser.py
Variables       ../../variables/home.py


***Keywords***
Open Home Page
    log to console  Open Home Page
    #Start Screen Recording
    wait until page contains element    xpath=${SEARCH_URL}
    Input Text      xpath=${SEARCH_URL}     ${SITE_URL}
    Press Keycode       66
    sleep   30    
    ${IS_ACCEPT_COOKIES}    Run Keyword And Return Status    Wait Until Page Contains Element    ${ACCEPT_COOKIES}
    Run Keyword If    ${IS_ACCEPT_COOKIES}      click element   xpath=${ACCEPT_COOKIES}  
    Swipe Down  ${ACCELERATE_GROWTH}
    log to console  End Home Page
    #Stop Screen Recording   filename=Home

Swipe Down
    [Arguments]     ${ELEMENT_ID}
    :FOR    ${i}    IN RANGE    12
    \   Press Keycode    93
    \   Sleep    0.5