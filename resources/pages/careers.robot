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
    sleep   5
    Click Element   xpath=${SIDE_BAR}
    Click Element   xpath=${CAREERS_LINK}
    sleep   5
    Click Element   xpath=${SEND_RESUME_BUTTON}
    Sleep   30
    log to console  End Careers Page