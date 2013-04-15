#!/usr/bin/env rake

require "bundler/gem_tasks"
require "rake/sprocketstask"

# TODO: Understand sprockets a little better. I would have thought that
# by adding all the locations to the load path I wouldn't need to
# specify `t.assets` down in the rake task. There is probably a better
# way.

def sprockets_environment
  @sprockets_environment ||= Sprockets::Environment.new do |env|
    %w(lib vendor).each do |location|
      env.append_path "#{location}/assets/stylesheets"
      env.append_path "#{location}/assets/javascripts"
      env.append_path "#{location}/assets/images"
    end
  end
end

Rake::SprocketsTask.new do |t|
  t.environment = sprockets_environment
  t.output      = "./public/assets"
  t.assets      = %w(equip.css)
end
