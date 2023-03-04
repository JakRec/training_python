*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

#Test Setup    Start Video Recording
#Test Teardown    Stop Video Recording
Suite Teardown    Close All Browsers

*** Test Cases ***
#Section search   
#    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
#    Element Should Contain    xpath=//*[@id="Description"]    Description

#Table Search
#    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
#    Element Should Be Visible    xpath=//*[@id="mw-content-text"]/div[1]/table[2]
     
Image is visible
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Be Visible    xpath=//*[@id="mw-content-text"]/div[1]/table[2]/tbody/tr[1]/td/a/img
    Close Browser    

List See Also Exist
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Be Visible    xpath=//*[@id="mw-content-text"]/div[1]/ul[1]/li[1]
    Close Browser

List Contain Element
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Contain    xpath=//*[@id="mw-content-text"]/div[1]/ul[1]/li[1]/a    Acceptance testing
    Close Browser       

Page Contain Element
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Page Should Contain    Test cases are written using a keyword-testing methodology
    Close Browser

Table contain element    
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Table Row Should Contain    xpath=//*[@id="mw-content-text"]/div[1]/table[2]    12    Website
    Close Browser