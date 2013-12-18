# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json2plist/version'

Gem::Specification.new do |spec|
  spec.name          = "json2plist"
  spec.version       = Json2plist::VERSION
  spec.authors       = ["Javier Toledo"]
  spec.email         = ["javier@theagilemonkeys.com"]
  spec.description   = %q{Generate a Plist from any JSON document}
  spec.summary       = %q{This gem allows to generate a plist from any json and comes with a handy command line tool to do that also with files.}
  spec.homepage      = "http://github.com/javiertoledo/json2plist"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "multi_json", "~> 1.8.2"
  spec.add_dependency "plist", "~> 3.1.0"
  spec.add_dependency "slop", "~> 3.4.7"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
