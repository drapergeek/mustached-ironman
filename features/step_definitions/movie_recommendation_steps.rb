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

