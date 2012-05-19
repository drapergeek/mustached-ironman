Feature: Movie recommendations
  As a user
  I want to be able to recommend movies for my friends
  And view movies my friends have recommended for me
  So I can enjoy film

  Scenario: View recent recommended movies
    Given the following movie recommendations exist:
      | movie                        | vote_count |
      | name: Iron Man               | 5          |
      | name: Shawshank Redepemption | 10         |
      | name: The Dark Knight        | 12         |
    When I go to the home page
    Then I should see the following movies with links:
      | movie                        |
      | name: Iron Man               |
      | name: Shawshank Redepemption |
      | name: The Dark Knight        |

  Scenario: View my movie recommendations
    Given the following users exist:
      | email               |
      | geek@example.com    |
      | friend1@example.com |
      | friend2@example.com |
    Given the following movie recommendations are created:
      | movie              | vote_count | recommender         | recommendee         |
      | Iron Man           | 5          | friend1@example.com | geek@example.com    |
      | Hackers            | 6          | friend2@example.com | geek@example.com    |
      | Planet of the apes | 6          | friend2@example.com | geek@example.com    |
      | The Goonies        | 6          | geek@example.com    | friend1@example.com |
      | Harry Potter       | 6          | geek@example.com    | friend1@example.com |
    Given I am signed in as "geek@example.com"
    Then I should see the following movies recommended for me:
      | name               |
      | Iron Man           |
      | Hackers            |
      | Planet of the apes |
    Then I should not see the following movies recommended for me:
      | name         |
      | The Goonies  |
      | Harry Potter |
