class MovieRecommendation < ActiveRecord::Base
  belongs_to :movie
  validates :movie, presence: true

  delegate :name, to: :movie
end
