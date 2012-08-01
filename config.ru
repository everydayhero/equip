require 'bundler/setup'
Bundler.require

require 'sass/plugin/rack'

ROOT_DIR = File.dirname(__FILE__)

Compass.add_project_configuration Compass::Configuration::Data.new('equip', {
	:http_path => '/',
	:css_dir => './public/stylesheets',
	:sass_dir => './public/stylesheets',
	:images_dir => 'images',
	:javascripts_dir => 'javascripts',
	:relative_assets => false
})
Compass.configure_sass_plugin!

use Rack::ShowStatus
use Rack::ShowExceptions
use Sass::Plugin::Rack
use Rack::Static, :index => 'index.html', :root => 'public'
run Rack::File.new(File.join(ROOT_DIR, 'public'))
