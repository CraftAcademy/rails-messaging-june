Feature: Sign up
  As a visitor
  In order to use the application
  I need to be able to sign up for an account

  Scenario: Access the signup page
    Given I am on the home page
    And I click "Sign up"
    Then I should be on the signup page
