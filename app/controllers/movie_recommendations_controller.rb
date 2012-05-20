class MovieRecommendationsController < ApplicationController
  skip_before_filter :authenticate_user!, only: :index
  def index
    if user_signed_in?
      flash = flash
      redirect_to my_recommendations_path
    end
    @recommendations = MovieRecommendation.all
  end

  def create
    @recommendation = current_user.from_me.new(params[:movie_recommendation])
    if @recommendation.save
      redirect_to friend_path(@recommendation.recommendee), notice: "You have added #{@recommendation.name}"
    end
  end
end
