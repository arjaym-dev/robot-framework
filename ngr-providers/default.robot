*** Settings ***
Documentation    Ngr Provider Test Case
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
    Sidebar Navigate    3    3    1

Select Last 7 Days Quicklinks
    Select Quicklinks    6

Select Providers Dropdown
    Select Dropdown    \#mui-dp-id-ngr-provider-input    1

Select Tournament Dropdown
    Select Dropdown    \#mui-dp-id-ngr-tournament-input    2

Request View
    Click Element    css:.mui-search-bar-wrapper .mui-search-bar-row > em:nth-child(4) .MuiButtonBase-root

*** Keywords ***
End Test
    Sleep    5
    Close Browser
Start Test
    Login


