Then(/^I should see "([^"]*)" link$/) do |link|
    expect(page).to have_css("a", text: link)
end
