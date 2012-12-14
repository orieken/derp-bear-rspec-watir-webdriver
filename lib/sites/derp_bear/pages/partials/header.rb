require 'rubygems'
require 'taza/page'

module DerpBear
  class Header < ::Taza::Page

    element(:nav) { browser.nav(id: 'primary') }
    element(:navigation_links) { nav.links }
    element(:home) { browser.link(id: 'home_link') }
    element(:about) { browser.link(id: 'about_link') }
#you could even do something like this
#usage like so
# @site.home_page.navigate_to("home")
# @site.home_page.navigate_to("about")
    element(:navigate_to) { |nav_item| browser.link(id: "#{nav_item}_link") }
  end
end

