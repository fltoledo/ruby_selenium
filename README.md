# learn_automation
This is an example project to learn web automation with Selenium and other tools. 
I will use https://www.phptravels.net/ as the system under test. 


## Set up
* Install Ruby https://rubyinstaller.org/ 
* Install Bundler: gem install bundler
* Clone the repository.
* Install the gems using "bundle install" in the project root. 
* Install Chrome Driver 
  * Windows:
    * Access here https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver and download.
    * Extract the files. 
    * Modify the PATH variable adding the location of the .exe of the driver.
  * Mac: 
    * Run this command: brew install chromedriver 
* Run "cucumber" in the project root. It should open the browser and do a couple of actions. After that, an HTML report should be generated. 
