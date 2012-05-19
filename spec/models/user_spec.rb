require 'spec_helper'

describe User do
  it { should have_many(:for_me) }
  it { should have_many(:from_me) }

  it "has_many recommendations to and from other users" do
    from_user = create(:user)
    to_user = create(:user)
    recommendation = create(:movie_recommendation,
                                         recommender: from_user,
                                         recommendee: to_user)
    from_user.from_me.should == [recommendation]
    to_user.to_me.should == [recommendation]
  end
end
