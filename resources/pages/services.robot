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
    Swipe Down  ${FOOTER}
    log to console  End Services Page