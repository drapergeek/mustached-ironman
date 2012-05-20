class FriendsController < ApplicationController
  def index
    @friends = current_user.friends
  end

  def show
    @user = User.find(params[:id])
    @recommendations = @user.for_me
    session[:recommendee] = @user.id
    @recommendation = MovieRecommendation.new(recommendee_id: @user.id)
  end
end
