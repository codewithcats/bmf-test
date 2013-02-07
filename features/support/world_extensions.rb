module KnowsTheWebDriver
  def driver
    @driver ||= Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 1
    @driver
  end
end

module KnowsTheUrl
  def url
    @url ||= 'http://192.168.1.149:8008'
  end
end

World(KnowsTheWebDriver)
World(KnowsTheUrl)

