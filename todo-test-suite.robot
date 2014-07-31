*** Settings ***
Library           Selenium2Library
Resource          TodoKeywords.robot

*** Test Case ***
Add todo
    Given I am on the TODO Page
    When I enter My New Todo Task
    And I Press enter
    Then The page should contain My New Todo Task
