Given(/^there's a question title "([^"]*)"$/) do |title|
  @question = FactoryGirl.create(:question, title: title)
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see the "([^"]*)" question$/) do |title|
  @question = Question.find_by_title(title)

  expect(page).to have_content(@question.title)
end
