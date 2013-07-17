# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'professionali/version'

Gem::Specification.new do |spec|
  spec.name          = "professionali"
  spec.version       = Professionali::VERSION
  spec.authors       = ["Sergey Efremov"]
  spec.email         = ["efremov.sergey@gmail.com"]
  spec.description   = "Ruby wrapper for Professionali's API"
  spec.summary       = "Ruby wrapper for Professionali's API"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'multi_json'
  spec.add_dependency 'rest-client'
  spec.add_dependency 'hashie'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
