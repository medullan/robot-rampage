*** Settings ***
Library           Selenium2Library
Resource          ../Keywords/TodoKeywords.robot
Resource          ../Variables/addVariable.robot

*** Test Case ***
Add todo
    Given I am on the TODO Page
    When I enter ${TASK}
    And I Press enter
    Then The page should contain    ${TASK}
