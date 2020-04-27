*** Settings ***
Documentation   Configure Chrome Browser in Android and open all Keywords
Library         AppiumLibrary    #10    run_on_failure = capture page screenshot
Resource        pages/home.robot
Resource        pages/services.robot
Resource        pages/success_stories.robot
Resource        pages/careers.robot
Variables       ../variables/connect.py
Variables       ../variables/browser.py

Test Setup    Close All Applications
Test Teardown    Close All Applications

*** Test Cases ***
Run Mobile Portrait
    Open Application    ${REMOTE_URL}   platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}     deviceName=${DEVICE_NAME}   automationName=${AUTOMATION_NAME}   appPackage=${APP_PACKAGE}   appActivity=${APP_ACTIVITY}     useNewWDA=${USE_NEW_WDA}
    Configure Chrome
    Open Home Page
    #Slide Home Page
    #Open Services Page
    #Open Success Stories Page 
    Open Careers Page 
#Run Mobile Landscape
    #Open Application    ${REMOTE_URL}   platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}     deviceName=${DEVICE_NAME}   automationName=${AUTOMATION_NAME}   appPackage=${APP_PACKAGE}   appActivity=${APP_ACTIVITY}
    #Configure Chrome
    #Landscape
    #Open Home Page
    
*** Keywords ***
Configure Chrome
    log to console  Configure Chrome Browser in Android and search Sonata Web Site
    wait until page contains element    xpath=${ACCEPT_CONTINUE}
    click element       xpath=${ACCEPT_CONTINUE}
    wait until page contains element    xpath=${NEXT}
    click element       xpath=${NEXT}
    wait until page contains element    xpath=${POSITIVE}
    click element       xpath=${POSITIVE}    
    #capture page screenshot