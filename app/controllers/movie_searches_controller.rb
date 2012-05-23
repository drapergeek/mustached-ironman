class MovieSearchesController < ApplicationController
  def new
    @movies = Imdb::Search.new(params[:search][:movie_name]).movies
  end
end
