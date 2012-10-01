Given /^I am at root$/ do
  visit('/')
  @user = Fabricate(:user)
end

Given /^There is a list of "(.*?)"$/ do |list_item|
  page.should have_css('table')
  page.should have_content(list_item)
  current_path.should == root_path
end

When /^I click "(.*?)"$/ do |button|
  click_on(button)
end

When /^I fill out the "(.*?)" form correctly$/ do |form_name|
  fill_in("First Name", :with => @user.first_name)
  fill_in("Last Name", :with => @user.last_name)
  click_on("Submit")
end

Then /^I am presented with a new user$/ do
  User.count.should == 2
  current_path == users_path
  page.should have_content(@user.first_name)
end
