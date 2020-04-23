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
    #${IS_SIDE_BAR}    Run Keyword And Return Status    Wait Until Page Contains Element    ${SIDE_BAR}
    #Run Keyword If    ${IS_SIDE_BAR}      click element   xpath=${SIDE_BAR}
    #${IS_SERVICES_LINK}    Run Keyword And Return Status    Wait Until Page Contains Element    ${SERVICES_LINK}
    #Run Keyword If    ${IS_SERVICES_LINK}      click element   xpath=${SERVICES_LINK}
    log to console  End Home Page
    #Stop Screen Recording   filename=Home

Swipe Down
    [Arguments]     ${ELEMENT_ID}
    :FOR    ${i}    IN RANGE    12
    #\   ${IS_ELEMENT}    Run Keyword And Return Status    Wait Until Element Should Be Visible    xpath=${ELEMENT_ID}
    #\   ${IS_ELEMENT}    Run Keyword And Return Status    Set Focus To Element    ${ELEMENT_ID}
    #\   Run Keyword If    ${IS_ELEMENT}     Exit For Loop
    #\   Click Element   xpath=${ELEMENT_ID}
    \   Press Keycode    93
    \   Sleep    0.5