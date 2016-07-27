Feature: Login
  As a user
  To be able to access my account
  I have to be able to login

  Background:
    Given the following users exist
      | name    | email              | password |
      | visitor | visitor@email.com  | password |

  Scenario: Access the login page
    Given I am on the home page
    And I click "Login"
    Then I should be on the login page

  Scenario: Log in a user
    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    Then I should be on the home page
    And I should see "Signed in successfully."

  Scenario: Log in with wrong email
    Given I am on the login page
    And I fill in "Email" with "wrong@mail.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    Then I should be on the login page
    And I should see "Invalid email or password."

  Scenario: Log in with wrong password
    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "wrongpassword"
    And I click button "Log in"
    Then I should be on the login page
    And I should see "Invalid email or password."

  Scenario: Log in with no account
    Given I am on the login page
    And I fill in "Email" with ""
    And I fill in "Password" with ""
    And I click button "Log in"
    Then I should be on the login page
    And I should see "Invalid email or password."
