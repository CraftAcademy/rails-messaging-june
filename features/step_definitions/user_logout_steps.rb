Then(/^I should see the "([^"]*)" link$/) do |content|
  expect(page).to have_content content
end
