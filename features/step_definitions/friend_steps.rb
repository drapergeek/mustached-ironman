When /^I visit my friends page$/ do
  visit friends_path
end

Then /^I should see links to (\d+) users$/ do |count|
  within ".friends" do
    page.should have_css("a", count: count)
  end
end
