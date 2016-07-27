Given(/^the following users exist$/) do |table|
  table.hashes.each do |user|
    User.create(email: user[:email],
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
