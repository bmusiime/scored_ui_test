Feature: Create a skill
@all and @smoke
Scenario:
  Given Am a scored user
  When I add a new skill
  Then The new skill is displayed

@all and @smoke
Scenario:
  Given Am a scored user
  When I browse to skills page
  Then A list of skills is displayed
