require 'spec_helper'
require 'derp_bear'

describe "RSpec and Watir-WebDriver" do
  let(:browser) { Watir::Browser.new :chrome }

  before(:each) do
    browser.goto "http://derp-bear.herokuapp.com/"
  end

  after(:each) do
    browser.close
  end

  context "Derp Bear" do
    context "home page" do
      it "should have the correct title" do
        browser.title.should eql "Welcome to Derp-Bear"
      end

      context "Nav area" do
        it "should have a nav section" do
          browser.nav(id: "primary").should be_present
        end

        it "should have a Home link by going down the tree" do
          browser.nav.ul.li.link.text.should eql "HOME"
        end

        it "should have a Home link by id" do
          browser.link(id: "home_link").should be_present
        end

        it "should have a Home link by Text" do
          browser.link(text: "Home").should be_present
        end

      end
    end #home_page
  end #derp_bear
end #describe
