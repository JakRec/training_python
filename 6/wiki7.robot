*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

#Test Setup    Start Video Recording
#Test Teardown    Stop Video Recording
Suite Teardown    Close All Browsers

*** Test Cases ***
Table contain element    
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Table Row Should Contain    xpath=//*[@id="mw-content-text"]/div[1]/table[2]    12    Website
    Close Browser