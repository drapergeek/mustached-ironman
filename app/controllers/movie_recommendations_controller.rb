class MovieRecommendationsController < ApplicationController
  def index
    if user_signed_in?
      flash = flash
      redirect_to my_recommendations_path
    end
    @recommendations = MovieRecommendation.all
  end
end
