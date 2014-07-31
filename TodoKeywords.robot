*** Settings ***
Library           Selenium2Library

*** Keywords ***
I am on the TODO Page
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox

I enter ${task}
    Input Text    new-todo    ${task}

I Press enter
    Sleep    5s
    Press Key    id=new-todo    \\13

The page should contain ${task}
    Page Should Contain    ${task}
