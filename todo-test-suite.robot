*** Settings ***
Library           Selenium2Library

*** Test Case ***
Add todo
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox
    Input Text    new-todo    My New Todo
    Press Key    id=new-todo    \\13

Remove todo
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox
    Input Text    new-todo    My New Todo
    Press Key    id=new-todo    \\13
    Mouse Over    css=div[class=view] > label
    Click Button    css=.destroy
