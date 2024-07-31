*** Settings ***
Documentation    This is resource file for all related mui dropdown
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Select Dropdown
    # This keywords only has 2 arguments
    # dropdownParentLocator - this is the parent dropdown attribute could be class, id
    # dropdownItemLocator - this is the selected items on the dropdown e.g index of list 1,2,3,4,5

    [Arguments]    ${dropdownParentLocator}=    ${dropdownItemLocator}=

    Wait Until Element Is Visible    class:mui-search-bar-wrapper

    Sleep    1    # Wait till dropdown fully render
    Click Element    css:${dropdownParentLocator} .MuiFormControl-root .MuiInputBase-root

    Wait Until Element Is Visible    class:base-Popper-root
    Sleep    1    # Wait till the dropdown item list fully render
    Click Element    css:.base-Popper-root div[data-test-id="virtuoso-item-list"] div:nth-child(${dropdownItemLocator})
