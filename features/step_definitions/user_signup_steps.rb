Then(/^I should be on the signup page$/) do
  expect(page.current_path).to eq new_user_registration_path
end

Given(/^I am on the signup page$/) do
  visit new_user_registration_path
end

Then(/^I should be on the signup error page$/) do
  expect(page.current_path).to eq user_registration_path
end
