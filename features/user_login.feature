Feature: Login
  As a user
  to be able to access my account
  I have to be able to login

  Background:
    Given the following users exist
      | Email              | Password |
      | visitor@email.com  | password |

  Scenario: Access the login page
    Given I am on the home page
    And I click "Login"
    Then I should be on the login page

  Scenario: Log in a user
    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    Then show me the page
    Then I should be on the home page
    And I should see "Signed in successfully."
