require 'spec_helper'
require './test.rb'
require 'selenium-webdriver'

describe 'Amazon_search' do
  
  describe "#score" do
    it "returns 0 for an all gutter game" do
      
      20.times { game.roll(0) }
      expect(game.score).to eq(0)
    end
  end

end