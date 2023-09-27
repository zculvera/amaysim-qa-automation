*** Variables ***
# COMMON
${payment_sevendaysimplan_buy_btn}  //a[text()='Buy now']
${payment_loading_txt}              //span[text()='loading...']
${payment_new_number_txt}           //span[@data-new-number]
${payment_loading_cart_items_txt}   //span[text()='loading cart items']
${feedback_btn}                     //iframe[@title="Usabilla Feedback Button"]

# ADD ITEM DETAILS IN CART
${payment_pick_new_number_label}    (//div[@data-testid="number-transfer-switcher"]//input[@data-testid="number-option-1"]/following-sibling::span)[1]
${payment_usim_input}               //input[@value='USIM']/parent::label
${payment_checkout_btn_attribute}   data-testid="product-checkout-button"

# ENTER CUSTOMER DETAILS
${payment_new_customer_option}  data-testid="existing-user-no"
${payment_fname_input}          //input[@name="firstName"]
${payment_lname_input}          //input[@name="lastName"]
${payment_dob_input}            //input[@name="dateOfBirth"]
${payment_email_input}          //input[@name="email"]
${payment_password_input}       //input[@name="password"]
${payment_contactnumber_input}  //input[@name="contactNumber"]
${payment_address_input}        //*[text()='home or work address']/following-sibling::div//input
${payment_card_option}          //*[text()='Credit or Debit card']
${payment_paypal_option}        //*[text()='Paypal']
${payment_card_input}           //*[text()='Credit or Debit card']/preceding-sibling::div
${payment_paypal_input}         //*[text()='PayPal']/preceding-sibling::div
${payment_continue_btn}         //button[@data-continue-to-payment-button]
${payment_suggested_first_row}  (//ul/li)[1]
${payment_loading_address}             //input[@class='react-autosuggest__input']
${payment_acknowledge_tac_attribute}    name="acceptTermsAndConditions"
${payment_continue_btn_attribute}       data-continue-to-payment-button

# ENTER CREDIT CARD DETAILS
${payment_cardnumber_input}     //label[text()='card number']/following-sibling::div//div[@data-cy="cardnumber"]
${payment_expirydate_input}     //label[text()='expiry date']/following-sibling::div//div[@data-cy="expiry"]
${payment_cvc_input}            //label[text()='security code']/following-sibling::div//div[@data-cy="cvc"]
${payment_consentcheck_input}   //input[@data-id-consent-check]/..