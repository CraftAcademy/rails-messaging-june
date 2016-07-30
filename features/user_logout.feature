Feature: Account Logout
  As a user
  in order to protect my account
  I would like to be able to log out

  Background:
    Given the following users exist
      | name    | email              | password |
      | visitor | visitor@email.com  | password |

  Scenario: Log out from an account
    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    Then I should be on the home page
    And I should see the "Logout" link
    When I click on "Logout"
    Then I should be on the home page
    And I should see "Signed out successfully."
