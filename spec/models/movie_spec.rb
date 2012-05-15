require 'spec_helper'

describe Movie do
  it "has a working factory" do
    build_stubbed(:movie).should be_valid
  end
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should have_many(:movie_recommendations) }
end
