# -*- encoding: utf-8 -*-
require File.expand_path('../lib/radiant-stereotype-extension/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Cristi Duma', 'Istvan Hoka']
  gem.email         = ['cristi.duma@aissac.ro']
  gem.description   = %q{Allows you to write code that determines default page types, layouts, filters etc. for newly created pages}
  gem.summary       = %q{Extension that adds templating support to Radiant CMS}
  gem.homepage      = "http://blog.aissac.ro/radiant/stereotype-extension/"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "radiant-stereotype-extension"
  gem.require_paths = ["lib"]
  gem.version       = Radiant::Stereotype::Extension::VERSION
end
