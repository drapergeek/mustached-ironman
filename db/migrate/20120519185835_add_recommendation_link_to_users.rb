class AddRecommendationLinkToUsers < ActiveRecord::Migration
  def change
    add_column :movie_recommendations, :recommendee_id, :integer
    add_column :movie_recommendations, :recommender_id, :integer
  end
end
