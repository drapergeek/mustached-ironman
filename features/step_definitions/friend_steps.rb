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
    create(:movie_recommendation, recommendee: user, movie_name: hash[:name])
  end
end

Then /^I should see his recommendations as:$/ do |table|
  within ".recommendations" do
    table.hashes.each do |hash|
      page.should have_link(hash[:name])
    end
  end
end

Given /^a user "(.*?)" with (\d+) recommendations$/ do |email, number|
  user = create(:user, email:email)
  number.to_i.times do
    create(:movie_recommendation, recommendee: user)
  end
end

When /^I fill in "(.*?)" for a movie recommendation$/ do |movie_name|
  fill_in "name", with: movie_name
end

Then /^I should see "(.*?)" in his recommendations$/ do |link_name|
  within ".recommendations" do
    page.should have_link link_name
  end
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content text
end

Then /^I should see the following movies:$/ do |table|
  table.hashes.each do |hash|
    page.should have_content hash[:name]
  end
end

When "I select Men In Black" do

end
