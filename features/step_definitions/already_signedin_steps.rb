Given(/^I am logged in as "([^"]*)"$/) do |name|
  name
end

Then(/^I should see "([^"]*)" message$/) do |content|
  expect(page).to have_content content
end
