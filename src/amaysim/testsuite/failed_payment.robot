*** Settings ***
Documentation   This is a test for failed payment of a user purchasing 7 day plan.
Resource    ${GLOBAL_SETUP}
Resource    ${KEYWORDPATH}payments_keywords.robot
Resource    ${KEYWORDPATH}homepage_keywords.robot
Suite Setup     Setup Chrome Driver
Suite Teardown  capture page screenshot

# runner/run_in_prod.sh feature-failed-payment
*** Test Cases ***
User Receives Error Message For Declined Credit Card Payment
    [Tags]    smoke    feature-payments    feature-failed-payment
    Given User Is In Homepage
    And User Goes To Sim Plans
    And User Selects Seven Day Sim Plans
    When User Purchases With A Declined Payment
    # Then Error Message Should Be Visible 
        # CURRENT ISSUE: the next page is consistently "Our shopping cart isn't working right now...". For checking in network tab if bad request

    # INSTRUCTIONS TO APPLICANT:
    # Test data that you can use:
    # • Pick a new number when asked to choose between transferring existing number and new number
    # • Choose Physical sim over eSim
    # • Opt to purchase as a new customer, please use “Test” as your first and last names. Feel free to make
    # up any random email address and Date of birth etc.
    # • Contact number: any random 10-digit number starting with “04”.
    # • Address: Level 6, 17-19 Bridge St, SYDNEY NSW 2000
    # • Credit card that is expected to be declined:
    # o Card number: 4242 4242 4242 4242
    # o Expiry 01/27
    # o CVV: 123
    # Assume that these tests will eventually need to run against various test environments (each environment has a
    # different URL. The URL provided above is that of the Production environment).