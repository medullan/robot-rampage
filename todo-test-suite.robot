*** Settings ***
Suite Setup       Setup
Suite Teardown    Teardown
Library           Selenium2Library

*** Test Case ***
Add todo
    When I enter My New Todo Task
    And I Press enter
    Then The page should contain My New Todo Task

Add another todo
    When I enter My New Todo Task
    And I Press enter
    Then The page should contain My New Todo Task

*** Keywords ***
I am on the TODO Page
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox

I enter My New Todo Task
    Input Text    new-todo    ${task}

I Press enter
    Sleep    5s
    Press Key    id=new-todo    \\10

The page should contain My New Todo Task
    Page Should Contain    ${task}

Setup
    I am on the TODO Page

Teardown
    Close Browser
