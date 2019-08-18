require 'selenium-webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.new
caps[:browserName] = 'Chrome'
caps['device'] = 'Chrome'
caps['version'] = '1.0.0'
caps['name'] = 'automation test'

browser = Selenium::WebDriver.for :chrome

wait = Selenium::WebDriver::Wait.new(timeout: 30, message: "Could not find the element")

browser.navigate.to "https://www.amazon.com/"
element = browser.find_element(:id, 'twotabsearchtextbox')
element.send_keys "Sharon Jones"
element.submit
puts "Test Passed: navigated to Sharon Jones"
target = wait.until {
  browser.find_element(:xpath, '//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[8]/div/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a/span')
}
puts "Test Passed: found 'I Learned The Hard Way'" 
target.click

price = browser.find_element(:xpath, '//*[@id="a-autoid-2-announce"]/span[2]/span')
puts "Test Passed: found Audio CD price"
puts "CD price: " + price.text

stars = wait.until {
  browser.find_element(:css, '#acrPopover')
}
puts "Test Passed: found number of stars"
puts stars.attribute("title")

begin 
  customers_who_also_bought = wait.until {
    browser.find_element(:xpath, '//*[@id="anonCarousel1"]/ol/li[1]') 
  }
  puts "Found first product that appears in 'Customers who also bought'"
  puts "Product info:\n" + customers_who_also_bought.text
rescue Selenium::WebDriver::Error::TimeoutError
  puts "Rescued timed out when searching for 'Customers who also bought'"
end


browser.quit