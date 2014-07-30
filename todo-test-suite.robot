*** Settings ***
Library           Selenium2Library

*** Test Case ***
Add todo
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox
    Input Text    new-todo    My New Todo Task
    Sleep    5s
    Press Key    id=new-todo    \\13
    Page Should Contain    My New Todo Task
