require 'rubygems'
require 'taza/page'

module DerpBear
  class AboutPage < ::Taza::Page
    element(:title) { browser.title }

  end
end