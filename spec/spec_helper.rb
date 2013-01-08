require 'rubygems'
require 'rspec'
require 'mocha'
require 'watir-webdriver'
require 'pry'
require 'pry-nav'


TAZA_ROOT=File.join(File.dirname(__FILE__), '../')

lib_path = File.expand_path("#{File.dirname(__FILE__)}/../lib/sites")
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

Dir[File.join(TAZA_ROOT, "spec/support/**/*.rb")].each {|f| require f }

RSpec.configure do |config|
  config.mock_with :mocha
end

#set defaults
ENV['TAZA_ENV'] ||= 'test'
(ENV['BROWSER'] ||= 'firefox').downcase
