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

When(/^I browse to retro page$/) do
  $webdriver.navigate.to "http://localhost:5002/Retro"
end
