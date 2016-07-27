Then(/^I should be on the signup page$/) do
  expect(page.current_path).to eq new_user_registration_path
end
