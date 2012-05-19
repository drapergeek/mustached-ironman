class MovieRecommendation < ActiveRecord::Base
  belongs_to :movie
  belongs_to :recommendee, class_name: "User"
  belongs_to :recommender, class_name: "User"
  validates :movie, presence: true

  delegate :name, to: :movie
end
