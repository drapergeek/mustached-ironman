require 'spec_helper'

describe MovieRecommendation do
  it "has a working factory" do
    build_stubbed(:movie_recommendation).should be_valid
  end
  it { should belong_to(:movie) }
  it { should validate_presence_of(:movie) }

  it { should belong_to(:recommendee).class_name("User") }
  it { should belong_to(:recommender).class_name("User") }

  context "given a movie name" do
    it "will set the movie to an existing movie if possible" do
      existing_movie = create(:movie, name: "Existing Movie")
      lambda{
        movie_recommendation = create(:movie_recommendation, movie_name: "Existing Movie")
        movie_recommendation.movie.should == existing_movie
      }.should_not change(Movie, :count)
    end

    it "will create a new movie if one does not exist" do
      lambda{
        recommendation = create(:movie_recommendation, movie_name: "New Movie")
        recommendation.movie.should == Movie.find_by_name("New Movie")
      }.should change(Movie, :count).by(1)
    end
  end
end
