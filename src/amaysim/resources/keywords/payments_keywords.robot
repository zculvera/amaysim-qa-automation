*** Settings ***
Resource    ${VARIABLEPATH}payments_variables.robot
Resource    ${VARIABLEPATH}common_variables.robot

*** Keywords ***
#==========================================================#
#                    GIVEN 
#==========================================================#

#==========================================================#
#                    WHEN 
#==========================================================#
User Purchases With A Declined Payment
    Click Buy Now Button
    Select "Pick A New Number"
    Select "Physical Sim"
    Click Checkout Button
    Fill Up Customer Details As New Customer
    Click Continue To Payment Button
    Fill Up Invalid Credit Card Details
    Click Place Your Order Button

#==========================================================#
#                    THEN 
#==========================================================#
Error Message Should Be Visible
    location should contain     error=true
    page should contain         Credit Card payment failed
    page should contain         Your attempt to pay via Credit Card has failed. Please ensure you have enough funds and try again or use another credit card.

#==========================================================#
#              INTERNAL KEYWORDS 
#==========================================================#
Click Buy Now Button
    click element   ${payment_sevendaysimplan_buy_btn}
    wait until element is not visible    ${payment_sevendaysimplan_buy_btn}
    wait until element is not visible    ${payment_loading_txt}
    title should be    Shopping Cart - amaysim Mobile

Select "Pick A New Number"
    click element    ${payment_pick_new_number_label}
    element should be visible   ${payment_new_number_txt}
    element text should not be  ${payment_new_number_txt}    ${EMPTY}

Select "Physical Sim"
    click element   ${payment_usim_input}
    press keys      ${payment_usim_input}   \\09

Click Checkout Button
    wait until element is visible       ${feedback_btn}
    execute javascript                  document.querySelector('[${payment_checkout_btn_attribute}]').click()
    wait until element is not visible   ${payment_loading_cart_items_txt}
    wait until page contains            already with amaysim?
    title should be                     Shopping Cart - amaysim Mobile
    
Fill Up Customer Details As New Customer
    Check New Customer
    Fill Up First Name      Test
    Fill Up Last Name       Test
    Fill Up DOB             01/01/1991
    Fill Up Email Address   zerahculvera+testamaysim@gmail.com
    Create A Password       passeord
    Fill Up Random Contact Number
    Fill Up Delivery Address    Level 6 17-19 Bridge St, SYDNEY NSW 2000
    Check If Same Billing Address Is Ticked
    Select Payment    Credit or Debit card
    Acknowledge Terms And Policies

Check New Customer
    execute javascript    document.querySelector('[${payment_new_customer_option}]').click()

Fill Up First Name    
    [Arguments]    ${fname}
    input text    ${payment_fname_input}    ${fname}

Fill Up Last Name    
    [Arguments]    ${lname}
    input text    ${payment_lname_input}    ${lname}

Fill Up DOB
    [Arguments]    ${dob}
    input text    ${payment_dob_input}    ${dob}

Fill Up Email Address
    [Arguments]    ${email}
    input text    ${payment_email_input}    ${email}

Create A Password
    [Arguments]    ${pw}
    input text    ${payment_password_input}    ${pw}

Fill Up Random Contact Number
    ${contact_number} =    generate random string    8    [NUMBERS]
    ${contact_number} =    catenate    SEPARATOR=    04    ${contact_number}
    input text    ${payment_contactnumber_input}    ${contact_number}

Fill Up Delivery Address
    [Arguments]     ${address}
    press keys      ${payment_address_input}    ${address}
    scroll element into view            ${payment_card_option}
    wait until element is not visible   ${payment_loading_address}
    wait until element is visible       ${payment_address_input}
    press keys      ${payment_address_input}    TAB
    click element   ${payment_suggested_first_row}

Check If Same Billing Address Is Ticked
    page should not contain    your residential address

Select Payment    
    [Arguments]    ${payment_option}
    run keyword if    '${payment_option}'=='Credit or Debit card'    run keywords    click element    ${payment_card_input}
    ...    AND      page should not contain     ID check required
    ...    ELSE     click element    ${payment_paypal_input}

Acknowledge Terms And Policies
    execute javascript    document.querySelector('[${payment_acknowledge_tac_attribute}]').click()

Click Continue To Payment Button
    scroll element into view    ${payment_continue_btn}
    execute javascript          document.querySelector('[${payment_continue_btn_attribute}]').click()
    wait until page contains    secure payment
    wait until element is visible    ${feedback_btn}

Fill Up Invalid Credit Card Details
    title should be         amaysim | payment
    Fill Up Card Number     4242 4242 4242 4242
    Fill Up Expiry          01/27
    Fill Up CVC             123
    Tick Agreement Checkbox

Fill Up Card Number    
    [Arguments]    ${cardnumber}
    click element   ${payment_cardnumber_input}
    press keys      ${payment_cardnumber_input}    ${cardnumber}

Fill Up Expiry   
    [Arguments]    ${expiry}
    click element   ${payment_expirydate_input}
    press keys      ${payment_expirydate_input}    ${expiry}

Fill Up CVC
    [Arguments]    ${cvc}
    click element   ${payment_cvc_input}
    press keys      ${payment_cvc_input}    ${cvc}

Tick Agreement Checkbox
    click element    ${payment_consentcheck_input}

Click Place Your Order Button
    click element    ${submit_btn}
    wait until element is not visible   ${payment_loading_cart_items_txt}