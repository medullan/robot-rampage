*** Settings ***
Library           Selenium2Library
Library           SauceLabs

*** Variables ***
${BROWSER}        firefox
${REMOTE_URL}     http://kedmond:36f364b0-b73a-4df3-b1af-bf7564d321c3@ondemand.saucelabs.com:80/wd/hub
${DESIRED_CAPABILITIES}    platform:OS X 10.9,browserName:safari,version:7
${SUITE_NAME}     ${EMPTY}
${TEST_NAME}      ${EMPTY}
${TEST_TAGS}      ${EMPTY}

*** Keywords ***
Setup
    Open Browser    http://todomvc.com/architecture-examples/angularjs-perf/#/    firefox    remote_url=${REMOTE_URL}    desired_capabilities=${DESIRED_CAPABILITIES}

Teardown
    Run keyword if    '${REMOTE_URL}' != ''    Report Sauce status    ${SUITE_NAME} | ${TEST_NAME}    ${SUITE_STATUS}    ${TEST_TAGS}    ${REMOTE_URL}
    Close Browser
