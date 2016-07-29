Given(/^I am not logged in$/) do
  visit user_session_path
end

Then(/^I should be on the inbox page$/) do
  expect(page.current_path).to eq mailbox_inbox_path
end

Then(/^I should see the "([^"]*)" link$/) do |content|
  expect(page).to have_content content
end
