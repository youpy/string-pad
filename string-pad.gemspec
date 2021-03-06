# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["youpy"]
  gem.email         = ["youpy@buycheapviagraonlinenow.com"]
  gem.description   = "Creates a new string by concatenating enough leading zero-width pad characters to an original string to achieve a specified total length."
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/youpy/string-pad"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "string-pad"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.3"
  gem.license       = 'MIT'

  gem.add_development_dependency('rspec', ["~> 2.8.0"])
  gem.add_development_dependency('rake')
end
