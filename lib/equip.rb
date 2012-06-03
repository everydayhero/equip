require "equip/version"

if defined?(::Rails) && ::Rails.version >= "3.1"
  require 'equip/engine'
end

require 'compass'
Compass::Frameworks.register("twitter_bootstrap", :path => "#{File.dirname(__FILE__)}/..")

module Equip
  STYLESHEETS = File.expand_path("../stylesheets_sass", __FILE__)
end
