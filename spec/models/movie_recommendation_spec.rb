require 'spec_helper'

describe MovieRecommendation do
  it "has a working factory" do
    build_stubbed(:movie_recommendation).should be_valid
  end
  it { should belong_to(:movie) }
  it { should validate_presence_of(:movie) }
end
