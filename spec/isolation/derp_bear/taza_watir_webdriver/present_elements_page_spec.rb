require 'spec_helper'
require 'derp_bear'

describe "Rspec, Watir-WebDriver, and Taza Page Objects" do
  let(:derp_bear) { DerpBear.new }

  after(:each) do
    derp_bear.close
  end

  context "Do the elements Exists?" do
    it "span exists?" do
      derp_bear.home_page.present_elements.click
      derp_bear.present_elements_page.random_span.exists?
    end

    it "span should exists?" do
      derp_bear.home_page.present_elements.click
      derp_bear.present_elements_page.random_span.should exist
    end

    it "span loaded by button should exists?" do
      derp_bear.home_page.present_elements.click
      derp_bear.present_elements_page.submit.click
      derp_bear.present_elements_page.surprise_span.wait_until_present
      derp_bear.present_elements_page.surprise_span.text.should eql "Hi, I just loaded"
    end

    it "span loaded by button should should have the right text" do
      derp_bear.home_page.present_elements.click
      derp_bear.present_elements_page.submit.click
      derp_bear.present_elements_page.surprise_span.when_present.text.should eql "Hi, I just loaded"
    end
  end

  context "Are the elements Visible?" do
    it "span visible?" do
      derp_bear.home_page.present_elements.click
      derp_bear.present_elements_page.random_span.visible?
    end

    it "span should be visible?" do
      derp_bear.home_page.present_elements.click
      derp_bear.present_elements_page.random_span.should be_visible
    end
  end

  context "Are the elements Present?" do
    it "span present?" do
      derp_bear.home_page.present_elements.click
      derp_bear.present_elements_page.random_span.present?
    end

    it "span should be present?" do
      derp_bear.home_page.present_elements.click
      derp_bear.present_elements_page.random_span.should be_present
    end
  end
end
