*** Settings ***
Library    ex10

*** Keywords ***
Echo Hello
    Log    Hello World from keyboard

*** Test Cases ***
Use Keyword and external Library
    Echo Hello
    Hello World
