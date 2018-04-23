Feature: New Checkout Flow

	Background:
		Given a new 'chrome' browser
	
	# POSITIVE

	
	Scenario: Search and purchase with Amex Credit Card [US$] Phoenix
		Given I am singed in 
		And I added one product to the bag 
		When I decide to purchase what I have in the bag 
		And I complete the shipping options 
		And I complete the delivery options 
		And I complete the payment options with "Amex Credit Card in U$S"
		And I click place order
        Then I see the Thank you page 

	# NEGATIVE
	
	