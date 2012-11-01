require 'spec_helper'
require 'derp_bear'

describe "Validating Derp Bear home page using taza page objects" do
  let(:derp_bear){ DerpBear.new }

  after(:each) do
    derp_bear.close
  end

  context "title" do
    it { derp_bear.home_page.title.should eql "Welcome to Derp-Bear" }
  end
end