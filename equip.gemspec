# -*- encoding: utf-8 -*-
require File.expand_path('../lib/equip/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Elliot Schoemaker"]
  gem.email         = ["evschoemaker@gmail.com"]
  gem.description   = %q{Compass/SCSS version of the twitter bootstrap forked to Everyday Hero Bootstrap - Equip}
  gem.summary       = %q{Compass Twitter Bootstrap}
  
  gem.homepage      = "https://github.com/everydayhero/equip"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "equip"
  gem.require_paths = ["lib"]
  gem.version       = Equip::VERSION

  gem.add_runtime_dependency "compass"
end
