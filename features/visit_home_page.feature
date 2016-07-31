Feature: Viewer visits the home page

  In order to start using the mailboxer app
  As a Viewer
  I want to confirm this is the home page of the CraftAcademy Mailboxer app

  Background:
    Given I am on the home page

  Scenario: View the app home page
    Then I should see "CA Mailboxer"
    And I should see "Craft Academy Mailboxer"

  Scenario: See the beginning of the login and signup processes on the home page
    Then I should see "Login" link
    And I should see "Sign up" link
