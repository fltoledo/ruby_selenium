require_relative 'page_base'

class SigninPage < PageBase
  
  #To-Do: adjust locators
  
  EMAIL_FIELD = { css: '.modal2-background .sign-up-body__form-field #user_email'}
  PASSWORD_FIELD= { css: '.modal2-background .sign-up-body__form-field #user_password'}
 
  SIGNIN_BUTTON = { css: 'div.modal2-background div.sign-up-actions > button'}
  SWITCH_TO_SIGNUP = { css: 'body > div.modal2-background > div > div > div.modal-body > div.sign-in-sign-up-footer > div:nth-child(1) > span'}
  ERROR_MESSAGE = { css: 'div.js-email-field.sign-up-body__form-field.form-field__input--invalid > label'}
  
  
  
  def switch_to_signup
    $browser.find_element(SWITCH_TO_SIGNUP).click
    @signup_page = SignUpPage.new 
  end





  
  
end