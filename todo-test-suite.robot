*** Settings ***
Library           Selenium2Library

*** Test Case ***
Add Mutiple Todos
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox
    @{TODO_LIST}    Create List    Go to the beach    Get a dip    Relax
    : FOR    ${TODO}    IN    @{TODO_LIST}
    \    Input Text    id=new-todo    ${TODO}
    \    Press Key    id=new-todo    \\10
