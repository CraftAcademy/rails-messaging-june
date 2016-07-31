Feature: Sign up
  As a visitor
  In order to use the application
  I need to be able to sign up for an account

  Background:
    Given the following users exist
      | name     | email               | password  |
      | visitor2 | visitor2@email.com  | password2 |

  Scenario: Access the signup page
    Given I am on the "home" page
    And I click "Sign up"
    Then I should be on the "signup" page

  Scenario: Create a user account
    Given I am on the "signup" page
    And I fill in "Name" with "visitor"
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click button "Create"
    Then I should be on the "home" page
    And I should see "Welcome! You have signed up successfully."

  Scenario: Create a user account when user already exists
    Given I am on the signup page
    And I fill in "Name" with "visitor2"
    And I fill in "Email" with "visitor2@email.com"
    And I fill in "Password" with "password2"
    And I fill in "Password confirmation" with "password2"
    And I click button "Create"
    Then I should be on the signup error page
    And I should see "Name has already been taken"
    And I should see "Email has already been taken"

  Scenario: Create a user account when input fields are blank
    Given I am on the signup page
    And I fill in "Name" with ""
    And I fill in "Email" with ""
    And I fill in "Password" with ""
    And I fill in "Password confirmation" with ""
    And I click button "Create"
    Then I should be on the signup error page
    And I should see "Email can't be blank"
    And I should see "Password can't be blank"
    And I should see "Name can't be blank"
