Given "I am not signed in" do

end

When /^I sign up with "(.*?)" and password of "(.*?)"$/ do |email, password|
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  fill_in "user_password_confirmation", with: password
end

When /^I click the "(.*?)" button$/ do |button_name|
  click_button button_name
end

Then /^I should see a link to "(.*?)" in the menu bar$/ do |link_text|
  within ".navbar" do
    page.should have_link(link_text)
  end
end

When /^I click the "(.*?)" link$/ do |link_name|
  click_link link_name
end

Then /^I should see the "(.*?)" link in the menu bar$/ do |link_name|
  within ".navbar" do
    page.should have_link link_name
  end
end

When /^I fill in the sign in form with "(.*?)" and "(.*?)"$/ do |email, password|
  fill_in "user_email", with: email
  fill_in "user_password", with: password
end
