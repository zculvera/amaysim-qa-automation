*** Settings ***
Documentation   This is a test if a failed payment of a user purchasing 7 day plan is consistently returning an error.
Resource    ${GLOBAL_SETUP}
Resource    ${KEYWORDPATH}payments_keywords.robot
Resource    ${KEYWORDPATH}homepage_keywords.robot
Suite Setup     run keywords    Setup Chrome Driver    
...   AND    set selenium speed    0.75s
Suite Teardown  run keywords    capture page screenshot
...    AND    run keyword if all tests passed    close all browsers

*** Test Cases ***
User Consistently Receives Error Message For Declined Credit Card Payment
    [Tags]    payments    failed-payments
    repeat keyword    5 times    User Receives Error Message For Declined Credit Card Payment

*** Keywords ***
User Receives Error Message For Declined Credit Card Payment
    Given User Is In Homepage
    And User Goes To Sim Plans
    And User Selects Seven Day Sim Plans
    When User Purchases With A Declined Payment
    Then Error Message Should Be Visible