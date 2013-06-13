require 'spec_helper'
require 'derp_bear'

describe "Rspec, Watir-WebDriver, and Taza Page Objects" do
  let(:derp_bear) { DerpBear.new }

  before(:each) do
    derp_bear.home_page.ajax_select.click
  end

  after(:each) do
    derp_bear.close
  end

  context "Validating Derp Bear home page" do
    context "title" do
      it "should have the correct title" do
        derp_bear.ajax_select_example_page.title.should == "Welcome to Derp-Bear"
      end


    end
  end
end
