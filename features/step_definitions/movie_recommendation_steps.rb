When /^I go to the home page$/ do
  visit root_url
end

Then /^I should see the following movies with links:$/ do |table|
  within ".recommendations" do
    table.rows.each do |movie|
      page.should have_css ".recommendation"
    end
  end
end

Given /^the following movie recommendations are created:$/ do |table|
  table.hashes.each do |hash|
    recommendation = build(:movie_recommendation)
    recommendation.movie = create(:movie, name: hash[:movie])
    recommendation.recommender = User.find_by_email(hash[:recommender])
    recommendation.recommendee = User.find_by_email(hash[:recommendee])
    recommendation.save
  end
end

Then /^I should see the following movies recommended for me:$/ do |table|
  within ".my_recommendations" do
    table.hashes.each do |movie|
      page.should have_link movie[:name]
    end
  end
end

Then /^I should not see the following movies recommended for me:$/ do |table|
  within ".my_recommendations" do
    table.hashes.each do |movie|
      page.should_not have_content(movie[:name])
    end
  end
end
