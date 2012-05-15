Feature: Movie recommendations
  As a user
  I want to be able to recommend movies for my friend
  So he can watch them

  Scenario: View recommended movies
    Given the following movies recommendations exist:
      | name | vote_count |
      | Iron Man | 5 |
      | Shawshank Redepemption | 10 |
      | The Dark Knight | 12 |
    When I go to the home page
    Then I should see the following movies with links

