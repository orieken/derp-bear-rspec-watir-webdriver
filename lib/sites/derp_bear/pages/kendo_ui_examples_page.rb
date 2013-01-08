require 'rubygems'
require 'taza/page'

module DerpBear
  class HomePage < ::Taza::Page

    element(:title) { browser.title }

    element(:cap_color) {browser.div(id: 'cap_color').span(class: 'k-input')}
    element(:cap_size) {browser.div(id: 'cap_size').span(class: 'k-input')}

    element(:select_color) { |color| cap_color.li(text: color)}
    element(:select_size) { |size| cap_size.li(text: size)}

    def pick_color(my_color)
      cap_color.click
      select_color(my_color).when_present.click
    end

    def pick_size(my_size)
      cap_size.click
      select_size(my_size).when_present.click
    end
  end
end
