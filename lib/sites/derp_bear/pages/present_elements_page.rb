require 'rubygems'
require 'taza/page'

module DerpBear
  class PresentElementsPage < ::Taza::Page

    element(:basic_form) { browser.form(id: "random_form") }
    element(:random_span) { browser.span(id: "this_span") }
    element(:random_div) { browser.div(id: "this_div") }
    element(:random_text) { browser.text_field(id: "first_text_field")}
    element(:read_only) { browser.text_field(id: "read_only_text_field")}

    element(:submit) { browser.button(id: "submit_button") }
    element(:surprise_span) { browser.div(id: "msg").span }

  end
end