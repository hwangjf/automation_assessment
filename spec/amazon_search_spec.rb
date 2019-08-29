require 'spec_helper'
require './test.rb'
require 'selenium-webdriver'

describe 'class AmazonSearch' do
  
  describe "Search for Sharon Jones and find info" do
    
    it "Navigate to Amazon" do

      browser.navigate.to "https://www.amazon.com/"
      element = browser.find_element(:id, 'twotabsearchtextbox')
      element.send_keys "Sharon Jones"
      element.submit
      puts "Test Passed: navigated to Sharon Jones"
      target = wait.until {
        browser.find_element(:partial_link_text, 'I Learned The Hard Way')
      }
      puts "Test Passed: found 'I Learned The Hard Way'" 
      target.click
    end




  end

end