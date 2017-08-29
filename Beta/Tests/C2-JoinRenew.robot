*** Settings ***
Documentation  Apps Test Suite
Resource  ../Resources/Library.txt
Library  DateTime

Test Setup  Open Apps  ${Env}
Test Teardown  Close All Browsers


*** Variables ***
${username}
${password}

*** Test Cases ***
Join and Renew
    [Documentation]  This is a Regression Test test
    [Tags]  joinRenew Regression
    Given I have logged in Apps  ${username}  ${password}
    And I Click Renew Memership
    And I verify Give Now
    And I verify Directed Learning
    When I Choose to log out
    Then I Am Back to Home page

