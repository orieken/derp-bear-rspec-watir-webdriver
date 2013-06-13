require 'rubygems'
require 'taza/page'

module DerpBear
  class AjaxSelectExamplePage < ::Taza::Page

    element(:title) { browser.title }

    element(:year) { browser.select(id: "universal_year") }
    element(:make) { browser.select(id: "universal_make") }
    element(:submit) { browser.button(id: "submit_ajax") }

   def select_options(options={})
     options.reverse_update({
         year: "1992",
         model: "Ford",
                            })
     year.select options[:year]
     make.select options[:make]
   end

  end
end
