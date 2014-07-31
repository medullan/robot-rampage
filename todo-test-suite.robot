*** Settings ***
Library           Selenium2Library

*** Variables ***
${TASK}           My New Todo Task

*** Test Case ***
Add todo
    Given I am on the TODO Page
    When I enter ${TASK}
    And I Press enter
    Then The page should contain ${TASK}

*** Keywords ***
I am on the TODO Page
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox

I enter ${task}
    Input Text    new-todo    ${task}

I Press enter
    Press Key    id=new-todo    \\10

The page should contain ${task}
    Page Should Contain    ${task}
