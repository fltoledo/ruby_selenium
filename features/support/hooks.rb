

AfterStep do |scenario|
	encoded_img = $browser.screenshot_as(:base64)
	embed("data:image/png;base64,#{encoded_img}",'image/png')
end

Before do
  # We can use this method to open the browser too
end

After do |scenario|
	
	if scenario.failed?
		encoded_img = $browser.screenshot_as(:base64)
		embed("data:image/png;base64,#{encoded_img}",'image/png')
	end

end

