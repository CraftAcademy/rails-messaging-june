Feature: User already signed in
  As a signed in user
  In order to avoid to login twice in the same session
  I would like to see a "You are already signed in." message when I visit the login page

  Background:
    Given the following users exist
      | name    | email              | password |
      | visitor | visitor@email.com  | password |

  Scenario: Reaching the sign in page when already logged in
    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    When I am on the login page
    Then I should see "You are already signed in." message
