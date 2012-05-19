class FriendsController < ApplicationController
  def index
    @friends = current_user.friends
  end

  def show
    @user = User.find(params[:id])
    @recommendations = @user.for_me
  end
end
