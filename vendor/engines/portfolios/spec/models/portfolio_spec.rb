require 'spec_helper'

describe Portfolio do

  def reset_portfolio(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @portfolio.destroy! if @portfolio
    @portfolio = Portfolio.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_portfolio
  end

  context "validations" do
    
    it "rejects empty name" do
      Portfolio.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_portfolio
      Portfolio.new(@valid_attributes).should_not be_valid
    end
    
  end

end