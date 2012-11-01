require 'spec_helper'
require 'derp_bear'

describe "Validating Derp Bear home page" do
  it "should have the correct title" do
    DerpBear.new do |derp_bear|
      derp_bear.home_page.title.should eql "Welcome to Derp-Bear"
    end
  end
end