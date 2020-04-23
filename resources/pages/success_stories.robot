*** Settings ***
Documentation   Test for Success Stories Page in Mobile
Library     AppiumLibrary
Library     Process
Variables       ../../variables/browser.py
Variables       ../../variables/home.py
Resource        home.robot


***Keywords***
Open Success Stories Page
    log to console  Open Success Stories Page
    Click Element   xpath=${SIDE_BAR}
    Click Element   xpath=${SUCCESS_STORIES_LINK}
    log to console  End Success Stories Page