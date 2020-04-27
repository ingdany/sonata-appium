*** Settings ***
Documentation   Test for Services Page in Mobile
Library     AppiumLibrary
Library     Process
Variables       ../../variables/browser.py
Variables       ../../variables/home.py
Variables       ../../variables/careers.py


***Keywords***
Open Careers Page
    log to console  Open Careers Page
    Sleep   5
    Click Element   xpath=${SIDE_BAR}
    Click Element   xpath=${CAREERS_LINK}
    Sleep   5
    Click Element   xpath=${SEND_RESUME_BUTTON}
    log to console  Passed Click Send Resume Button
    Click Element   id=${FIRST_JOB_POSITION}
    log to console  Passed Click First Job Position
    Sleep   5
    Click Element   xpath=${APPLY_BUTTON}
    log to console  Passed Click Apply Button
    Hide Keyboard
    Input Text      xpath=${INPUT_NAME}   ${NAME}
    log to console  Added Name ...
    Press Keycode       93
    wait until page contains element    xpath=${INPUT_EMAIL}
    Input Text      xpath=${INPUT_EMAIL}    ${EMAIL_ADDRESS}
    log to console  Added Email Address...
    sleep   5
    Input Text      xpath=${INPUT_PHONE}    ${PHONE_NUMBER}
    log to console  Added Phone Number ...
    Input Text      xpath=${INPUT_LINKED_IN}    ${LINKED_IN}
    log to console  Added Linked In Address ...
    capture page screenshot
    Sleep   30
    log to console  End Careers Page