*** Settings ***
Documentation    This is resource file for all related mui quicklinks
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Select Quicklinks
    # This keyword contains 1 arguments
    # quicklinkItemLocator e.g last 1 hour, last 3 hour, last 12 hours, last 24 hours, today, yesterday, last 7 days, current month, prev month
    # Arguments only accept number indexing such as 1,2,3,4,5,6,7, 8, 9
    [Arguments]    ${quicklinkItemLocator}=
    Wait Until Element Is Visible    class:mui-search-bar-wrapper
    Sleep    1
    Click Element    css:.date-quick-links button:nth-child(${quicklinkItemLocator})