Feature: Admin Log In
  Scenario: Successful log in
    Given I navigate on the log in page
    When I enter correct username and password
    Then I should be redirected to admin page

  Scenario: Log in failed
    Given I navigate on the log in page
    When I enter incorrect username and password
    Then I should see error message