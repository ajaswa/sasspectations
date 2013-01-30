# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sasspectations/version'

Gem::Specification.new do |gem|
  gem.name          = "sasspectations"
  gem.version       = Sasspectations::VERSION
  gem.authors       = ["Andrew Jaswa", "Jesse Trimble"]
  gem.email         = ["andrew.jaswa@factorylabs.com", "jesse.trimble@factorylabs.com"]
  gem.description   = %q{Spec runner for Sass}
  gem.summary       = %q{Spec runner for Sass}
  gem.homepage      = ""

  gem.add_dependency 'sass'
  gem.add_dependency 'colorize'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
