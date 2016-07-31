Given(/^I am on the "([^"]*)" page$/) do |pagename|
  if pagename == "signup"
    path = new_user_registration_path
  elsif pagename == "home"
    path = root_path
  end
  visit path
end

Then(/^I should be on the "([^"]*)" page$/) do |pagename|
  if pagename == "signup"
    expect(page.current_path).to eq new_user_registration_path
  elsif pagename == "home"
    expect(page.current_path).to eq root_path
  end
end
