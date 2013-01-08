require 'spec_helper'
require 'derp_bear'

describe "Derp Bear using RSpec and Watir-WebDriver" do
  let(:browser) { Watir::Browser.new :chrome }

  before(:each) do
    browser.goto "localhost:9393"
    browser.li(id: 'kendoui_example').link.click
  end

  after(:each) do
    browser.close
  end

  context "KendoUI example " do
    context "DropDownlist Example" do
      it "should let me customize the color of my cap" do
        browser.span(class: 'k-input').click
        browser.li(text: 'Grey').click
        browser.button(id: 'get').click
        pop_up_message = browser.alert.text
        browser.alert.exists?
        browser.alert.ok
        pop_up_message.should include("Grey")
        end

      it "should let me customize the size of my cap" do
        browser.div(id: 'cap_size').span(class: 'k-input').click
        browser.li(text: 'L - 7 1/8').when_present.click
        browser.button(id: 'get').click
        pop_up_message = browser.alert.text
        browser.alert.exists?
        browser.alert.ok
        pop_up_message.should include("L - 7 1/8")
      end

      it "should alert me with my custom cap color and size" do
        browser.div(id: 'cap_color').span(class: 'k-input').click
        browser.li(text: 'Orange').click
        browser.div(id: 'cap_size').span(class: 'k-input').click
        browser.li(text: 'L - 7 1/8').click
        browser.button(id: 'get').click
        pop_up_message = browser.alert.text
        browser.alert.exists?
        browser.alert.ok
        pop_up_message.should include("Thank you! Your Choice is:\n\nColor ID: Orange and Size: L - 7 1/8")
      end



    end

  end
end
