Given "I am not signed in" do

end

When /^I sign up with "(.*?)" and password of "(.*?)"$/ do |email, password|
  fill_in "user_email", with: email
  fill_in "user_password", with: password
  fill_in "user_password_confirmation", with: password
end

Then /^I should see a link to "(.*?)" in the menu bar$/ do |link_text|
  within ".navbar" do
    page.should have_link(link_text)
  end
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

Given /^I am signed in as "(.*?)"$/ do |email|
  user = User.find_by_email(email) || create(:user, email: email)
  visit root_url
  click_link "Sign in"
  fill_in "user_email", with: user.email
  fill_in "user_password", with: "testtest"
  click_button "Sign in"
end

