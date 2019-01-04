require 'selenium-webdriver'

class Skill
   @@no_of_skills = 0
   attr_accessor :id, :title, :description
   def initialize(id, title, description)
      @id = id
      @title = title
      @description = description
   end
end

#skill Data
$skill1 = Skill.new("1", "Skill 1", "testing skill one")
$skill2 = Skill.new("2", "Skill 2", "testing skill two")
$skill3 = Skill.new("3", "Skill 3", "testing skill three")

def add_a_skill((newskill), driver)
  driver.navigate.to "http://localhost:5002/Skill/Create"

  driver.find_element(:id, 'Title').send_keys(newskill.title)
  driver.find_element(:id, 'Description').send_keys(newskill.description)
  driver.find_element(:id, 'Create').click

  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  wait.until { driver.find_element(:id => "SearchString") }
end

def verify_a_skill(newskill)
  skilltitle= newskill.title
  _skilltitle = $webdriver.find_element(:xpath => "//*/tbody/tr/td[1][contains(text(),skilltitle)]")
  expect(_skilltitle.text==skilltitle)
end

def check_success_message()
  _message = $webdriver.find_element(:id => "SearchString")
  expect(_message.text==$message)
end


When(/^I add a new skill$/) do
  add_a_skill(($skill1), $webdriver)
end

Then(/^The new skill is displayed$/) do
    verify_a_skill($skill1)
end

When(/^I browse to skills page$/) do
  $webdriver.navigate.to "http://localhost:5002/Skill"
end

Then(/^A list of skills is displayed$/) do
  expect($webdriver.find_element(:id => "skills_table"));
end
