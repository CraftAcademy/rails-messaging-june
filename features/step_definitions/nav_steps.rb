Given(/^I am on the "([^"]*)" page$/) do |pagename|
  visit path(pagename)
end

Then(/^I should be on the "([^"]*)" page$/) do |pagename|
  expect(page.current_path).to eq path(pagename)
end

def path(pagename)
  case pagename
    when "signup"
      new_user_registration_path
    when "home"
      root_path
    when "signup error"
      user_registration_path
    else
      raise "Path to #{pagename} page is not specified"
  end
end
