# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lazyme/version'

Gem::Specification.new do |gem|
  gem.name          = "lazyme"
  gem.version       = Lazyme::VERSION
  gem.authors       = ["pawurb"]
  gem.email         = ["p.urbanek89@gmail.com"]
  gem.summary       = %q{ Lazyme a simple gem that helps you optimise your laziness }
  gem.description   = %q{ Display your most used shell commands count }
  gem.homepage      = "http://github.com/pawurb/lazyme"
  gem.add_dependency "terminal-table"
  gem.files         = `git ls-files`.split("\n")
  gem.executables   = ['lazyme']
  gem.require_paths = ["lib"]
  gem.license       = "MIT"
end
