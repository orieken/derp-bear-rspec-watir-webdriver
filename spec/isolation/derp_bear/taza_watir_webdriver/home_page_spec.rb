require 'spec_helper'
require 'derp_bear'

describe "Rspec, Watir-WebDriver, and Taza Page Objects" do
  let(:derp_bear) { DerpBear.new }

  after(:each) do
    derp_bear.close
  end

  context "Validating Derp Bear home page" do
    context "title" do
      it { derp_bear.home_page.title.should eql "Welcome to Derp-Bear" }
    end
    context "navigation" do
      #i need a better name for navigation.navigate_to
      it "About link should exist" do
        derp_bear.header.navigate_to("about").should exist
      end

      it "Home link should exist" do
        derp_bear.header.navigate_to("home").should exist
      end

      it "has the navigation links" do
        #i need to think about this a bit
        expected_links = %w(HOME ABOUT)
        actual_links = []
        derp_bear.header.navigation_links.each do |link|
          actual_links << link.text
        end
        expected_links.should =~ actual_links
      end

      it "takes me to the about page" do
        derp_bear.header.navigate_to("about").click
        derp_bear.about_page.title.should eql "About Derp-Bear"
      end

      it "has the correct values for the options " do
        derp_bear.home_page.basic_form.click
        option_values_on_page = derp_bear.browser.select(id: "pet_select").options.collect{ |i| i.attribute_value("value")}
        #option_values_on_page = derp_bear.browser.select(id: "pet_select").options.collect(&:value)
        option_values_on_page.should =~ %w(2 35453453 345345 23 3)
      end

    end
  end
end