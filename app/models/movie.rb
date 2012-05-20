class Movie < ActiveRecord::Base
  attr_accessible :description, :name
  validates :name, presence: true
  has_many :movie_recommendations
end
