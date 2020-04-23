*** Settings ***
Documentation   Test for Services Page in Mobile
Library     AppiumLibrary
Library     Process
Variables       ../../variables/browser.py
Variables       ../../variables/home.py
Resource        home.robot


***Keywords***
Open Services Page
    log to console  Open Services Page    
    Click Element   xpath=${SIDE_BAR}
    Click Element   xpath=${SERVICES_LINK}
    Swipe Down  ${FOOTER}
    log to console  End Services Page