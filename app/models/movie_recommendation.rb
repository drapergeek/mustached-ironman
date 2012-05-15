class MovieRecommendation < ActiveRecord::Base
  belongs_to :movie
  validates :movie, presence: true
  #belongs_to :recommending_user_id
  # attr_accessible :title, :body
end
