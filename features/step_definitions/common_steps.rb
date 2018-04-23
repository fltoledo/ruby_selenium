Given(/^a new '(.*)' browser$/) do |browserName| 
	begin
		case browserName
			when "firefox"
				$browser = Selenium::WebDriver.for :firefox
			when "ie"
				$browser = Selenium::WebDriver.for :ie
			when "edge"
				$browser = Selenium::WebDriver.for :edge
			else
				$browser = Selenium::WebDriver.for :chrome
		end
		#$browser.window.maximize 
	rescue => e
		fail "Error opening browser. Error : #{e}"
	end
end
