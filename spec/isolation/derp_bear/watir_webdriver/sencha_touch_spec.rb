require 'spec_helper'
require 'derp_bear'

describe "Derp Bear using RSpec and Watir-WebDriver" do
  let(:browser) { Watir::Browser.new :iphone }

  before(:each) do
    browser.goto "http://localhost:9393"
    browser.li(id: 'sencha_touch_example').link.click
  end

  after(:each) do
    browser.close
  end

  context "KendoUI example " do
    context "DropDownlist Example" do
      it "should let me customize the color of my cap" do
        binding.pry
      end
    end
  end
end
