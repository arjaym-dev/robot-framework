*** Settings ***
Documentation    This related to navigating to different content of pages
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Sidebar Navigate
    # This keyword contains 3 arguments
    # navLocator e.g Dashboard | Support | Reports | Wallets indexing upon click sub nav will open
    # subNavListLocator e.g under supports we have, gamerounds, transactions, games, players
    # subNavListItemCLocator e.g index that determine what content to display gamerounds page, ngr-providers page
    [Arguments]    ${navLocator}=3    ${subNavListLocator}=3    ${subNavListItemLocator}=1
    Wait Until Element Is Visible    class:navlist    5
    Click Element    css:.navlist > div:nth-child(${navLocator}) .btn-menu-main    # This will open the sub nav

    Sleep    1    # We need this because we're waiting for the .show class to render
    Click Element    css:.navlist div:nth-child(${subNavListLocator}) .collapse.show .MuiList-root div:nth-child(${subNavListItemLocator})