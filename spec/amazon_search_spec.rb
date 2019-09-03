require 'spec_helper'
require 'selenium-webdriver'

describe 'Amazon_search' do

  caps = Selenium::WebDriver::Remote::Capabilities.new
  caps[:browserName] = 'Chrome'
  caps['device'] = 'Chrome'
  caps['version'] = '1.0.0'
  caps['name'] = 'automation test'

  browser = Selenium::WebDriver.for :chrome
  wait = Selenium::WebDriver::Wait.new(timeout: 30, message: "Could not find the element")

  
  describe "Browser and Amazon working" do
    
    it "can open chrome browser and navigate to Amazon site" do
      browser.navigate.to "https://www.amazon.com/"
    end


    it "can search for Sharon Jones" do
      element = browser.find_element(:id, 'twotabsearchtextbox')
      element.send_keys "Sharon Jones"
      element.submit
    end

    it "can find album 'I Learned The Hard Way'" do

      target = wait.until {

        browser.find_element(:xpath, "//*[@id='search']/div[1]/div[2]/div/span[3]/div[1]/div[6]/div/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a/span")
      }
      
      target.click
    end
    
    it "can find Audio CD price" do
      price = browser.find_element(:xpath, '//*[@id="a-autoid-2-announce"]/span[2]/span')
      puts price.text
    end
    
    it "can find star rating" do
      stars = wait.until {
        browser.find_element(:css, '#acrPopover')
      }
      puts stars.attribute("title")
    end

    it "can find first product that appears in 'Customers who bought this item also bought'" do
      customers_who_also_bought = wait.until {
        browser.find_element(:css, '#anonCarousel1 > ol > li:nth-child(1)') 
      }

      puts "Found first product that appears in 'Customers who also bought'"
      puts customers_who_also_bought.text
    end

    it "has a failing test" do
      expect(true).to eq false
    end

  end

end