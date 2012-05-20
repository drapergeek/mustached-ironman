class MovieRecommendation < ActiveRecord::Base
  belongs_to :movie
  belongs_to :recommendee, class_name: "User"
  belongs_to :recommender, class_name: "User"
  validates :movie, presence: true
  attr_accessible :movie_name, :movie_id, :recommendee_id, :movie

  delegate :name, to: :movie, allow_nil: true

  before_validation :assign_movie
  attr_writer :movie_name

  def movie_name
    self.name
  end

  private
  def assign_movie
    if @movie_name
      self.movie = Movie.find_or_create_by_name(@movie_name)
    end
  end
end
