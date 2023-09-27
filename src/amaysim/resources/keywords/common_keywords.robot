*** Settings ***
Resource    ${VARIABLEPATH}common_variables.robot

*** Keywords ***
Navigate To URL
    [Arguments]    ${URL}
    open browser    ${URL}    ${BROWSER}    options=add_experimental_option("detach", True)