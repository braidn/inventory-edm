Given /^I am at "(.*?)" root$/ do |model|
  visit("/#{model}")
end

Given /^there is an existing item$/ do
  @item = Fabricate(:item)
end

Given /^there is an existing user$/ do
  @user = Fabricate(:user)
end


When /^I fill out the item form correctly$/ do
  fill_in("Name", :with => @item.name)
  fill_in("Location", :with => @item.location)
  fill_in("Serial", :with => @item.serial)
  fill_in("Kind", :with => @item.kind)
  fill_in("Backup", :with => @item.backup)
  fill_in("Operating System", :with => @item.os)
  select(@user.first_name, :from => "User")
  click_on("Create Item")
end

Then /^I successfully create an item$/ do
  current_path.should == items_path
  page.should have_content("Item added")
end
