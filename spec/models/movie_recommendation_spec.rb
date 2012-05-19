require 'spec_helper'

describe MovieRecommendation do
  it "has a working factory" do
    build_stubbed(:movie_recommendation).should be_valid
  end
  it { should belong_to(:movie) }
  it { should validate_presence_of(:movie) }

  it { should belong_to(:recommendee).class_name("User") }
  it { should belong_to(:recommender).class_name("User") }
end
