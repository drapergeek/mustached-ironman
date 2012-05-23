Feature: Interact with other users

  Scenario: View all users
    Given 5 users exist
    And I am signed in as "person@example.com"
    When I go to the home page
    And I click the "Friends" link
    When I visit my friends page
    Then I should see links to 5 users

  Scenario: View an individual user
    Given a user "sam@example.com" has the following recommendations:
      | name        |
      | Iron Man    |
      | The Goonies |
    And I am signed in as "person@example.com"
    When I visit my friends page
    And I click the "sam@example.com" link
    Then I should see his recommendations as:
      | name        |
      | Iron Man    |
      | The Goonies |

  @imdb
  Scenario: Add a recommendation for a friend
    Given a user "sam@example.com" with 5 recommendations
    Given I am signed in as "person@example.com"
    When I visit my friends page
    And I click the "sam@example.com" link
    And I fill in "Men In Black" for a movie recommendation
    And I click the "Add recommendation" button
    Then I should see the following movies:
      | name             |
      | Men in Black     |
      | Men in Black II  |
      | Men in Black III |
    When I select "Men In Black"
    Then I should see "Men In Black" in his recommendations
    And I should see "You have added Men In Black"
