*** Settings ***
Library     Marks.py
Library     Marks


*** Variables ***


*** Test Cases ***
testcase123
    ${marks}=           get_maths_marks
    log to console          ${marks}

*** Keywords ***


