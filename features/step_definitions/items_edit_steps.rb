When /^I modify the items form$/ do
  fill_in("Kind", :with => "Mopar")
  click_button("Update Item")
end

Then /^I successfully modify the item$/ do
  current_path.should == items_path
  page.should have_content("Item updated successfully")
  Item.last.kind.should == "Mopar"
end

Given /^I am at "(.*?)" edit$/ do |model|
  visit("/#{model}/1/edit")
end
