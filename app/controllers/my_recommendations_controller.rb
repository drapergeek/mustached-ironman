class MyRecommendationsController < ApplicationController
  def index
    @recommendations_for_me = current_user.for_me
  end
end
