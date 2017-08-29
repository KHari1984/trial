*** Settings ***
Documentation  Apps Test Suite
Resource  ../Resources/Library.txt

Test Setup  Open Apps  ${Env}
Test Teardown  Close All Browsers

# Copy/paste the line below into Terminal to execute:
# pybot -v username:188961 -v password:prodtest -v url:https://apps.asrt.org/Default.aspx -v browser:gc -v Env:Live -d results tests\C*.robot
# pybot -v username:asrtshopper -v password:asrt -v url:https://beta.apps.asrt.org/Default.aspx -v browser:gc -v Env:Beta -d results tests\C*.robot

*** Variables ***
${username}
${password}

*** Test Cases ***
Asrt Smoke
    [Documentation]  This is a Basic Smoke test
    [Tags]  Smoke  login
    Given I have logged in Apps  ${username}  ${password}
    And I Click My ASRT
    And I verify Give Now
    And I verify My CE Record
    And I verify My Learning
    #And I verify I can Upload certificate
    When I Choose to log out
    #Then I Am Back to Home page





