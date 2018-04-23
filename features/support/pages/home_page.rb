require_relative 'page_base'

class HomePage < PageBase

    HOMEPAGE_URL = "https://staging.therealreal.com"
    
   

    def go_to_homepage 
        $browser.navigate.to HOMEPAGE_URL
        @page = SignupPage.new 
    end 

    

    def loaded?
        $browser.title.include?('The RealReal')
    end
     

  end