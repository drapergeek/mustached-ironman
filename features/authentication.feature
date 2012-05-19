Feature: Signing in and out

  Scenario: Signing up using e-mail
    Given I am not signed in
    When I go to the home page
    When I click the "Sign in" link
    And I click the "Sign up" link
    When I sign up with "person@example.com" and password of "testtest"
    And I click the "Sign up" button
    Then I should see a link to "Sign out" in the menu bar
    When I click the "Sign out" link
    Then I should see the "Sign in" link in the menu bar

  Scenario: Sign in a user who is already registered
    Given a user exists with an email of "sam@example.com"
    When I go to the home page
    When I click the "Sign in" link
    When I fill in the sign in form with "sam@example.com" and "testtest"
    And I click the "Sign in" button
    Then I should see a link to "Sign out" in the menu bar

