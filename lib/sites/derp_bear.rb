require 'rubygems'
require 'taza'

module DerpBear
  include ForwardInitialization

  class DerpBear < ::Taza::Site

    def close
      browser.close
    end

  end
end
