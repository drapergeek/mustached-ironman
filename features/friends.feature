Feature: Interact with other users

  Scenario: View all users
    Given 5 users exist
    And I am signed in as "person@example.com"
    When I go to the home page
    And I click the "Friends" link
    When I visit my friends page
    Then I should see links to 5 users

  Scenario: View an individual user
