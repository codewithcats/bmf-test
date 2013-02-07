Given /^I navigate on the log in page$/ do
  driver.get url
end

When /^I enter correct username and password$/ do
  driver.find_element(:id, 'name').send_keys 'bmfsupport'
  driver.find_element(:id, 'pass').send_keys 'vlx6alxg'
end

When /^I submit log in form$/ do
  driver.find_element(:id, 'submit').click
end

Then /^I should be redirected to admin page$/ do
  wait = Selenium::WebDriver::Wait.new :timeout => 3
  wait.until { driver.find_element :css => '#logout' }
  driver.find_element(:css => '#login-out p').text.start_with?('Logged in as: bmfsupport').should == true
end

When /^I enter incorrect username and password$/ do
  driver.find_element(:id, 'name').send_keys 'this_is_wrong'
  driver.find_element(:id, 'pass').send_keys 'this_also_wrong'
end

Then /^I should see error message: "(.*)"$/ do |msg|
  sleep 2
  driver.find_element(:css => 'form[name=form] p.error').text.should == msg  
end

