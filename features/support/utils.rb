include Selenium

class Utils
	
	# Method to generate a random email to test
	def self.generate_random_email
		random_email = rand(36**10).to_s(36) + "@example.com"
		puts "Email to be used : " +random_email
		random_email
	end

end