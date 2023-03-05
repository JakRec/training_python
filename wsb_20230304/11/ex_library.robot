*** Settings ***
Library    ex10
Library    SeleniumLibrary
Library    ScreenCapLibrary
Library    XML

*** Keywords ***
Echo Start
    Log    Test rozpoczety

Check page title
    ${tytul_strony_aktualny}    Get Title
    Should Be Equal As Strings    ${tytul_strony_aktualny}    ${tytul}

Section Verification
    ${sekcja_aktualna}    Get Text    xpath=//*[@id="${sekcja}"]
    Should Be Equal As Strings    ${sekcja_aktualna}    ${sekcja}

*** Variables ***
${STRONA}    https://en.wikipedia.org/wiki/Robot_Framework
${TEKST}    Robot Framework
${tytul}    Robot Framework - Wikipedia 
${sekcja}    History
    

*** Test Cases ***
Verify title
    Open Browser    ${STRONA}    chrome
    Check page title
    Close Window
Verify Section
    Open Browser    ${STRONA}    chrome
    Section Verification
    Close Window
Use Keyword and external Library
    Echo Start
    Open Browser    ${STRONA}    chrome
    Page Should Contain    ${TEKST}
    Close Window
    Hello World
Find elements
    Echo Start
    Open Browser    ${STRONA}    chrome
    Element Should Be Visible    xpath=//*[@id="History"]
    Element Should Be Visible    xpath=//*[@id="Description"]
    Element Should Be Visible    xpath=//*[@id="Examples"]
    Close Window
    Hello World