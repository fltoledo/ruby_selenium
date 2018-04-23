
Given(/^I navigate to The RealReal homepage$/) do
	begin
		@home_page = HomePage.new 
		@signup_page = @home_page.go_to_homepage 
		fail "We are not in SignUp Page!" unless @signup_page.loaded?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end

Given (/^I am logged in the site$/) do
	begin
		@signup_page = @home_page.go_to_homepage 
		fail "We are not in SignUp Page!" unless @signup_page.loaded?
		
		email = Utils.generate_random_email 
		password = 'ValidPassword9'
		@home_page = @signup_page.signup_with(email, password)
		
		fail "We are not in signed in!" unless @home_page.loaded?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end

Then('The home page is loaded') do 
	begin
		fail "We are not in signed in!" unless @home_page.loaded?
	rescue => e
		fail "Error registering user. Error: #{e}"
	end
end
  