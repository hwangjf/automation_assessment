require 'spec_helper'
require './test.rb'
require 'selenium-webdriver'

describe 'Amazon_search' do
  before {
    caps = Selenium::WebDriver::Remote::Capabilities.new
    caps[:browserName] = 'Chrome'
    caps['device'] = 'Chrome'
    caps['version'] = '1.0.0'
    caps['name'] = 'automation test'

    browser = Selenium::WebDriver.for :chrome

    wait = Selenium::WebDriver::Wait.new(timeout: 30, message: "Could not find the element")

  }
  describe "navigate to Amazon" do
    it "can open chrome browser" do

    end
    
    it "can navigate to Amazon" do

    end
  end

  describe "search for Sharon Jones" do
  end

  describe "find album 'I Learned The Hard Way'" do
  end

  describe "find Audio CD price" do
  end
  
  describe "find star rating" do
  end

  describe "first product that appears in 'Customers who bought this item also bought'" do
  end

  describe "failing test" do
  end
end