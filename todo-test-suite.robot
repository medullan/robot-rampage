*** Settings ***
Library           Selenium2Library

*** Test Case ***
Add todo
    Given I am on the TODO Page
    When I enter My New Todo Task
    And I Press enter
    Then The page should contain My New Todo Task

*** Keywords ***
I am on the TODO Page
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox

I enter ${task}
    Input Text    new-todo    ${task}

I Press enter
    Sleep    5s
    Press Key    id=new-todo    \\10

The page should contain ${task}
    Page Should Contain    ${task}
