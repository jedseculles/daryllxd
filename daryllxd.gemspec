# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daryllxd/version'

Gem::Specification.new do |spec|
  spec.name          = "daryllxd"
  spec.version       = DaryllXD::VERSION
  spec.authors       = ["Jedford Seculles", "Mark Anthony Aventura"]
  spec.email         = ["jfjade18@gmail.com", "jeds@sourcepad.com", "marka@sourcepad.com"]
  spec.summary       = %q{A gem inspired from crazy way of talking by Daryll, our colleague.}
  spec.description   = %q{This gem will reverse any word by syllables.}
  spec.homepage      = "http://sourcepad.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
