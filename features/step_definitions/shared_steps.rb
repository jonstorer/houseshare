Given(/^I am on (.+)$/) do |named_path|
  visit selector_for named_path
end

When(/^I follow "([^"]*)"$/) do |text|
  click_link text
end

Then(/^I should (not )?see "([^"]*)" within (.+)$/) do |negator, text, named_element|
  strategy = !!negator ? :not_to : :to
  expect(page).send strategy, have_css(selector_for(named_element), :text => text)
end
