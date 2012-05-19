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
    to_user.for_me.should == [recommendation]
  end

  it "#friends returns all other users" do
    other_users = create_list(:user, 5)
    user = create(:user)
    user.friends.should == other_users
  end

  it "shows the email for to_s" do
    user = build_stubbed(:user)
    user.to_s.should == user.email
  end
end
