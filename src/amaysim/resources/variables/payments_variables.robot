*** Variables ***
# TODO: rename to create sim plan
${payment_sevendaysimplan_buy_btn}    //a[text()='Buy now']
${payment_loading_txt}      //span[text()='loading...']
${payment_pick_new_number}  (//div[@data-testid="number-transfer-switcher"]//input[@data-testid="number-option-1"]/following-sibling::span)[1]
${payment_new_number}       //span[@data-new-number]
${payment_usim_input}       //input[@value='USIM']/parent::label
${payment_checkout_btn}     data-testid="product-checkout-button"
${payment_loading_cart_items_txt}      //span[text()='loading...']
${feedback_btn}      //iframe[@title="Usabilla Feedback Button"]

${payment_new_customer_option}    data-testid="existing-user-no"
${payment_fname_input}    //input[@name="firstName"]
${payment_lname_input}    //input[@name="lastName"]
${payment_dob_input}    //input[@name="dateOfBirth"]
${payment_email_input}    //input[@name="email"]
${payment_password_input}    //input[@name="password"]
${payment_address_input}    //*[text()='home or work address']/following-sibling::div//input
${payment_contactnumber_input}    //input[@name="contactNumber"]
${payment_card_input}    //*[text()='Credit or Debit card']/preceding-sibling::div
${payment_paypal_input}    //*[text()='PayPal']/preceding-sibling::div
${payment_acknowledge_tac}    name="acceptTermsAndConditions"
${payment_continue_btn}    //button[@data-continue-to-payment-button]