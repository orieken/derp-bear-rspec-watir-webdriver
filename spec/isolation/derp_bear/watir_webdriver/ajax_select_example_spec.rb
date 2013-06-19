require 'spec_helper'
require 'derp_bear'

describe "RSpec and Watir-WebDriver" do
  let(:browser) { Watir::Browser.new :chrome }

  before(:each) do
    #browser.goto "http://localhost:9393/"
    browser.goto "http://derp-bear.herokuapp.com"
    browser.link(id: 'ajax_select_example').click
  end

  after(:each) do
    browser.close
  end

  context "Derp Bear" do
    context "Ajax Select elements" do
      it "has year select " do
        browser.select(id: "universal_year").should exist
      end

      it "has make select " do
        browser.select(id: "universal_make").should exist
      end

      it "make is disabled " do
        browser.select(id: "universal_make").should_not be_enabled
      end

      it "has submit button" do
        browser.button(id: "submit_ajax").should exist
      end

      it "submit is disabled " do
        browser.button(id: "submit_ajax").should_not be_enabled
      end
    end
  end
end

