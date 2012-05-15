Feature: Movie recommendations
  As a user
  I want to be able to recommend movies for my friend
  So he can watch them

  Scenario: View recommended movies
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

