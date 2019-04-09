Given /^I have articles titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    user = User.first
    user.articles.create!(title: title, body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ")
  end
end

Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |email, password|
  unless email.blank?
    visit new_user_session_path
    fill_in "Email", :with => email
    fill_in "Password", :with => password
    click_button "Log in"
  end
end

And /^I have no articles$/ do
  Article.delete_all
end

Then /^I should have ([0-9]+) articles?$/ do |count|
  Article.count.should == count.to_i
end

When(/^I go to the list of articles$/) do
  path_to "the homepage"
end

When(/^I am on the list of articles$/) do
  path_to "the homepage"
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  Article.where(:title => arg1)
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link arg1
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1, with: arg2)
end

When(/^I press "([^"]*)"$/) do |arg1|
  click_button arg1
end
