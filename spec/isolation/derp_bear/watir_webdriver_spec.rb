require 'spec_helper'
require 'derp_bear'

describe "Validating Derp Bear" do
  let(:browser){ Watir::Browser.new :chrome }

  before(:each) do
    browser.goto "http://derp-bear.herokuapp.com/"
  end

  after(:each) do
      browser.close
  end

  context "home page"
  it "should have the correct title" do
    browser.title.should eql "Welcome to Derp-Bear"
  end
end
