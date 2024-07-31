*** Settings ***
Documentation    Operators Activity Test Case
Library    SeleniumLibrary

Resource    ../resource/login.resource
Resource    ../resource/dropdown.resource
Resource    ../resource/quicklinks.resource
Resource    ../resource/navigation.resource

Suite Setup    Start Test
Suite Teardown    End Test

*** Variables ***

*** Test Cases ***
Open Provider Page
    Sidebar Navigate    3    3    4

Select Last 7 Days Quicklinks
    Select Quicklinks    6

Select Operators Dropdown
    Select Dropdown    \#mui-dp-id-operator    1

Request View
    Click Element    css:.mui-search-bar-wrapper .mui-search-bar-row > em:nth-child(4) .MuiButtonBase-root

*** Keywords ***
End Test
    Sleep    5
    Close Browser
Start Test
    Login


