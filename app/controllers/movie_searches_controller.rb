class MovieSearchesController < ApplicationController
  def new
    movie_name = CGI.escape params[:search][:movie_name]
    search_string = "http://www.imdbapi.com/?t=#{movie_name}"
    response.body = HTTParty.get(search_string)
    json_response = JSON.parse(response.body)
    if json_response["response"] == "False"
      Raise "No Movie"
    end
    @movie = MyMovie.new(json_response)
  end

  class MyMovie
    attr_accessor :title, :poster, :id

    def initialize(json)
      @title = json["Title"]
      @poster = json["Poster"]
      @id = json["imdbID"]
    end
  end
end
