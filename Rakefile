#!/usr/bin/env rake
require "bundler/gem_tasks"

desc 'Convert less to scss'
task :convert do
  ruby('build/convert.rb')
end

desc 'Start up server'
task :server do
	require 'rack'
	Rack::Server.start :Port => 3000, :environment => ENV['RACK_ENV'], :pid => nil, :Host => '0.0.0.0', :AccessLog => [], :config => 'config.ru'
end