module KnowsTheWebDriver
  def driver
    @driver ||= Selenium::WebDriver.for :chrome
  end
end

World(KnowsTheWebDriver)
