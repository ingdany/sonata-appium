*** Settings ***
Documentation   Test for Success Stories Page in Mobile
Library     AppiumLibrary
Library     Process
Variables       ../../variables/browser.py
Variables       ../../variables/home.py
Variables       ../../variables/success_stories.py

***Keywords***
Open Success Stories Page
    log to console  Open Success Stories Page
    Sleep   5
    #Wait Until Page Contains    ${SIDE_BAR}    10
    wait until page contains element    xpath=${SIDE_BAR}
    Click Element   xpath=${SIDE_BAR}
    Click Element   xpath=${SUCCESS_STORIES_LINK}
    sleep   5
    Click Element   xpath=${FIRST_BUTTON}
    Click Element   xpath=${SECOND_BUTTON}
    Click Element   xpath=${THIRD_BUTTON}
    Click Element   xpath=${FOURTH_BUTTON}
    log to console  End Success Stories Page