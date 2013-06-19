require 'rubygems'
require 'taza/page'

module DerpBear
  class HomePage < ::Taza::Page

    element(:title) { browser.title }

    #examples section
    element(:examples) { browser.ul(id: 'examples') }
    element(:basic_form) { browser.link(id: 'basic_form_example') }
    element(:present_elements) { browser.link(id: 'present_elements_example') }
    element(:advanced_form) { browser.link(id: 'advanced_form_example') }
    element(:accordion) { browser.link(id: 'accordion_example') }
    element(:jquery_accordion) { browser.link(id: 'accordion_jquery_example') }
    element(:ajax_select) { browser.link(id: 'ajax_select_example') }
    #again we could even do something like this
    # @site.home_page.example_type("Basic Form")
    # @site.home_page.example_type("Advanced Form")
    element(:example_type) { |type| browser.link(id: "#{type.gsub(' ',"_").downcase}_example") }


  end
end
