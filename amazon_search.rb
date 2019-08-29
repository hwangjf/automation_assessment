require 'selenium-webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.new
caps[:browserName] = 'Chrome'
caps['device'] = 'Chrome'
caps['version'] = '1.0.0'
caps['name'] = 'automation test'

class AmazonSearch
  
  attr_reader :browser, :wait

  def initalize
    @browser = Selenium::WebDriver.for :chrome
    @wait = Selenium::WebDriver::Wait.new(timeout: 30, message: "Could not find the element")


  end

end

# capybara is my DSL domain specifc language to write the testing in using Selenium as the Driver
