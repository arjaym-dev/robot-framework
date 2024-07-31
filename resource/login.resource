*** Settings ***
Documentation    This resource is related to login
Library    SeleniumLibrary

*** Variables ***
${BO_URL} =    https://bo-dev.qtplatform.com/client/
${BROWSER} =    Chrome
${OPTIONS} =    add_experimental_option("detach",True)    # This option is optional since on my setup its auto close

*** Keywords ***
Login
    # Open browser then wait til login component is render
    Open Browser   ${BO_URL}    ${BROWSER}    options= ${OPTIONS}
    Maximize Browser Window
    Wait Until Element Is Visible    class:login    5

    # Target form element
    ${form} =    Get WebElement    class:login

    Input Text    id:username    qt_qaall
    Input Text    id:password    123456
    Click Element    css:.login .btn
