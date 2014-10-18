# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'new_base60/version'

Gem::Specification.new do |spec|
  spec.name          = "new_base60"
  spec.version       = NewBase60::VERSION
  spec.authors       = ["Andrew Donaldson"]
  spec.email         = ["andrew@desto.net"]
  spec.summary       = %q{Library to ease converting between NewBase60 and Fixnums, dates}
  spec.description   = %q{NewBase60 is useful as part of a personal URL shortener which itself is an important component of a POSSE (http://indiewebcamp.com/POSSE)}
  spec.homepage      = "https://github.com/adonaldson/new_base60"
  spec.license       = "Public Domain"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
