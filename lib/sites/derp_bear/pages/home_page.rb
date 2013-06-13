require 'rubygems'
require 'taza/page'

module DerpBear
  class HomePage < ::Taza::Page

    element(:title) { browser.title }

    #examples section
    element(:examples) {browser.ul(id: 'examples')}
    element(:basic_form) { browser.li(id: 'basic_form_example').link}
    element(:present_elements) { browser.li(id: 'present_elements_example').link }
    element(:advanced_form) { browser.li(id: 'advanced_form_example').link }
    element(:accordion) { browser.li(id: 'accordion_example').link }
    element(:jquery_accordion) { browser.li(id: 'accordion_jquery_example').link }
    element(:ajax_select) { browser.li(id: 'ajax_select_example').link }
    #again we could even do something like this
    # @site.home_page.example_type("basic_form")
    # @site.home_page.example_type("advanced_form")
    element(:example_type) { |type| browser.li(id: "#{type}_example").link }


  end
end
