require 'rubygems'
require 'taza/page'

module DerpBear
  class HomePage < ::Taza::Page

    element(:title) { browser.title }

  end
end
