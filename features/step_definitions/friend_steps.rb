When /^I visit my friends page$/ do
  visit friends_path
end

Then /^I should see links to (\d+) users$/ do |count|
  within ".friends" do
    page.should have_css("a", count: count)
  end
end

Given /^a user "(.*?)" has the following recommendations:$/ do |email, table|
  user = create(:user, email: email)
  table.hashes.each do |hash|
    movie = create(:movie, name: hash[:name])
    create(:movie_recommendation, recommendee: user, movie: movie)
  end
end

Then /^I should see his recommendations as:$/ do |table|
  within ".recommendations" do
    table.hashes.each do |hash|
      page.should have_link(hash[:name])
    end
  end
end


