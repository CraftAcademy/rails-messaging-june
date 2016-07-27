Feature: Sign up
  As a visitor
  In order to use the application
  I need to be able to sign up for an account

  Scenario: Access the signup page
    Given I am on the home page
    And I click "Sign up"
    Then I should be on the signup page

  Scenario: Create a user account
    Given I am on the signup page
    And I fill in "Name" with "visitor"
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click button "Create"
    Then I should be on the home page
    And I should see "Welcome! You have signed up successfully."
