require 'equip/version'
require 'equip/engine'
require 'compass'

Compass::Frameworks.register("equip", :path => "#{File.expand_path(File.join(File.dirname(__FILE__), ".."))}")

module Equip
  STYLESHEETS = File.expand_path("../stylesheets", __FILE__)
end
