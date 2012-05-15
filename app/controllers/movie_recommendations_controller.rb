class MovieRecommendationsController < ApplicationController
  def index
    @recommendations = MovieRecommendation.all
  end
end
