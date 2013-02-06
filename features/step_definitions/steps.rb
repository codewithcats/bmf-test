Given /^I navigate on the log in page$/ do
  driver.get 'http://192.168.1.152:8008'
end

When /^I enter correct username and password$/ do
  driver.find_element(:id, 'name').send_keys 'bmfsupport'
  driver.find_element(:id, 'pass').send_keys 'vlx6alxg'
end

When /^Submit log in form$/ do
  driver.find_element(:id, 'submit').click
end

Then /^I should be redirected to admin page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I enter incorrect username and password$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see error message$/ do
  pending # express the regexp above with the code you wish you had
end

