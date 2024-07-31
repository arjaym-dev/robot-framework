*** Settings ***
Documentation    Players Activity Test Case
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
    Sidebar Navigate    3    3    3

Select Last 7 Days Quicklinks
    Select Quicklinks    6

Select Operators Dropdown
    Select Dropdown    \#mui-dp-id-operators-input    1

Select Currencies Dropdown
    Select Dropdown    \#mui-dp-id-currencies-input    1

Select Games Dropdown
    Select Dropdown    \#mui-dp-id-games-input    1

Select Devices Dropdown
    Select Dropdown    \#mui-dp-id-devices-input    1

Request View
    Click Element    css:.mui-search-bar-wrapper .mui-search-bar-row > em:nth-child(6) .MuiButtonBase-root

*** Keywords ***
End Test
    Sleep    5
    Close Browser
Start Test
    Login


