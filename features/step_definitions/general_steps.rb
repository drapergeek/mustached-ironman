Then "show me the page" do
  save_and_open_page
end

When /^I click the "(.*?)" link$/ do |link_name|
  click_link link_name
end

When /^I click the "(.*?)" button$/ do |button_name|
  click_button button_name
end
