# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oxford_join/version'

Gem::Specification.new do |spec|
  spec.name          = "oxford_join"
  spec.version       = OxfordJoin::VERSION
  spec.authors       = ["Rylee Fowler"]
  spec.email         = ["rylee@rylee.me"]

  spec.summary       = %q{Generate simple Oxford comma style joins. [1, 2, 3].oxford_join #=> "1, 2, and 3"}
  spec.homepage      = "https://github.com/skyhighwings/oxford_join"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
