class CreateMovieRecommendations < ActiveRecord::Migration
  def change
    create_table :movie_recommendations do |t|
      t.references :movie
      t.references :recommending_user
      t.integer :vote_count, default: 0

      t.timestamps
    end
    add_index :movie_recommendations, :movie_id
    add_index :movie_recommendations, :recommending_user_id
  end
end
