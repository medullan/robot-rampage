*** Settings ***
Library           Selenium2Library
Library           SauceLabs

*** Variables ***
${BROWSER}        firefox
${REMOTE_URL}     ${BLANK}
${DESIRED_CAPABILITIES}    ${BLANK}

*** Keywords ***
Setup
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox    remote_url=${REMOTE_URL}    desired_capabilities=${DESIRED_CAPABILITIES}

Teardown
    Run keyword if    '${REMOTE_URL}' != ''    Report Sauce status    ${SUITE_NAME} | ${TEST_NAME}    ${TEST_STATUS}    ${TEST_TAGS}    ${REMOTE_URL}
    Close Browser
