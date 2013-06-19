require 'spec_helper'
require 'derp_bear'

describe "RSpec and Watir-WebDriver" do
  let(:browser) { Watir::Browser.new :chrome }

  before(:each) do
    #browser.goto "http://localhost:9393/"
    browser.goto "http://derp-bear.herokuapp.com"
    browser.link(id: 'present_elements_example').click
  end

  after(:each) do
    browser.close
  end

  context "Derp Bear" do
    context "Present Elements Page" do
      context "should exist?" do
        it "should have the span" do
          browser.span(id: "this_span").exists?.should be_true
        end
        it "should fail because this span doesnt exist" do
          browser.span(id: "that_span").exists?.should be_false
        end

        it "should check span loaded by the button" do
          browser.button(id: "submit_button").click
          browser.div(id: "msg").span.exists?
        end

        it "should have the span by class" do
          browser.span(class: "this_span_class").exists?.should be_true
        end

        it "should check span loaded by the button" do

          browser.button(id: "submit_button").click
          p browser.div(class: "msg_span_class").span.exists?
        end

        it "should have the div" do
          browser.div(id: "this_div").exists?
        end

        it "should have the text field" do
          browser.text_field(id: "first_text_field").exists?
        end

        it "should have the read only text field" do
          browser.text_field(id: "read_only_text_field").exists?
        end
      end

      context "should be visible?" do
        it "should have the span" do
          browser.span(id: "this_span").visible?
        end
        it "should have the div" do
          browser.div(id: "this_div").visible?
        end
        it "should have the text field" do
          browser.text_field(id: "first_text_field").visible?
        end
        it "should have the read only text field" do
          browser.text_field(id: "read_only_text_field").visible?
        end
      end

      context "should be present?" do
        it "should have the span" do
          browser.span(id: "this_span").present?
        end
        it "should have the div" do
          browser.div(id: "this_div").present?
        end
        it "should have the text field" do
          browser.text_field(id: "first_text_field").present?
        end
        it "should have the read only text field" do
          browser.text_field(id: "read_only_text_field").present?
        end
      end

    end
  end
end
