*** Settings ***
Library           Selenium2Library

*** Test Case ***
Add todo
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox
    Input Text    id=new-todo    My New Todo
    Press Key    id=new-todo    \\10
    Page Should Contain    My New Todo

Remove todo
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox
    Input Text    id=new-todo    My New Todo
    Press Key    id=new-todo    \\10
    Mouse Over    css=div[class=view] > label
    Click Button    css=.destroy
