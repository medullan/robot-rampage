*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Open Browser to AngularJS TODO Sample Application
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    browser=firefox
    Close Browser

Check that TODO Sample Page contains an Element name new-todo
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    browser=firefox
    Page Should Contain Element    new-todo
    Close Browser

Get Title of TODO Sample Page
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    browser=firefox
    ${TITLE}=    Get Title
    Log    ${TITLE}
    Close Browser
