Feature: Signing in and out

  Scenario: Signing up using e-mail
    Given I am not signed in
    When I go to the home page
    When I click the "Sign in" link
    And I click the "Sign up" link
    When I sign up with "person@example.com" and password of "testtest"
    And I click the "Sign up" button
    Then I should see a link to "Sign out" in the menu bar


