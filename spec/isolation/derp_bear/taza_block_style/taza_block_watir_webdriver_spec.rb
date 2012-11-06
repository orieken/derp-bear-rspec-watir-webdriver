require 'spec_helper'
require 'derp_bear'

describe "Rspec, Watir-WebDriver, and Taza block syntax" do
  context "Validating the Home Page" do
    it "should have the correct title" do
      DerpBear.new do |derp_bear|
        derp_bear.home_page.title.should eql "Welcome to Derp-Bear"
      end
    end

  end
end