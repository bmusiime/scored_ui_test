require 'selenium-webdriver'

class Retro
   @@no_of_retros = 0
   attr_accessor :id, :retroDate, :skillID, :level, :skill
   def initialize(id, retroDate, skillID, level, skill)
      @id = id
      @retroDate = retroDate
      @skillID = skillID
      @level = level
      @skill = skill
   end
end

Before do
  Selenium::WebDriver::Chrome.driver_path = "/usr/local/bin/chromedriver"
  $webdriver = Selenium::WebDriver.for :chrome
end

After do
  $webdriver.quit
end

Given(/^Am a scored user$/) do
end

When(/^I browse to the home page$/) do
  $webdriver.navigate.to "http://localhost:5002/"
end

Then(/^A list of retro scores are displayed$/) do
  expect($webdriver.find_element(:id => "retro_score_table"));
end
