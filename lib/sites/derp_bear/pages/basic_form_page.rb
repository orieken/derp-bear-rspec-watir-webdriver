require 'rubygems'
require 'taza/page'

module DerpBear
  class BasicFormPage < ::Taza::Page

    element(:basic_form) { browser.form(id: "basic_example_form") }

    #sections

    element(:your_information_section) { browser.li(id: 'your_information') }
    element(:first_name) { your__information_section.text_field(id: 'first_name') }
    element(:last_name) { your__information_section.text_field(id: 'first_name') }

    element(:date_section) { browser.li(id: 'date_information') }
    element(:sex_section) { browser.li(id: 'sex_information') }
    element(:transportation_section) { browser.li(id: 'transportation_example') }
    element(:password_section) { browser.li(id: 'password_example') }
    element(:tos_section) { browser.li(id: 'tos_example') }
    element(:hidden_field_section) { browser.li(id: 'hidden_field_example') }
    element(:submit_section) { browser.li(id: 'submit_example') }


  end
end