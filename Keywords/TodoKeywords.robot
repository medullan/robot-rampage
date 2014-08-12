*** Settings ***
Library           Selenium2Library

*** Keywords ***
I enter ${task}
    #I am on the TODO Page
    #Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox
    Input Text    new-todo    ${task}

I Press enter
    Press Key    id=new-todo    \\10

The page should contain
    [Arguments]    ${task}
    Page Should Contain    ${task}
