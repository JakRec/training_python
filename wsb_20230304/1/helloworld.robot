*** Settings ***
Library    OperatingSystem

# *** Variables ***

*** Test Cases ***
Hello world
    Run    echo "Hello world" > hello_world.txt
    ${file} =    Get File    hello_world.txt
    Should Contain    ${file}    Hello worlds
# *** Keywords ***