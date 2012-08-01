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

desc 'Render equip'
task :render do
	command = `which phantomjs`.strip
	if $?.exitstatus == 1
		puts "Please ensure phantom.js is installed and in your path."
		exit -1
	end

	script = File.expand_path('../build/render.js', __FILE__)
	output = ENV['OUTPUT'] || File.join(Dir.pwd, 'equip.jpg')

	system "#{command} \"#{script}\" \"#{output}\""
end