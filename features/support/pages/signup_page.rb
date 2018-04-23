require_relative 'page_base'

class SignupPage < PageBase
  
  
  EMAIL_FIELD = { css: '.modal2-background .sign-up-body__form-field #user_email'}
  PASSWORD_FIELD= { css: '.modal2-background .sign-up-body__form-field #user_password'}
  CONFIRM_PASSWORD_FIELD = { css: '.modal2-background .sign-up-body__form-field #user_password_confirmation'}
  SIGNUP_BUTTON = { css: 'div.modal2-background div.sign-up-actions > button'}
  SWITCH_TO_SIGNIN = { css: 'body > div.modal2-background > div > div > div.modal-body > div.sign-in-sign-up-footer > div:nth-child(1) > span'}
  ERROR_MESSAGE = { css: 'div.js-email-field.sign-up-body__form-field.form-field__input--invalid > label'}
  
  
  def switch_to_signin
    $browser.find_element(SWITCH_TO_SIGNIN).click
    @signin_page = SigninPage.new 
  end

  def signup_with(email, password)
    $browser.find_element(EMAIL_FIELD).send_keys email 
    $browser.find_element(PASSWORD_FIELD).send_keys password 
    $browser.find_element(CONFIRM_PASSWORD_FIELD).send_keys password 
    $browser.find_element(SIGNUP_BUTTON).click
    @page = HomePage.new
  end
    
  def loaded?
    return ( $browser.find_element(EMAIL_FIELD).displayed? and
             $browser.find_element(PASSWORD_FIELD).displayed? and
             $browser.find_element(CONFIRM_PASSWORD_FIELD).displayed? and
             $browser.find_element(SIGNUP_BUTTON).displayed? and
             $browser.find_element(SWITCH_TO_SIGNIN).displayed? )
  end

  def validate_error_message(message)
    $browser.find_element(ERROR_MESSAGE).text.include?(message)
  end
  
end