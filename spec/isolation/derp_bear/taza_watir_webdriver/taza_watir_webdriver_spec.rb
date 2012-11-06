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
  end
end