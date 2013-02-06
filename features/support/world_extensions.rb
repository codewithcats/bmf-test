module KnowsTheWebDriver
  def driver
    @driver ||= Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 1
    @driver
  end
end

World(KnowsTheWebDriver)
