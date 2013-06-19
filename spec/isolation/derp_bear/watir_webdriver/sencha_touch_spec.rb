require 'spec_helper'
require 'derp_bear'

describe "Derp Bear using RSpec and Watir-WebDriver" do
  let(:browser) { Watir::Browser.new :chrome }

  before(:each) do
    #browser.goto "http://localhost:9393/"
    browser.goto "http://derp-bear.herokuapp.com"
    browser.link(id: 'sencha_touch_example').click
  end

  after(:each) do
    browser.close
  end

  context "KendoUI example " do
    context "DropDownlist Example" do
      it "should let me select the third option" do
        browser.div(id: "select_option_example").wait_until_present
        browser.div(id: "select_option_example").click
        browser.div(text: "Third Option").when_present.click
        #add something to submit the page so i can assert third option was selected
      end
    end
  end
end
