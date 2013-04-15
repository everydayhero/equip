# -*- encoding: utf-8 -*-
require File.expand_path('../lib/equip/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tim Cooper"]
  gem.email         = ["coop@latrobest.com"]
  gem.description   = %q{Everyday Hero Framework}
  gem.summary       = %q{Everyday Hero Framework}

  gem.homepage      = "https://github.com/everydayhero/equip"

  gem.files         = `git ls-files`.split("\n")
  gem.name          = "equip"
  gem.require_paths = ["lib"]
  gem.version       = Equip::VERSION

  gem.add_dependency "rails", "~> 3.2.10"
end
