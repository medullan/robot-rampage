*** Settings ***
Suite Setup       Setup
Suite Teardown    Teardown
Library           Selenium2Library
Resource          ../Keywords/TodoKeywords.robot
Resource          ../Variables/addVariable.robot
Resource          ../_commonResource.robot

*** Test Case ***
Add todo
    [Tags]    prod_only
    When I enter ${TASK}
    And I Press enter
    Then The page should contain    ${TASK}
