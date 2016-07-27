Given(/^the following users exist$/) do |table|
  table.hashes.each do |user|
    User.create(name: user[:name],
                email: user[:email],
                password: user[:password])
  end
end

Given(/^I am on the home page$/) do
  visit root_path
end

Given(/^I click "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^I should be on the login page$/) do
  expect(page.current_path).to eq '/users/sign_in'
end

Given(/^I am on the login page$/) do
  visit '/users/sign_in'
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

#The button is redirecting to a wrong page
Given(/^I click button "([^"]*)"$/) do |button|
  click_link_or_button button
end

#This is the path that is supposed to be here
Then(/^I should be on the home page$/) do
  expect(page.current_path).to eq root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
