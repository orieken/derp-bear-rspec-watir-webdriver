require 'spec_helper'
require 'derp_bear'

describe "RSpec and Watir-WebDriver" do
  let(:browser) { Watir::Browser.new :chrome }

  before(:each) do
    #browser.goto "http://localhost:9393/"
    browser.goto "http://derp-bear.herokuapp.com"
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

        it "should have 2 links in the nav" do
          browser.nav.lis.count.should be 2
        end

        it "should have link text Home and About" do
          items_in_nav = browser.nav.lis
          nav_links_text = []

          items_in_nav.each do |item|
            nav_links_text << item.link.text
          end

          nav_links_text.should eql %w{HOME ABOUT}
        end

        it "should let me locate the nav link text using css" do
          nav_text = []
          nav_items = browser.elements(css: 'nav#primary ul li')
          nav_items.each do |item|
            nav_text << item.text
          end
          nav_text.should eql  %w{HOME ABOUT}

        end
      end #nav area

      context "Content Area" do
        it "should have a content section" do
          browser.section(id: "content").should exist
        end

        it "should have a header" do
          browser.section(id: "content").header.should exist
        end

        it "header should be present(exist and visible)" do
          browser.section(id: "content").header.should be_present
        end

        it "should able to see the header" do
          browser.section(id: "content").header.should be_visible
        end

        it "should have the correct header text" do
          browser.section(id: "content").header.text.should eql "HERE ARE A FEW EXAMPLE PAGES."
        end

        context "examples list" do
          it "should be present" do
            browser.section(id: "content").ul(id: "examples").should be_present
          end

          it "should let me locate examples list with css" do
            first_li = browser.elements(css: 'section#content ul#examples li').first
            first_li.text.should eql 'Basic Form Example'
          end

          it "should have 11 examples" do
            browser.section(id: "content").ul(id: "examples").lis.count.should be 11
          end

          it "should have a Basic Example" do
            browser.link(id: "basic_form_example").should be_present
          end

          it "should have a Basic Example inside the Examples list" do
            browser.ul(id: "examples").link(text: "Basic Form Example").should be_present
          end

          it "should have a Basic Example text" do
            browser.ul(id: "examples").link(id: "basic_form_example").text.should eql "Basic Form Example"
          end

          it "should have an Advanced Example" do
            browser.link(id: "advanced_form_example").should be_present
          end



        end #examples list
      end #content area
    end #home_page
  end #derp_bear
end #describe
